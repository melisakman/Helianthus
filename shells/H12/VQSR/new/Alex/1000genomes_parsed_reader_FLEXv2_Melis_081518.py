# As-is, this is set up to read the parsed 1000 Genomes example file as input
# Thus, it reads through the first two lines as headers, and takes the third line as SNP input
# If you have multiple populations in your sample and want to analyze them individually, then leave in a header line similar to the second header, which defines population IDs

'''
You will need to make the following modifications to the script, which will also be indicated as comments at the appropriate sections:
--function "get_freqs" on line 73 needs to be modified to take in your input strings (multilocus genotypes)
--function "update_SNPs" on line 104 needs to be modified to properly skip past the identifying info in each SNP data line
--line 144, defining the variable "individuals", may be deleted if your data only has one header line (actually, you can either keep 144 or 146 depending on what you prefer)
--lines 159 and 181 should be adjusted to the correct (and same) index; you need these variables to identify the physical position of the current SNP

Happy hunting!
'''

import sys
import numpy
from collections import defaultdict

def H1calc(x): # x is a list of frequencies
    sqlist = []
    for item in x:
        item = item ** 2
        sqlist.append(item)
    return(sum(sqlist)) # standard expected haplotype/MLG homozygosity

def H2calc(x):
    sqlist = []
    for item in x:
        item = item ** 2
        sqlist.append(item)
    return(sum(sqlist) - max(sqlist))

def H12calc(x):
    sqlist = []
    x = sorted(x)
    for item in x:
        item = item ** 2
        sqlist.append(item)
    if len(x) == 1: # if population is fixed for haplotype, then H1/H12/H123 all = 1
        return(1)
    else:
        return(sum(sqlist) + (2 * x[len(x) - 1] * x[len(x) - 2])) # H12 = H1 + 2*p_1*p_2 because (p_1 + p_2)^2 = p_1^2 + 2*p_1*p_2 + p_2^2

def H123calc(x):
    sqlist = []
    x = sorted(x)
    for item in x:
        item = item ** 2
        sqlist.append(item)
    if len(x) == 1:
        return(1)
    elif len(x) == 2:
        return(sum(sqlist) + (2 * x[len(x) - 1] * x[len(x) - 2]))
    else:
        return(sum(sqlist) + (2 * x[len(x) - 1] * x[len(x) - 2]) + (2 * x[len(x) - 3] * x[len(x) - 2]) + (2 * x[len(x) - 1] * x[len(x) - 3]))

def dictfreqs(instrings): # gets the frequency spectrum for computing our statistics
    countdict = defaultdict(int)

    for string in instrings:
        countdict[string] += 1

    datalen = float(len(instrings))

    datafreqs = []

    for item in countdict.values():
        freq = float(item) / datalen
        datafreqs.append(freq)

    return(datafreqs)

def get_freqs(matr): # you will need to modify the manner in which the data is processed to match your characters/symbols; this is currently set to take in phased haplotypes and convert them to multilocus genotypes before doing the analysis (because I originally tested this on phased human data)
    strings_seq = []
    current_string_seq = 0
    for ind in range(matr.shape[0]):
        for item in matr[ind]:
            if current_string_seq == 0:
                if item == "1": # change these if-statements to match the characters/symbols used in your data [all these options are currently enumerated, but this can probably be condensed to "what to do for heterozygous sites" and "what to do for homozygous sites and non-numeric characters (such as 'N' for missing data)"]
                    current_string_seq = item
                elif (item == "2") or (item == "3"):
                    current_string_seq = "5"
                elif item == "4":
                    current_string_seq = item
                else: #current missing data strategy is to conservatively assign a string with missing data as a new string
                    current_string_seq = item
            else:
                if item == "1":
                    current_string_seq = current_string_seq + item
                elif (item == "2") or (item == "3"):
                    current_string_seq = current_string_seq + "5"
                elif item == "4":
                    current_string_seq = current_string_seq + item
                else:
                    current_string_seq = current_string_seq + item

            if len(current_string_seq) == len(matr[ind]):
                strings_seq.append(current_string_seq)

        current_string_seq = 0 # reset for next individual

    return(dictfreqs(strings_seq))

def update_SNPs(whichpop, matchsites, splitpop, fdat, sizepop, VALall, INFOall, SNPall, SNPcurr): # you need to make some changes in here (this is where we remove invariant sites from analysis and slide the window)
    popsnps = []

    if whichpop != "every":
        for ind in matchsites:
            popsnps.append(splitpop[ind + fdat]) # be sure to properly define fdat (firstData) so that we start reading at the first individual's SNP
    else:
        popsnps = splitpop[fdat:(fdat + sizepop)]

    popsnps_set = set(popsnps)
    if ((len(popsnps_set) > 1) or (("2" or "3") in popsnps)): # change this to accommodate your data--either the set length is > 1, or there are heterozygous sites (in this case, 2 and 3; I don't know if you want to keep that last condition)
        VALall.append(popsnps) # makes it so that we only keep the site for analysis if it's polymorphic
        INFOall.append(SNPcurr) # lets us know it's an informative site in the population
    SNPall.append(SNPcurr) # lets us know that it's an informative site in the pool of ALL populations

def calc_stats(popdata, outname, wincent, SNPall, INFOall): # outputs computation for each window (you may want to define the default behavior for windows with no SNPs in line 123)
    t_current_values = numpy.transpose(numpy.array(popdata))

    fr_seq = get_freqs(t_current_values)
    whereto_seq = outname + ".txt"

    sendto_seq = open(whereto_seq, "a+")
    sys.stdout = sendto_seq

    if (fr_seq != []): # only does something if the window contains at least an informative site
        output_seq = [H12calc(fr_seq), H123calc(fr_seq), H2calc(fr_seq)/H1calc(fr_seq), wincent, len(SNPall), len(INFOall)] # last three elements: window center for this analysis, number of informative sites in the specified population, number of informative sites for the whole sample
        print(" ".join(str(entry) for entry in output_seq))
    else: # defines what we do if there are no SNPs in the window
        alt_output_seq = [1.0, 1.0, 0.0, wincent, 0, 0] # in the absence of informative sites, I've been assigning a value of 1 to H12/H123, but such windows are likely to be filtered out, so it probably doesn't matter
        print(" ".join(str(entry) for entry in alt_output_seq))

    sendto_seq.close()

chromfile = open(sys.argv[1], "r+") # provide the name/path of the properly-formatted file to read in
popselect = sys.argv[2] # if there are multiple populations in your population header, name one, or use "every" to incorporate all individuals into the calculation
outdest = sys.argv[3] # give your output file an informative name, but don't include the file extension (it will be .txt by default)
size_window = int(sys.argv[4]) # how big is the window (in nucleotides)?
shift_window = int(sys.argv[5]) # by what increment shall the window advance (in nucleotides)?
firstData = int(sys.argv[6]) # in the SNP data lines, what is the (python) index of the first individual's SNP? In the example file, the index is 5, meaning that the entries beforehand relate to site identification, do not define the allelic state of any individual

individuals = chromfile.readline() # delete this if you don't have a header consisting of individuals with individual ID specified

populations = (chromfile.readline()).split() # list of all individuals, but identified only by population [I suppose you could delete this and keep the one above if you have one population and individually-named individuals]

if popselect != "every":
    poparray = numpy.array(populations)
    match = numpy.flatnonzero(poparray == popselect) # identifies the header positions of individuals from the desired population
    match = match.tolist()
    popsize = populations.count(popselect)
else:
    popsize = len(populations)
    match = numpy.array(populations)[firstData:(firstData + popsize)]

firstloc_position = chromfile.tell() # character position of the first line containing SNP information (currently it's the third line)

first_SNP = int((chromfile.readline()).split()[2]) # identifies the physical position of the SNP; this indexing works for the example input file, but you may need to change it

chromfile.seek(firstloc_position)

window_center = first_SNP + (size_window / 2)

current_values = [] # list of lists (sublists are genotypes at that SNP) [co-indexed with current_infosites]

current_SNPs = [] # SNPs in a window (reset every time; list of positions, whether or not they're informative in the study population)

current_infosites = [] # informative sites in a window (reset every time; list of positions, but only polymorphic in study population)

next_winstart = 0
next_infowinstart = 0

while True:
    position = chromfile.readline()

    window_size = range((window_center - (size_window / 2)), (window_center + ((size_window / 2) + 1)))

    if (position != ''): # a new line has been read (we're not at the end of the file)
        posplit = position.split()
        current_SNP = int(posplit[2]) # you may need to change this (needs to match line 155)
        if (current_SNP in window_size):

            update_SNPs(popselect, match, posplit, firstData, popsize, current_values, current_infosites, current_SNPs, current_SNP)

        else:
            calc_stats(current_values, outdest, window_center, current_SNPs, current_infosites)

            update_SNPs(popselect, match, posplit, firstData, popsize, current_values, current_infosites, current_SNPs, current_SNP)

            for item in current_SNPs:
                if int(item) >= (min(window_size) + shift_window):
                    next_winstart = current_SNPs.index(item)
                    break

            for iitem in current_infosites:
                if int(iitem) >= (min(window_size) + shift_window):
                    next_infowinstart = current_infosites.index(iitem)
                    break

            window_center += shift_window
            window_size = range((window_center - (size_window / 2)), (window_center + ((size_window / 2) + 1)))

            current_SNPs = current_SNPs[next_winstart:]
            current_infosites = current_infosites[next_infowinstart:]
            current_values = current_values[next_infowinstart:]

            while (current_SNP not in window_size): # scans and reports until a new window contains the current SNP
                a_current_values = current_values[:len(current_values) - 1]

                calc_stats(a_current_values, outdest, window_center, current_SNPs, current_infosites)

                for item in current_SNPs:
                    if int(item) >= (min(window_size) + shift_window):
                        next_winstart = current_SNPs.index(item)
                        break

                for iitem in current_infosites:
                    if int(iitem) >= (min(window_size) + shift_window):
                        next_infowinstart = current_infosites.index(iitem)
                        break

                window_center += shift_window
                window_size = range((window_center - (size_window / 2)), (window_center + ((size_window / 2) + 1)))

                current_SNPs = current_SNPs[next_winstart:]
                current_infosites = current_infosites[next_infowinstart:]
                current_values = current_values[next_infowinstart:]
    else:
        calc_stats(current_values, outdest, window_center, current_SNPs, current_infosites) #replaced a block that I think is really the same

        sys.stdout = sys.__stdout__
        message = "Analysis of data file \'" + sys.argv[1] + "\' is complete!"
        print(message)
        break

chromfile.close()

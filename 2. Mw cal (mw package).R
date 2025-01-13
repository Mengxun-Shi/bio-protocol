library(Peptides)
library(seqinr)
getwd()

# Load the Synechococcus elongatus PCC 7942 proteome data
syn  = read.fasta("2.SynPCC7942.fasta", seqtype="AA")

# Calculate the Molecular weight of the proteome

mw_scores <- mw( syn,
    monoisotopic = FALSE,
    avgScale = "expasy",
    label = "none",
    aaShift = NULL
)

mw_score <- mean(mw_scores)
print(mw_score)

write.csv(mw_scores,"Mw-Syn (mw package).csv")



# Load the Azotobacter vinelandii DJ proteome data
azo  = read.fasta("1.Avin_DJ.fasta", seqtype="AA")
# Remove any non-standard amino acids from the sequences
azo <- gsub("[^ACDEFGHIKLMNPQRSTVWY]", "", azo)

# Calculate the Molecular weight for the proteome

mwAzo <- mw( azo,
                 monoisotopic = FALSE,
                 avgScale = "expasy",
                 label = "none",
                 aaShift = NULL
)

MwAzo <- mean(mw_Azo)
print(MwAzo)

write.csv(mwAzo,"Mw-Azo (mw package).csv")

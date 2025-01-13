library(Peptides)
library(seqinr)

# Load the Synechococcus elongatus PCC 7942 proteome data
syn  = read.fasta("2.SynPCC7942.fasta", seqtype="AA")

# Calculate the pI for the proteome

pI_scores <- pI(syn, pKscale = "EMBOSS")

pI_score <- mean(pI_scores)
print(pI_score)

write.csv(pI_scores,"pI-Syn (pI package).csv")



# Load the Azotobacter vinelandii proteome data
azo  = read.fasta("1.Avin_DJ.fasta", seqtype="AA")

# Calculate the pI for the proteome
pIAzos <- pI(azo, pKscale = "EMBOSS")

pIAzo <- mean(pIAzos)
print(pIAzo)

write.csv(pIAzos,"pI-Azo (pI package).csv")

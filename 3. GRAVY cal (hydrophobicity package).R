####GRAVY calculation
BiocManager::install("Peptides")
library(Peptides)
library(seqinr)

setwd("/Users/shimengxun/Desktop/The university of Sheffield/2. Thesis/2. Results for thesis/6. R script for physicochemical ")

# Load the Synechococcus elongatus PCC 7942 proteome data
syn = read.fasta("2.SynPCC7942.fasta", seqtype="AA")

# Calculate the GRAVY score for the proteome
hydropathy_scores <- hydrophobicity(syn, scale = "KyteDoolittle")

#Average GRAVY score
gravy_score <- mean(hydropathy_scores)
print(gravy_score)

write.csv(hydropathy_scores,"GRAVY-Syn (hydrophobicity package).csv")



# Load the Azotobacter vinelandii DJ proteome data
azo  = read.fasta("1.Avin_DJ.fasta", seqtype="AA")

# Calculate the GRAVY score for the proteome
hydropathyAzo <- hydrophobicity(azo, scale = "KyteDoolittle")

gravyAzo <- mean(hydropathyAzo)
print(gravyAzo)
write.csv(hydropathyAzo,"GRAVY-Azo (hydrophobicity package).csv")


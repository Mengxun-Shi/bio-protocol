
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("cleaver")

library("cleaver")
library("seqinr")
setwd("F:/R????/1. R Results/202003")
avin = read.fasta("Avin_00010.fasta", seqtype="AA")
syn  = read.fasta("Synpcc_0001.fasta", seqtype="AA")

avin = sapply(avin, FUN=function (s) paste(s, collapse=""))
syn  = sapply(syn,  FUN=function (s) paste(s, collapse=""))

avin_pept = unlist(cleave(avin, enzym="trypsin"))
names(avin_pept) = NULL
avin_len  = nchar(avin_pept)
avin_pept = avin_pept[8 <= avin_len & avin_len <= 25]
avin_pept = unique(avin_pept)

syn_pept  = unlist(cleave(syn, enzym="trypsin"))
names(syn_pept) = NULL
syn_len   = nchar(syn_pept)
syn_pept  = syn_pept[8 <= syn_len & syn_len <= 25]
syn_pept  = unique(syn_pept)

length(intersect(avin_pept, syn_pept))

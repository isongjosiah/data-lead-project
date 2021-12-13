pacman::p_load("GEOquery", "Biobase", "ggplot2")
# import the data
dataset_id <- "GSE20189"
gse <- getGEO(dataset_id)
gse <- gse[[1]]
pData(gse) ## print the sample information
fData(gse) ## print the gene annotation
exprs(gse) ## print the expression data
summary(exprs(gse)) ## get the distribution of the expression data
jpeg("boxplot.jpg")

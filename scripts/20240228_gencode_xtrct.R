library(data.table)
gencode <- fread("grep -v '^#' /xchip/beroukhimlab/wolu/CCG_MILD/GISTIC/gencode.v36.annotation.gtf")

gencode[, gene_id := gsub('gene_id "(.*?)";.*', '\\1', V9)]
gencode[, gene_name := gsub('.*?gene_name "(.*?)";.*', '\\1', V9)]
gencode[, gene_type := gsub('.*?gene_type "(.*?)";.*', '\\1', V9)]
gencode[, level := as.numeric(gsub(".*?level ([0-9]+).*", "\\1", V9))]
gencode[, gene_status := "KNOWN"]
gencode <- gencode[V3=='gene']

gencode_formatted <- gencode[,.(V1,V2,V4,V5,V7,gene_id,gene_name,gene_type,gene_status,level)]
colnames(gencode_formatted)[1:5] <- c('chr','source','start','end','strand')
saveRDS(gencode_formatted, '/xchip/beroukhimlab/wolu/CCG_MILD/GISTIC/gencode.v36.raw.rds')

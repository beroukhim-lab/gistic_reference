# gistic_reference

Code adapted from [gistic2 github repo](https://github.com/broadinstitute/gistic2/blob/26c590bd3330aafa27618ef3eb4b8d9b301f06b7/refgenes/Gencode.v22.170324/create_rg_file_170323.m#L4) and [snputil repo](https://github.com/broadinstitute/snputil)

Designed to update last GISTIC reference (Gencode v22) to Gencode v36 but code adaptable to create any GISTIC reference given appropriate inputs

# Steps and Output:
Input: GTF for reference file (can be downloaded from https://www.gencodegenes.org/human/releases.html)

Steps:
1. Parse GTF using scripts/20240228_gencode_xtrct.R (adapt paths as needed) --> save TSV
2. Import TSV into scripts/create_rg_file.mlx (adapt paths as needed)

Output: New reference Matlab object for GISTIC use

# Additional Files:
CNV Blacklist: 
- data/hg38_GDC_SNP6_CNV_list.161107.txt : original GISTIC CNV blacklist from SNP6 array analysis
- data/filtered_hg38_SNP6_GDC_CNV_blacklist.txt : new GISTIC CNV blacklist derived from removing overlaps between above file and Cancer Gene Census (as of 03/08/2024)

To-Do: create updated blacklist from WGS panel analysis 

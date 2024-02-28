# gistic_reference

Code adapted from [gistic2 github repo](https://github.com/broadinstitute/gistic2/blob/26c590bd3330aafa27618ef3eb4b8d9b301f06b7/refgenes/Gencode.v22.170324/create_rg_file_170323.m#L4) and [snputil repo](https://github.com/broadinstitute/snputil)

Designed to update last GISTIC reference (Gencode v22) to Gencode v36 but code adaptable for any purpose

# Steps:
1. Download GTF for reference file
2. Parse GTF using scripts/20240228_gencode_xtrct.R (adapt paths as needed) --> save TSV
3. Import TSV into scripts/create_rg_file.mlx (adapt paths as needed)

Output: New reference Matlab object for GISTIC use

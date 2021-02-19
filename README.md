This Document guids how to use annovar.

1: Download Docker software:fanyucai1/bio_tumor:2.0

2: And you can download annovar database to resource/humandb/

    humandb/
    ├── genometrax-sample-files-gff
    │   ├── list
    │   ├── sample_chip_featuretype_hg19.gff
    │   ├── sample_common_snp_featuretype_hg19.gff
    │   ├── sample_cosmic_featuretype_hg19.gff
    │   ├── sample_cpg_islands_featuretype_hg19.gff
    │   ├── sample_dbnsfp_featuretype_hg19.gff
    │   ├── sample_disease_featuretype_hg19.gff
    │   ├── sample_dnase_featuretype_hg19.gff
    │   ├── sample_drug_featuretype_hg19.gff
    │   ├── sample_evs_featuretype_hg19.gff
    │   ├── sample_gwas_featuretype_hg19.gff
    │   ├── sample_hgmd_common_snp_featuretype_hg19.gff
    │   ├── sample_hgmd_disease_genes_featuretype_hg19.gff
    │   ├── sample_hgmd_featuretype_hg19.gff
    │   ├── sample_hgmdimputed_featuretype_hg19.gff
    │   ├── sample_microsatellites_featuretype_hg19.gff
    │   ├── sample_miRNA_featuretype_hg19.gff
    │   ├── sample_omim_featuretype_hg19.gff
    │   ├── sample_pathway_featuretype_hg19.gff
    │   ├── sample_pgx_featuretype_hg19.gff
    │   ├── sample_ptms_featuretype_hg19.gff
    │   ├── sample_snps_dbsnp_featuretype_hg19.gff
    │   ├── sample_snps_ensembl_featuretype_hg19.gff
    │   ├── sample_transfac_sites_featuretype_hg19.gff
    │   └── sample_tss_featuretype_hg19.gff
    ├── GRCh37_MT_ensGeneMrna.fa
    ├── GRCh37_MT_ensGene.txt
    ├── hg19_AFR.sites.2015_08.txt
    ├── hg19_AFR.sites.2015_08.txt.idx
    ├── hg19_ALL.sites.2015_08.txt
    ├── hg19_ALL.sites.2015_08.txt.idx
    ├── hg19_AMR.sites.2015_08.txt
    ├── hg19_AMR.sites.2015_08.txt.idx
    ├── hg19_avsnp150.txt
    ├── hg19_avsnp150.txt.idx
    ├── hg19_clinvar_20190305.txt
    ├── hg19_clinvar_20190305.txt.idx
    ├── hg19_cosmic88_coding.txt
    ├── hg19_cosmic88_coding.txt.idx
    ├── hg19_cytoBand.txt
    ├── hg19_EAS.sites.2015_08.txt
    ├── hg19_EAS.sites.2015_08.txt.idx
    ├── hg19_esp6500siv2_all.txt
    ├── hg19_esp6500siv2_all.txt.idx
    ├── hg19_EUR.sites.2015_08.txt
    ├── hg19_EUR.sites.2015_08.txt.idx
    ├── hg19_exac03.txt
    ├── hg19_exac03.txt.idx
    ├── hg19_example_db_generic.txt
    ├── hg19_example_db_gff3.txt
    ├── hg19_gnomad211_exome.txt
    ├── hg19_gnomad211_exome.txt.idx
    ├── hg19_gnomad211_genome.txt
    ├── hg19_gnomad211_genome.txt.idx
    ├── hg19_intervar_20180118.txt
    ├── hg19_intervar_20180118.txt.idx
    ├── hg19_MT_ensGeneMrna.fa
    ├── hg19_MT_ensGene.txt
    ├── hg19_refGeneMrna.fa
    ├── hg19_refGene.txt
    ├── hg19_refGeneVersion.txt
    ├── hg19_refGeneWithVerMrna.fa
    ├── hg19_refGeneWithVer.txt
    ├── hg19_SAS.sites.2015_08.txt
    ├── hg19_SAS.sites.2015_08.txt.idx
    ├── hg19_snp138.txt
    └── hg19_snp138.txt.idx

3: Run annovar.sh
#!/usr/bin/env bash
tumor_docker="fanyucai1/bio_tumor:2.0"
#在使用getopts命令的时候，shell会自动产生两个变量OPTIND和OPTARG，OPTARG存储的是相应选项的参数,OPTIN初始值为1，处理一个不带参数的OPTIN+1，处理一个带参数的optind+2
unset vcf resource outdir
#unset命令用于删除已定义的shell变量（包括环境变量）和shell函数
usage()
{
  echo "Usage: $0
    -v tmp.vcf
    -r /tmp/to/resource
    -o /output/directory/"
  exit 2
}
#关于exit:0表示成功（Zero - Success）;非0表示失败（Non-Zero  - Failure）;2表示用法不当（Incorrect Usage）
while getopts ':v:r:o:' opt;#":v:r:o:"第一个冒号表示忽略错误，字符后面的冒号表示该选项必须有自己的参数
do
    case $opt in
        v)
            vcf=$OPTARG;;
        r)
            resource=$OPTARG;;
        o)
            outdir=$OPTARG;;
        ?)#当有不认识的选项的时候opt
            usage
    esac
done

#-z	检测字符串长度是否为0
[ -z "$vcf" ] && [ -z "$resource" ] && [ -z "$outdir" ] && usage

if [ ! -e $outdir ]; then mkdir -p $outdir;fi
#返回从左边算起的最后一个'/'（不含该字符）的右边的内容
file_name=${vcf##*/}
#返回从右边算起的第一个'/'（不含该字符）的左边的内容
dir_name=${vcf%/*}
if [ ! -e "$outdir/$file_name" ];then cp $vcf $outdir;fi

par=" -protocol refGene,cytoBand,snp138,avsnp150,exac03,esp6500siv2_all,1000g2015aug_all,1000g2015aug_eas,gnomad211_exome,gnomad211_genome,cosmic88_coding,clinvar_20190305,intervar_20180118,1000g2015aug_sas,1000g2015aug_afr,1000g2015aug_amr,1000g2015aug_eur
 -operation g,r,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f -nastring . -polish "

cmd="docker run -t -v $resource:/resource/ -v $outdir:/project/ $tumor_docker perl /resource/annovar/table_annovar.pl /project/$file_name
 /resource/annovar/humandb -buildver hg19 -out /project/annovar -remove $par -vcfinput"

echo $cmd
command $cmd

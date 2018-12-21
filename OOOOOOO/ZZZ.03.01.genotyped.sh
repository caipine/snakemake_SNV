  mkdir genotyped_all_9
  mkdir genotyped_all_9_tmp
  mkdir XXX/ZZZ.genotyped

foreach contig ( "`cat genome.fai.list`" )

       cat <<EOF > XXX/ZZZ.genotyped/XXX.${contig}.sh
if [ ! -f /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/genotyped/all..${contig}.vcf.gz ]; then
   echo "genotyped/all.${contig}.vcf.gz is not found, generate it!"
   bash
   gatk GenotypeGVCFs \
        -R /scratch/03988/qscai/GATK/dna-seq-gatk-variant-calling-master/vcf/ucsc.hg19.fasta \
        -V /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/called_all_9/all.${contig}.g.vcf.gz  \
        -O /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/genotyped_all_9_tmp/all.${contig}.vcf.gz 
        
   
   mv /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/genotyped_all_9_tmp/all.${contig}.vcf.gz \
      /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/genotyped_all_9/all.${contig}.vcf.gz

   mv /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/genotyped_all_9_tmp/all.${contig}.vcf.gz.tbi \
      /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/genotyped_all_9/all.${contig}.vcf.gz.tbi


fi

EOF

end




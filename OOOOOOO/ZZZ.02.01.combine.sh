
  mkdir called_tmp2
  mkdir XXX/ZZZ.Combine
foreach contig ( "`cat genome.fai.list`" )
      echo "gatk CombineGVCFs \"  > XXX/ZZZ.Combine/XXX.all.${contig}.sh
      echo "-R /scratch/03988/qscai/GATK/dna-seq-gatk-variant-calling-master/vcf/ucsc.hg19.fasta \" >>  XXX/ZZZ.Combine/XXX.all.${contig}.sh
  foreach sample ( "`cat sample.list`" )
      echo  "--variant  /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/called/${sample}.${contig}.g.vcf.gz \" >> XXX/ZZZ.Combine/XXX.all.${contig}.sh
  end
      echo  "-O /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/called_all_9/all.${contig}.g.vcf.gz"  >> XXX/ZZZ.Combine/XXX.all.${contig}.sh
#  sh XXX/ZZZ.Combine/XXX.all.${contig}.sh
end


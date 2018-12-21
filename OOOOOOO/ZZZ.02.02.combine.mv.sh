
foreach contig ( "`cat genome.fai.list`" )
# echo /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/called/${sample_unit}.${contig}.g.vcf.gz

if (  -f /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/called_tmp_2/all.${contig}.g.vcf.gz) then
      # echo /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/called/${sample_unit}.${contig}.g.vcf.gz
       mv /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/XXX/ZZZ.Combine/XXX.all.${contig}.sh /scratch/03988/qscai/DNAs/dna-seq-gatk-variant-calling/XXX/ZZZ.C.done
endif       
end


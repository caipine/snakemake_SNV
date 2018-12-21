include: "rules/common_A.smk"


############################



ALL_FASTQ =  expand("trimmed/{sample1}.fastq.gz", sample1 = ALL_SAMPLES)
print("****")
print(ALL_FASTQ)

TARGETS = []
TARGETS.extend(ALL_FASTQ)



localrules: all
rule all:
     input: TARGETS


def get_fastqAAA(wildcards):
    #sample = "-".join(wildcards.sample.split("-")[0:-1])
    #unit = wildcards.sample.split("-")[-1]
    #return units.loc[(sample, unit), ["fq1", "fq2"]].dropna()
    return units.loc[("-".join(wildcards.sample.split("-")[0:-1]), wildcards.sample.split("-")[-1]), ["fq1", "fq2"]].dropna()

#print("-".join(wildcards.sample1.split("-")[0:-1]))

rule trim_reads_se:
    input:
        get_fastqAAA
       # "test/{sample}.fastq.gz"
    output:
      "trimmed/{sample}.fastq.gz"
 
    shell: " ln -s {input} {output}"


######################3



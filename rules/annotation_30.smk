rule snpeff:
    input:
        "{sample}.vcf",
    output:
        vcf="snpeff/{sample}.vcf",    # the main output file, required
        stats="snpeff/{sample}.html", # summary statistics (in HTML), optional
        csvstats="snpeff/{sample}.csv" # summary statistics in CSV, optional
    log:
        "logs/snpeff/{sample}.log"
    params:
        reference="ebola_zaire", # reference name (from `snpeff databases`)
        extra="-Xmx4g"                 # optional parameters (e.g., max memory 4g)
    wrapper:
        "0.30.0/bio/snpeff"


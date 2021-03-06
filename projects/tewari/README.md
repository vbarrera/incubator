This folder contains the results of the re-analysis for tewari data.

# Communication

* BOSC2018: https://f1000research.com/slides/7-953

# Limitations

* miRge did the trimming by itself
* bcbio did the trimming by itself and shared the trimmed files to be used by isomiRSEA and sRNAbench
* bcbio has a internal cutoff of a minimum of 2 counts to be annotated
* isomiRSEA considers only iso_5p:+/-1
* sRNAbench labels some sequences as `mv` for isomiRs, these are lost for now in the conversion to GFF3 format.


# pilot samples

To start the comparison, we decided to reduce the number of samples to analyze to give us an idea of the difference between labs and tools.

The samples selected are: https://github.com/miRTop/incubator/blob/master/projects/tewari/meta_pilot.csv

These include 4 labs, and 2 protocols, 4 replicates per lab and protocol.


Questions to answer here are:

* Inside the same tool, how replicates from each lab and protocol reproduce by isomiR type
* Inside the same tool, how replicates from each lab but different protocols reproduce by isomiR type
* Inisde each lab and protocol, how tools reproduce each other by isomiR type

## For each tool, general stats of each lab/protocol

Look to individual stats figures at [stats](md/stats.md)


###  Number of miRNA reads

![summary_sum](https://github.com/miRTop/incubator/raw/master/projects/tewari/figures/stats/summary_sum.png)

### Number of unique sequences

![summary_counts](https://github.com/miRTop/incubator/raw/master/projects/tewari/figures/stats/summary_counts.png)


## For each tool, commonality for replicates inside each lab and protocol

### bcbio

![bcbio_commonality](https://github.com/miRTop/incubator/raw/master/projects/tewari/figures/replicates/bcbio.png)

### miRge

![mirge_commonality](https://github.com/miRTop/incubator/raw/master/projects/tewari/figures/replicates/mirge.png)

### isomiR-SEA

![isomirsea_commonality](https://github.com/miRTop/incubator/raw/master/projects/tewari/figures/replicates/isomirsea.png)

### sRNAbench

![srnabench_commonality](https://github.com/miRTop/incubator/raw/master/projects/tewari/figures/replicates/srnabench.png)


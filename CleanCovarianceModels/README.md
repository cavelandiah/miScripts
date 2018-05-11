# Fri May 11 12:04:31 CEST 2018 ##cristian ##localhost.localdomain

# Get specie - specific covariance models:Thu May 10 12:32:55 CEST 2018 ##

In order to retrieve the covariance models according to any specific 

specie or classification on NCBI Taxonomy ID, is necessary to retrieve

the specific list of codes given by the species of interest.

In this case, is required to identify the species number reference on the

taxonomy.txt file. In this case I have to get all the information, 

for the current RFAM database with:

```
./get_files.sh

```
and after that, get the query list based on a <key word> that is 

some specie name or clade

```
./get_list_accesion_number.sh <key word>

```

based on the key word. The result is the file 

```
query.list

```

With this output file the next step is get the accession number

list for clean the covariances models key-specific, based on the

selected <key word>, to do that just run:

```
./obtain_RFAM-specie-on-trees.sh

```

the output for this program is the list of covariance models that

contain at least one specie that are classified by NCBI taxonomy

by your <key word>.  

```
cm_to_clean.list

```

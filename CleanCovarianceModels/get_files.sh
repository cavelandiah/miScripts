#!/bin/bash

wget ftp://ftp.ebi.ac.uk/pub/databases/Rfam/CURRENT/database_files/taxonomy.txt.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/Rfam/CURRENT/Rfam.seed_tree.tar.gz
gunzip *.gz; tar -xvf Rfam.seed_tree.tar

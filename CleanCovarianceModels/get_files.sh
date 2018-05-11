#!/bin/bash

wget ftp://ftp.ebi.ac.uk/pub/databases/Rfam/CURRENT/database_files/taxonomy.txt
wget ftp://ftp.ebi.ac.uk/pub/databases/Rfam/CURRENT/Rfam.seed_tree.tar.gz
gunzip Rfam.seed_tree.tar.gz; tar -xvf Rfam.seed_tree.tar

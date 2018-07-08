
#!/bin/sh

# cache github credentials
git config --global credential.helper 'cache --timeout=3600'

# get repos to clone from file
Rscript --vanilla src/scrape_home.R "$1"

# create output folder
mkdir "docs/repos"

# change working directory where
# repos to be saved
cd "docs/repos"

# clone all repos
bash ../../src/test.sh

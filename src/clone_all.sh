git config --global credential.helper 'cache --timeout=3600'
cd "${0%/*}"
Rscript --vanilla scrape_home.R "$1"
mkdir "../../repos"
cd "../../repos"
bash test.sh

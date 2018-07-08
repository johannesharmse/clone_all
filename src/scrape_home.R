# read in user arguments
args <- commandArgs(trailingOnly = TRUE)

# find file where repo links are saved
home_readme <- "../../../UBC/Courses/jharmse_home/README.md"
# home_readme <- args[1]

# read in doc with repo links
text <- readChar(home_readme, nchars = file.info(home_readme)$size)
text <- strsplit(text, split = ' ')
text <- unlist(text)

# identify items with ubc-mds-2017 repo links
base_url <- "https://github.ubc.ca/ubc-mds-2017/"
repos <- text[grepl(base_url, text)]

# create clone commands
links <- substr(repos, regexpr("\\]\\(", repos)+2, regexpr(")", repos)-1)
links <- paste0("git clone ", links, ".git")

# create file where clone commands should be saved
if (file.exists('src/test.sh') == FALSE){
  file.create('src/test.sh')
}

# add config line to start
links <- c("#!/bin/sh", "", links)

# save clone commands to shell script
writeLines(links, con = 'src/test.sh')
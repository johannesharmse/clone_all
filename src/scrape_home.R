args <- commandArgs(trailingOnly = TRUE)

home_readme <- "../../../UBC/Courses/jharmse_home/README.md"
# home_readme <- args[1]

text <- readChar(home_readme, nchars = file.info(home_readme)$size)
text <- strsplit(text, split = ' ')
text <- unlist(text)

base_url <- "https://github.ubc.ca/ubc-mds-2017/"

repos <- text[grepl(base_url, text)]

links <- substr(repos, regexpr("\\]\\(", repos)+2, regexpr(")", repos)-1)

links <- paste0("git clone ", links, ".git")

if (file.exists('test.sh') == FALSE){
  file.create('test.sh')
}

writeLines(links, con = 'test.sh')
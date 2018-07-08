library(rvest)

# read in webpage to scrape
# args = commandArgs(trailingOnly=TRUE)
# scrape_page <- args[1]
scrape_page <- "https://github.ubc.ca/ubc-mds-2017/jharmse_home"
print(scrape_page)

# get links from page
link <- read_html(scrape_page) %>% 
  html_nodes("tr td a") %>% 
  html_attr("href")

print(link)
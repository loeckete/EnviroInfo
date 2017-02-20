# 16 Feb 2017 EVRN 420/720 
# Today we are going to explore a couple of different approaches to 
# extracting (a.k.a., scraping) data from on-line sources. For 
# example tables or text.
# First we will work through an example posted on R-blogger to 
# scrape citation data from google scholar.  This example uses the
# rvest package, which depends on "Piping". 
# Go to help -> Cheatsheats -> Data Manipulation
# 
# package dependency management -------------------------------------------------
# set up Ratpack for your project

# Google Scholar scraping -------------------------------------------------
# https://www.r-bloggers.com/google-scholar-scraping-with-rvest-package/
ifelse("rvest"%in% row.names(installed.packages()),library(rvest),install.packages("rvest"))
ifelse("ggplot2"%in% row.names(installed.packages()),library(ggplot2),install.packages("ggplot2"))

page <- read_html("https://scholar.google.com/citations?user=sTR9SIQAAAAJ&hl=en&oi=ao")
# Specify the css selector in html_nodes() and extract the text with html_text(). Finally, change the string to numeric using as.numeric().

citations <- page %>% html_nodes ("#gsc_a_b .gsc_a_c") %>% html_text()%>%as.numeric()
# See the number of citations:
year <- page %>% html_nodes ("#gsc_a_b .gsc_a_y") %>% html_text()%>%as.numeric()
citations 
# 148 96 79 64 57 57 57 55 52 50 48 37 34 33 30 28 26 25 23 22 
# Create a barplot of the number of citation:
  
barplot(citations, main="How many times has each paper been cited?", 
        ylab='Number of citations', col="skyblue", xlab="",las=2,
        names.arg = year)


# HTML tables with rvest --------------------------------------------------
# https://www.r-bloggers.com/using-rvest-to-scrape-an-html-table/
# //*[@id="mw-content-text"]/table[1]




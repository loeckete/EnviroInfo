# 21 Feb 2017 lecture notes
# Reproducible Research with R and RStudio
# Second Edition by C. Gandrud

# Gandrud ch5 -------------------------------------------------------------
# Data Gathering and Storage

# Dropbox -----------------------------------------------------------------
ifelse("repmis"%in%row.names(installed.packages()),library(repmis),install.packages("repmis"))
library(repmis)
flaturl <- "https://dl.dropboxusercontent.com/u/34048844/Environmental%20Informatics/data/airquality.csv"
flatdata <- repmis::source_data(flaturl,sep=",",header = T)
# quick demo of version history on dropbox
# Google Drive ------------------------------------------------------------
# https://cran.r-project.org/web/packages/googlesheets/README.html

# Github ------------------------------------------------------------------
#"Remember that as reproducible researchers, we are building projects out of interconnected text files."
# Git is the version control and Github is the place to store code.
# Git is directly integrated into RStudio Projects
# RStudio also has GUI-style Git functionality for RStudio Projects!!!!!
# https://help.github.com/articles/set-up-git/ # setup github account
# link to create a repo
# after setting up your repo link a project to your repo



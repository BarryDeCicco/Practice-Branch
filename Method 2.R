# Import Multiple Files, Method #2

# From:  https://datascienceplus.com/how-to-import-multiple-csv-files-simultaneously-in-r-and-create-a-data-frame/

# Plyr instructions are found at:  https://cran.r-project.org/web/packages/plyr/index.html

library(plyr)
library(readr)  # from the tidyverse

myfiles = list.files(path=mydir, pattern="*.csv", full.names=TRUE)
myfiles

setwd(oldwd)
getwd()

mydir = "Data"

dat_csv = ldply(myfiles, read_csv)
dat_csv


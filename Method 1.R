# Import Multiple Files, Method #1

# From:  https://riptutorial.com/r/example/24397/import-multiple-csv-files

oldwd <- setwd('Data')
files = list.files(pattern="*.csv")
data_list = lapply(files, read.csv)

df <- do.call(rbind, data_list)
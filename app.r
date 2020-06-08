getwd()

install.packages("readr")

library(readr)

credit <- read_csv("data/credit_dataset.csv")

View(credit)
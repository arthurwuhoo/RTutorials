library(readr)
oswego <- read_csv("OswegoTutorial.csv")
str(oswego) ##checking out the structure

# Clean the age variable. Make sure that it reads as a number and that you don’t lose any numbers 
# in the conversion process! After you’re done, make a commit.

oswego$age #looks like there's a weird "seven" entry.
oswego$age[oswego$age=="seven"] <- "7"
oswego$age <- as.numeric(oswego$age)


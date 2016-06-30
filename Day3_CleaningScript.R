# Day 3 Version Control: OSWEGO Exercise

library(readr)
oswego <- read_csv("OswegoTutorial.csv")
str(oswego) ##checking out the structure

# 1)
# Clean the age variable. Make sure that it reads as a number and that you don’t lose any numbers 
# in the conversion process! After you’re done, make a commit.

oswego$age #looks like there's a weird "seven" entry.
oswego$age[oswego$age=="seven"] <- "7"
oswego$age <- as.numeric(oswego$age)


# 2)
# Clean the sex variable and change it to factor (1 = Male and 2 = Female). Then, make a commit.
# Remove all of the rows that have an NA in the onsettime column. Then, make a commit.

str(oswego) #your variable types may be different because I used read_csv.
hist(oswego$sex) #expect to see 1 and 2 but also see a -1. Let's convert that to 1 -- we think
#this is a typo made from human error.

oswego$sex[oswego$sex==-1] <- 1
oswego$sex <- factor(oswego$sex, labels = c("Female","Male"))


# After you’ve finished making these three commits, push your changes to Github. Check your GitHub # repository to make sure that the changes have been applied.
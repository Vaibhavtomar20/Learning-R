# T-tests
# Dataset: Tips dependents on...
data(tips, package = "reshape2")
head(tips)
str(tips) # to find out no. of levels
write.csv(tips, "C:\\Users\\Vaibhav\\Documents\\R\\Basic statistics\\tips.csv", row.names = FALSE) # to save tips file in excel in computer

# Gender
unique(tips$sex) # levels
#Day of the week 
unique(tips$day) # levels

#One Sample t-test - ONE GROUP [Two Tail. Ho:Mean = 2.5]
t.test(tips$tip, alternative = "two.sided", mu=2.5)
# Result - p value is less than 0.05, so we reject the null hypothesis. Mean is not equal to 2.5.

#One Sample t-test - Upper Tail. Ho:Mean LE 2.5
t.test(tips$tip, alternative = "greater", mu=2.5)
# Result - p value is less than 0.05, so we reject the null hypothesis. Mean is not equal to 2.5.

# Two Sample T-test - TWO GROUP
t.test(tip ~ sex, data = tips, var.equal = TRUE) # Male and Female are independent. Assuming variance for both is equal.
# Result - P value is greater than 0.05, so we accept null hypothesis. Hence average tip given by male and female are same.

#Paired Two-Sample T-Test 
# Dataset: Heights of Father and Son (Package:UsingR)
install.packages("UsingR")
require(UsingR)
head(father.son)
write.csv(father.son, "C:\\Users\\Vaibhav\\Documents\\R\\Basic statistics\\father_son.csv", row.names = FALSE)

#ANOVA  - Comparing Multiple Groups
# Tip by the Day of the Week
str(tips)
tipAnova = aov(tip ~ day, tips)
summary(tipAnova)

# Practice Problem Set

cat_toilet <- read.csv("Cat_Toilet_Paper.csv")

# Are these factors? Check types...
class(cat_toilet$Cat.Ownership..Cat.or.No.Cat.)
class(cat_toilet$Toilet.Paper.Orientation)

# Great. They are both factors!

# Let's look at how many in each category
summary(cat_toilet$Cat.Ownership..Cat.or.No.Cat.)
summary(cat_toilet$Toilet.Paper.Orientation)

# This gives me the cross tab table!
table(cat_toilet)

# Calculating expected values
(12 * 10)/22
(10 * 10)/22
(12 * 12)/22

# calculating values for chi-square table
(5.45-3)
(5.45-3)^2

(7-4.55)
(7-4.55)^2

(9-6.55)
(9-6.55)^2

(5.45-3)
(5.45-3)^2

6/5.45
6/4.55
6/6.55
6/5.45

6/5.45 + 6/4.55 + 6/6.55 + 6/5.45

# This Chi-Square value of 4.44 is greater than critical value.

#chisq.test(table(cat_toilet$Toilet.Paper.Orientation, cat_toilet$Cat.Ownership..Cat.or.No.Cat.))

results <- chisq.test(x=cat_toilet$Cat.Ownership..Cat.or.No.Cat., y=cat_toilet$Toilet.Paper.Orientation)
#results <- chisq.test(table(cat_toilet))
results$observed
results$expected
results$p.value
results$statistic

# Module 4 Homework

halloween <- read.csv("Halloween.csv")
summary(halloween)
table(halloween)

# How big is the table?
nrow(halloween) # 20 rows...

# Calculate expected values
result2 <- chisq.test(table(halloween))
result2$expected
result2$statistic

# Calculate based on Chi-Square Formula
value <- ((8.4-10)^2)/8.4 + ((2-3.6)^2)/3.6 + ((4-5.6)^2)/5.6 + ((3-2.4)^2)/2.4
value

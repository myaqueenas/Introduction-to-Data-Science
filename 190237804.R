library(dplyr)
library(ggplot2)
library(readxl)

police1 <- read.csv("2019-11-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police2 <- read.csv("2019-10-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police3 <- read.csv("2019-09-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police4 <- read.csv("2019-08-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police5 <- read.csv("2019-07-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police6 <- read.csv("2019-06-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police7<- read.csv("2019-05-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police8 <- read.csv("2019-04-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police9 <- read.csv("2019-03-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police10 <- read.csv("2019-02-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police11 <- read.csv("2019-01-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)
police12 <- read.csv("2018-12-south-yorkshire-stop-and-search.csv", stringsAsFactors = F)

police_all <- bind_rows(police1, police2, police3, police4, police5, police6, police7, police8, police9, police10, police11, police12)

head(police_all)
tail(police_all)
View(police_all)
dim(police_all)
str(police_all)
summary(police_all)

police_all <- dplyr::rename(police_all,
                            officer = Officer.defined.ethnicity)

drugs <- police_all %>% filter(Legislation == "Misuse of Drugs Act 1971 (section 23)") 
View(drugs)

table(drugs$Gender)
table(drugs$Age.range)
table(drugs$officer)

qplot(drugs$Gender)
qplot(drugs$Age.range)
qplot(drugs$officer)

white_drugs <- drugs %>% filter(officer == "White")
coloured_drugs <- drugs %>% filter(officer %in% c("Asian", "Black", "Other"))

#Delete missing lines for accurate study.

drugs_no <- drugs %>% filter(!is.na(officer) & !is.na(Gender) & !is.na(Age.range))
View(drugs_no)

#Rows with missing values have not been erased.

drugs_no <- drugs %>%
  filter(officer %in% c("White", "Asian", "Black", "Other")) %>%
  filter(Gender %in% c("Male", "Female")) %>%
  filter(Age.range %in% c("10-17", "18-24", "25-34", "over 34", "under 10"))
View(drugs_no)

table(drugs_no$Gender)
table(drugs_no$Age.range)
table(drugs_no$officer)

qplot(drugs_no$Gender)
qplot(drugs_no$officer)
qplot(drugs_no$Age.range)

#List of crime rates by men's age group

age_male <- drugs_no %>%
  filter(Gender == "Male") %>%
  group_by(Age.range) %>%
  summarise(n = n()) %>%
  arrange(desc(n))

age_male

ggplot(data = age_male, aes(x = reorder(Age.range, n), y = n)) +
  geom_col() +
  coord_flip()

#List of crime rates by women's age group

age_female <- drugs_no %>%
  filter(Gender == "Female") %>%
  group_by(Age.range) %>%
  summarise(n = n()) %>%
  arrange(desc(n))

age_female

ggplot(data = age_female, aes(x = reorder(Age.range, n), y = n)) +
  geom_col() +
  coord_flip()

#List of crime rates by men's ethnicity

race_male <- drugs_no %>%
  filter(Gender == "Male") %>%
  group_by(officer) %>%
  summarise(n = n()) %>%
  arrange(desc(n))

race_male

ggplot(data = race_male, aes(x = reorder(officer, n), y = n)) +
  geom_col() +
  coord_flip()

#List of crime rates by women's ethnicity

race_female <- drugs_no %>%
  filter(Gender == "Female") %>%
  group_by(officer) %>%
  summarise(n = n()) %>%
  arrange(desc(n))

race_female

ggplot(data = race_female, aes(x = reorder(officer, n), y = n)) +
  geom_col() +
  coord_flip()

#Proportion of criminals who are coloured by gender

table(drugs_no$officer)
drugs_no$group_ethnicity <- ifelse(drugs_no$officer == "White", "white", "coloured")
table(drugs_no$group_ethnicity)
qplot(drugs_no$group_ethnicity)

gender_ethnicity <- drugs_no %>%
  group_by(Gender, group_ethnicity) %>%
  summarise(n = n()) %>%
  mutate(tot_group = sum(n)) %>%
  mutate(pct = round(n/tot_group*100, 1))
gender_ethnicity

coloured <- gender_ethnicity %>%
  filter(group_ethnicity == "coloured") %>%
  select(pct, Gender)
coloured

ggplot(data = coloured, aes(x = Gender, y = pct)) + geom_col()

#Proportion of criminals who are under 17 years old by gender

table(drugs_no$Age.range)
drugs_no$group_age <- ifelse(drugs_no$Age.range == "10-17", "Minors", "Adult")
table(drugs_no$group_age)
qplot(drugs_no$group_age)

gender_age <- drugs_no %>%
  group_by(Gender, group_age) %>%
  summarise(n = n()) %>%
  mutate(tot_group = sum(n)) %>%
  mutate(pct = round(n/tot_group*100, 1))
gender_age

minors <- gender_age %>%
  filter(group_age == "Minors") %>%
  select(pct, Gender)
minors

ggplot(data = minors, aes(x = Gender, y = pct)) + geom_col()

#Proportion of criminals who are under 17 years old and coloured by gender

gender_age_ethnicity <- drugs_no %>%
  group_by(Gender, group_age, group_ethnicity) %>%
  summarise(n = n()) %>%
  mutate(tot_group = sum(n)) %>%
  mutate(pct = round(n/tot_group*100, 1))
gender_age_ethnicity  

gae_male <- gender_age_ethnicity %>%
  filter(Gender == "Male") %>%
  select(group_age, group_ethnicity, pct)
gae_male

ggplot(data = gae_male, aes(x = group_age, y = pct, fill = group_ethnicity)) +
  geom_col(position = "dodge")

gae_female <- gender_age_ethnicity %>%
  filter(Gender == "Female") %>%
  select(group_age, group_ethnicity, pct)
gae_female

ggplot(data = gae_female, aes(x = group_age, y = pct, fill = group_ethnicity)) +
  geom_col(position = "dodge")

#Limitation :From the data it may be assumed that males are 'x' and females are 'y', however there are some uncertainties as the gender, ethnicity and age range of the 'missing values' are unknown

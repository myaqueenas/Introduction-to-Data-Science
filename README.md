# Introduction-to-Data-Science
## Analysis of drugs crime patterns in South Yorkshire around the past year (December 2018 to November 2019) and a racial stereotype of crime

### Structured abstract
Several media outlets have described criminals as coloured people, giving people racial stereotypes (Drakulich, 2013). However, as other studies have shown, there is no apparent link between race and crime (Travis & Daniel, 2000). Also, drug crimes are often associated with a number of other types of crime, making them worthwhile to study (Inciardi, 1979). This study visualizes analysis of drug crime patterns in South Yorkshire over the past year. For example, men recorded more crimes than women, and drug crimes committed by white people were overwhelmingly higher than those committed by coloured people. A surprising fact was found in underage drug crime data. The percentage of drug crimes committed by men and women is about the same, but not a single drug offence committed by female coloured people. The data could help resolve stereotypes about crimes committed by coloured people. However, there may be some uncertainty in the analysis due to missing values in each data. Also, because drug crimes are complicatedly linked to other crimes, they can be studied to reduce drug crimes as well as other crimes

### Part 1 Introduction and aims
A number of people view drug crime with racial stereotypes created by the media (Drakulich, 2013). Also, some people dismiss drug crimes as nothing but a roar of poor people and drug addicts (Barkan, 2009). However, the relationship between drug use and crime is much more complicated than is generally known (Marc et. al., 2000). According to Inciardi (1979), drug crimes are linked to other types of crimes such as fraud, alcohol-crime and prostitution. For example, there are three categories of crimes committed by drugs. First, when drug addicts take drugs, their judgment is bound to be blurred. At this time, they sometimes commit crimes. Second, drugs are usually prohibitive in price. They rob, steal, or prostitute themselves to buy drugs. Thirdly, there are crimes arising from the drug system. The sale, transport, production of drugs, as well as the associated violence, are crimes in this category. Several crimes are very drug-related (Marc et. al., 2000). Therefore, researching drug crime patterns could also be linked to the study of many other types of crime patterns and is the key to solving racial stereotypes.

The justification for this study is to present patterns derived from analysing drug crime data in South Yorkshire over the past year. It could also help stress the importance of analysing crime patterns to curb drug crimes and related crimes. Moreover, it could get rid of racial stereotypes about drug crimes.

The purpose of this study is to analyse drug crime data to discover drug crime patterns. This study uses R Studio version 1.25001 to integrate command formats and syntax, and packages dplyr, ggplot2, and readxl.

A)	Research question:
What patterns can be found by analysing drug crime data in South Yorkshire over the past year? Can patterns be found to reduce racial stereotypes?
B)	Objectives: Analyse the data through R to discover data patterns.
1)	To identify the basic patterns.
2)	To identify the list of crime rates by men’s age group and the list of crime rates by women’s age group.
3)	To identify the list of crime rates by men's ethnicity and the list of crime rates by women’s ethnicity.
4)	To identify the proportion of criminals who are coloured by gender and the proportion of criminals who are under 17 years old by gender.
5)	To identify the proportion of criminals who are under 17 years old and coloured by gender.
6)	To identify the ethnic proportion by age group

There are four advantages to this study. First, the patterns found in this study could help one to easily understand drug crimes committed in South Yorkshire over the past year. Second, as this study emphasizes the importance of data analysis, this study could have a positive effect on understanding data analysis. Third, it could be referred to in criminal research and could remove racial stereotypes. Finally, for those who are new to R, this study could make data analysis easy to understand. An overview of subsection studies is as follows.

### Part 2 Methodology
As it can be observed from above, the study of drug crime data would be very important, and it would enable us to understand drug crimes and reduce racial stereotypes through drug crime patterns. Therefore, the purpose of the study is to study drug crimes in South Yorkshire over the past year with R.
It would also answer the following questions.
•	What patterns could be found by analysing drug crime data in South Yorkshire over the past year?
•	Can patterns be found to reduce racial stereotypes?

Research Design
The most correct philosophy in this study is pragmatism. This philosophy values practical effects and focuses on the use of practical tools (Saunders, Lewis & Thornhill, 2009). On quantitative methods, researchers collect data on drug crimes in South Yorkshire over the past year from the British police dataset. The study could also find crime patterns by analysing crime data in R. The study uses a method of study that first establishes, analyses, and goes to the general principle, so it would be a method of longitudinal inductive.

Setting
The study is based on data provided by the UK police dataset. Data over the past year in South Yorkshire extracts only drug-related crimes to study the pattern. There is a lot of drug crimes happening around the world, but given its validity and accessibility, this study adopts a relevant and standard sampling approach. Relevant sampling means that sampling is selected in an accessible population and reference sampling measurements select samples that meet the criteria of the study (Duff, 2008).

Materials and Data Collection
Crime data can be downloaded from the British Police Dataset. There is a lot of information in this data, such as crime type, date, location, gender, age range, ethnicity and legislation. Among these, the study focuses on gender and age range and ethnicity data, and on relationships with these data and crime patterns. 
Uses of various functions, including graph creation, text data analysis, and the implementation of machine learning algorithms using various packages in R, is one of R's greatest advantages. (Pandey et al., 2017). If it is not already installed, install using install.package().
 

Console 1-1

The Console 1-1 shows the packages to be used. Often, a given data is modified and analysed rather than used as it is. Data can be analysed for purposes only when it is free to process data, such as extracting parts, dividing them by types, or merging multiple data. dplyr is one of the most commonly used packages for data pre-processing and ggplot2 is useful for making graphs. 

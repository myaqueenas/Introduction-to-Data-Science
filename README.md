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

#### Research Design
The most correct philosophy in this study is pragmatism. This philosophy values practical effects and focuses on the use of practical tools (Saunders, Lewis & Thornhill, 2009). On quantitative methods, researchers collect data on drug crimes in South Yorkshire over the past year from the British police dataset. The study could also find crime patterns by analysing crime data in R. The study uses a method of study that first establishes, analyses, and goes to the general principle, so it would be a method of longitudinal inductive.

#### Setting
The study is based on data provided by the UK police dataset. Data over the past year in South Yorkshire extracts only drug-related crimes to study the pattern. There is a lot of drug crimes happening around the world, but given its validity and accessibility, this study adopts a relevant and standard sampling approach. Relevant sampling means that sampling is selected in an accessible population and reference sampling measurements select samples that meet the criteria of the study (Duff, 2008).

#### Materials and Data Collection
Crime data can be downloaded from the British Police Dataset. There is a lot of information in this data, such as crime type, date, location, gender, age range, ethnicity and legislation. Among these, the study focuses on gender and age range and ethnicity data, and on relationships with these data and crime patterns. 
Uses of various functions, including graph creation, text data analysis, and the implementation of machine learning algorithms using various packages in R, is one of R's greatest advantages. (Pandey et al., 2017). If it is not already installed, install using install.package().
 
![Figure1](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/1.PNG?raw=true)

Console 1-1

The Console 1-1 shows the packages to be used. Often, a given data is modified and analysed rather than used as it is. Data can be analysed for purposes only when it is free to process data, such as extracting parts, dividing them by types, or merging multiple data. dplyr is one of the most commonly used packages for data pre-processing and ggplot2 is useful for making graphs. 

![Figure2](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/2.PNG?raw=true)

Console 1-2

police_all contains the collection of the twelve months data. By using bind_rows(), the data can be combined vertically.

![Figure3](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/3.PNG?raw=true)

Console 1-3

The first thing researcher do when data is given is to understand the overall structure of the data. Identify the characteristics of the data by looking at the overall structure of what variables are present and how many lines are composed. This process also might give hints about the analysis.

To check the contents of the data, researcher could type and run the data frame name, but the screen has too much content to read. Use the head() to output only a portion of the data to determine the shape of the data. head() is the function of printing the front part of the data up to the sixth row. tail() is a function that outputs six rows from the back of the data. View() is a feature that shows data directly. dim() is used to determine how many rows or columns the data frame is in. str() shows the properties of the variables in the data. The first row of output results shows what the properties of the data are and how many observations and variables are configured. The attributes of the variables in the data frame are shown from the second row. summary() is a function that calculates a 'summary statistic' that summarizes the value of a variable.

![Figure4](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/4.PNG?raw=true)

Console 1-4

Once the overall characteristics of the data have been identified, the variable names should be modified before analysis. Changing variable names to words that are easy-to-understand and easy-to-remember makes data easier-to-handle. If the variable name is in characters that are hard to remember, it is recommended to change it to an easy-word. The above data shows the ethnicity of crime identified by the police as Officer.defined.ethnicity. In this case, simply change the variable name to officer. The next console means that the researcher extract only drug crime data using the filter() of the dplyr package.

![Figure5](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/5.PNG?raw=true)

Console 1-5

![Figure6](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/6.PNG?raw=true)
![Figure7](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/7.PNG?raw=true)
![Figure8](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/8.PNG?raw=true)

Figure 1

Use table() to find out how many variables exist in the gender, age range, and ethnicity of drug offenders. Users could then make a graph of the frequency of each item. qplot() built into ggplot2 is a function of expressing the number of values by the length of the bar. The generated graph clearly shows the difference in frequency of each data. The newly created graphs and tables showed that there were missing values for each data.

![Figure9](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/9.PNG?raw=true)

Console 1-6

Missing values may cause problems where functions are not applied, or the analysis results would be distorted. Use the above code to remove all missing values. However, data anomalies do not cause missing values to disappear.

![Figure10](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/10.PNG?raw=true)

Console 1-7

Data shows 5,361 men, 618 women, 819 between the ages of 10 and 17, 2,096 between the ages of 18 and 24, and 1534 years of age of 25 to 34. There is only one person under the age of 10. Based on ethnicity data, it can be estimated that there are 559 Asians, 522 blacks, 95 others and 4804 whites, but there is some uncertainty as the gender, ethnicity and age range of missing value are unknown.

![Figure11](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/14.PNG?raw=true)

Console 1-8

![Figure12](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/11.PNG?raw=true)
![Figure13](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/12.PNG?raw=true)
![Figure14](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/13.PNG?raw=true)

Figure 2

The graphs also show that the missing values have been removed.

#### List of drug crimes by gender’s age range
![Figure15](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/15.PNG?raw=true)

Console 2-1

![Figure16](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/17.PNG?raw=true)

Console 2-2

Male and female age ranges are arranged in descending order to find out which age range commit the most drug crimes. If researchers make the graph the default value because the name of age ranges is too long, the x-axis overlaps, making it hard to see. In addition, the bar is rotated 90 degrees to the right by adding coor_flip() to alert the graph viewers to its seriousness by placing each of the male and female age range that commits the most drug crimes at the top.

#### List of drug crimes by male and female’s ethnicity
![Figure17](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/19.PNG?raw=true)

Console 2-3

![Figure18](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/20.PNG?raw=true)

Console 2-4

Male and female ethnicities are arranged in descending order to find out which ethnicity commit the most drug crimes. 

#### Proportion of criminals who are coloured by gender
![Figure19](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/23.PNG?raw=true)

Console 2-5

![Figure20](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/24.PNG?raw=true)

Figure 3

Over the past year, 1,176 cases of drug crimes by coloured people have been committed in South Yorkshire, while 4,803 cases of white drug crimes have been committed.

![Figure21](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/25.PNG?raw=true)

Console 2-6

Find out how much of all coloured drug crimes are committed by gender. First, people are divided into coloured and white to obtain frequency and then divided by the total frequency of each gender to obtain the ratio. The ratio shall be expressed to the first decimal place using the round().

![Figure22](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/26.PNG?raw=true)

Console 2-7

From the table previously made, only the values corresponding to the coloured ethnicity is extracted to create a gender table. It was 21.6 percent for male coloured people and 7.6 percent for women coloured people.

#### Proportion of criminals who are under 17 years old by gender
![Figure23](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/27.PNG?raw=true)

Console 2-8

![Figure24](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/28.PNG?raw=true)

Figure 4

Over the past year, 819 cases of drug crimes by people who are under 17 years old have been committed in South Yorkshire, while 5,160 cases of drug crimes by adults have been committed.

![Figure25](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/29.PNG?raw=true)

Console 2-9

Find out how many of underage drug crimes are committed by gender. First, people are divided into minors and adults to obtain frequency and then divided by the total frequency of each gender to obtain the ratio.

![Figure26](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/30.PNG?raw=true)

Console 2-10

Create a gender table by extracting only the values corresponding to the crimes committed by minors from the tables previously made. It was 13.6 percent for male and 14.4 percent for female underage crimes.

#### Proportion of criminals who are under 17 years old and coloured by gender
![Figure27](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/31.PNG?raw=true)

Console 2-11

This result found the proportion of criminals who are under 17 years old and coloured by gender. Find out how many of underage and coloured drug crimes are committed by gender. First, people are divided into age groups and coloured to obtain frequency and then divided by the total frequency of each gender to obtain the ratio.

![Figure28](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/32.PNG?raw=true)

Console 2-12

![Figure29](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/33.PNG?raw=true)

Console 2-13

According to the printed table, the percentage of coloured people committing drug crimes is 22 percent for male adults and 14.8 percent for male underage. The rate of coloured drug crimes among male adults is 7.2 percent higher than that of underage. In the case of women, there was a shocking result. There has been no single drug crime committed by underage female coloured women in South Yorkshire in the past year. Adults also recorded only 8.9 percent.

#### Ethnic proportion by age group
![Figure30](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/38.PNG?raw=true)

Console 2-14

The consoles above are to identify the drug crime rates of each ethnicity by age ranges.

![Figure31](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/39.PNG?raw=true)

Console 2-15

A console that sorts graphs in high order with a high percentage of white people. In 18-24 the percentage of whites was the lowest, while only one drug criminal under the age of 10 is white.

![Figure32](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/40.PNG?raw=true)

Console 2-16

The console above generates a graph.

### Part 3 Results and discussion 
#### List of drug crimes by gender’s age range
![Figure33](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/16.PNG?raw=true)

![Figure34](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/18.PNG?raw=true)

Figure 5

Male and female age ranges are arranged in descending order to find out which age range commit the most drug crimes. The graph on the left is the age range of a male drug crime, and the graph on the right is the age range of a female drug crime. For men, drug crimes account for the largest percentage of people between 18 and 24, and for women, 34 and older are the most common. Both groups of women and men had the lowest cases of underage.

#### List of drug crimes by male and female’s ethnicity
![Figure35](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/21.PNG?raw=true)

![Figure36](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/22.PNG?raw=true)

Figure 6

In respect to the Figure 6, male and female ethnicities are arranged in descending order to find out which ethnicity commit the most drug crimes. One particularly interesting point is that it was white people who had an overwhelming number of crimes in both male and female data over the past year.

#### Proportion of criminals who are coloured by gender
![Figure37](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/34.PNG?raw=true)

Figure 7

Figure 7 reveals that drug crimes committed by male coloured people accounted for 21.6 percent of the total, while those committed by female coloured people accounted for 7.6 percent. One can see that the percentage of male coloured drug crimes is approximately three times higher than in cases of female.

![Figure38](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/35.PNG?raw=true)

Figure 8

Figure 7 means 13.6 percent for male underage drug crimes and 14.4 percent for female underage drug offenses. It is worth mentioning that there is not much difference between the proportion of men and the proportion of women, but rather the proportion of women is slightly higher.

#### Proportion of criminals who are under 17 years old and coloured by gender
![Figure39](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/36.PNG?raw=true)

![Figure40](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/37.PNG?raw=true)

Figure 9

#### Ethnic proportion by age group
![Figure41](https://github.com/myaqueenas/Introduction-to-Data-Science/blob/main/Console/41.PNG?raw=true)

Figure 10

The bar graph shows the percentage of drug offenders under 17 years old and coloured by gender in South Yorkshire over the past year. As, it can be observed from the graphs, the crime rates among the adults who are coloured are slightly higher than those are minors. The graph (Figure 10) reveals the bars arranged in high order with white people. To summarize the above results, more men have committed drug crimes than women, and more white people have committed drug crimes than the coloured people in South Yorkshire over the past year. However, the surprising thing was found in the underage drug crime record. The percentage of drug crimes committed by men and women is almost the same, but not a single drug crime committed by female coloured people. Also, the percentage of whites in all age ranges was overwhelmingly high.

Some criminologists only focus on the link between crime and poverty and races. They think they are committing crimes because they lack money and income (Drakulich, 2013). However, it was argued that there are possible causes of crime other than poverty and race (Barkan, 2009) and as Inciardi suggested in 1979, they are not committing drug crimes because they are poor and coloured, but to buy drugs or to accumulate wealth by producing and selling drugs (Inciardi, 1979). Various media outlets may create such prejudices and stereotypes and in fact, it was discovered that the actors who perform as criminals are more likely to be a Black or Hispanic person than a white person and that the lawyer role was usually given to a white actor. However, this was not true in real life as the percentage of crimes committed by Hispanic and Black people was very low which was not even close to how they were described in media outlets (Travis & Daniel, 2000). For criminals, racial stereotypes are always a constant and unfortunate problem. It is also becoming more common throughout society. While it is true that coloured people make up part of the crime, the public expects crimes of coloured people to be more serious (Welch, 2007). The analysed data supported the study of Welch in 2007 and suggested that there are no relationships between the ethnicity and crime, and it is believed that this research could lead to a further research which aims to solve such stereotypes and prejudices discussed above. Furthermore, since the drug crimes may cause other crimes, it is believed that this research can be used to reduce the drug crimes which would then lead to reduce other possible crimes.

#### Potential Significance
The findings of the study could help reduce racial stereotypes regarding drug crimes. Furthermore, it could help design future strategies to prevent and reduce drug crimes in South Yorkshire.

### Part 4 Conclusion
In conclude, the study analysed drug crime patterns in South Yorkshire over the past year from 12 to November 19. For example, men recorded more crimes than women, and drug crimes committed by whites were overwhelmingly higher than those committed by coloured people. The proportion of drug crimes committed by underage men and women is about the same, but it is a surprising finding in the study that no drug crimes were committed by coloured female. The study found that crime and race are not related, as was the result of study of Travis and Daniel (2000). In other words, it could help reduce the stereotype that people of colour are committing more drug crimes. Also, the study may support their research or be a further study (Travis & Daniel, 2000) and drug crimes are often complicatedly linked to other crimes, so they can be studied to reduce drug crimes as well as other crimes.

#### Limitation
The sample size of a drug crime in South Yorkshire for a year might be small. A number of samples are needed for studies that lack relevant theories and knowledge to be established academically (Malterud, 2016). A more accurate pattern may come out when compared with drug crime data from other parts of the UK or other countries. Data on the type of drugs and the number of crimes committed by a criminal, though not in the data, could also be of great help to this study. Also, it may be good to investigate the drug crime rate along with population information in South Yorkshire. Finally, there is uncertainty in this study by missing values of gender, age range and ethnicity.

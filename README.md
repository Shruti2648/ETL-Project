# New York Tuition Assistance Program ETL Project

## Introduction

The New York Tuition Assistance Program (TAP) is a financial aid program for students who are New York residents and are attending colleges in New York. The program awards education grants between $500 and $5,000 to students based on family income, tax status, number of college credits, GPA, and other factors. In this project, we will be performing ETL on data that contains information on TAP awards from the 2018 academic year. Our goal is to produce an organized database for this data in which records can be queried efficiently. 

## Data Extraction

We used two datasets provided by NYC Open Data (an online repository of data published by New York government agencies). The first dataset contains information on TAP recipients by college, sector group, and level of study. The second dataset contains information on TAP recipients by income, age group, and program information. Both datasets have several fields in common, including:

* TAP Level of Study: the level of the educational program the student is enrolled in (4 year undergrad, 2 year undergrad, etc...)
* Sector Type: the sector of the college the student is enrolled in (private or public)
* TAP Sector Group: one of nine categories that New York state schools are assigned to (see dataset for more information)
* TAP Recipient Headcount: number of students who recieved at least one TAP award for a particular college
* TAP Recipient FTEs: a measure that indicates the number of credits the student is enrolled in
* TAP Recipient Dollars: total sum of TAP awards provided to all students for a particular college

The original datasets are saved in the project folder as TAP_Recipients_College_Sector_Group_and_Level_of_Study.csv and TAP_Recipients_Income_Age_Group_and_Program_information.csv.

## Data Transformation

This step consisted of cleaning both datasets so that they could be loaded into the database later on. Pandas was used to convert the csv files into two dataframes: tap_college_df and tap_income_df. For both dataframes, we calculated the proportion of null values present in each column. Fortunately, both dataframes only had a small number of null values, so we decided not to drop any columns. We dropped the few rows that contained null values. Next, we renamed the column headers so that they were all lowercase and used underscores instead of spaces to separate words. This was necessary because our database tables cannot have spaces in the column headers.

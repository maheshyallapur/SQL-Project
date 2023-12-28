--- Title :-        Restaurant Ratings Analysis
--- Created by :-   Mahesh Malatesh Yallapur
--- Date :-         25/12/2023
--- Tool used:-     SQL

/*
𝗜𝗻𝘁𝗿𝗼𝗱𝘂𝗰𝘁𝗶𝗼𝗻:
► In this project, we will be analyzing restaurant ratings data to gain insights into the performance of various restaurants.
► We will use SQL to extract, transform and analyze the data.
► The insights gained from this analysis will be used to understand the factors that influence a restaurant's rating and make recommendations for improvement.
► We will examine the relationship between different variables such as the location, cuisine and price range of the restaurants and their ratings.
► We will also do sentiment analysis to analyse most favorable restaurants of customers

𝗙𝗶𝗹𝗲𝗻𝗮𝗺𝗲: 𝗖𝗿𝗲𝗮𝘁𝗶𝗻𝗴 𝘁𝗮𝗯𝗹𝗲𝘀

This SQL queries creates the important tables & imports the CSV files.
*/

CREATE DATABASE RESTORENT_PER_ANALYSIS;
USE RESTORENT_PER_ANALYSIS;

--- 1) Creating customer_ratings Table 

CREATE TABLE Customer_Ratings (
Consumer_ID  	VARCHAR(50),
Restaurant_ID	VARCHAR(50),
Overall_Rating	INT,
Food_Rating		INT,
Service_Rating	INT
)

LOAD DATA INFILE
"C:\Users\user\Documents\Data analysis\Restorent rating analysis\ratings.csv"
into table Customer_Ratings
fields terminated by ","
fields enclosed by '"'
rows terminated by '\n'
ignore rows 1;

select * from Customer_Ratings;


COPY Customer_Ratings FROM 'C:\Users\user\Documents\Data analysis\Restorent rating analysis\ratings.csv' Header CSV

Select * FROM customer_ratings


--- 2) Creating customer_details table

CREATE TABLE Customer_Details(
Consumer_ID 			Varchar(50),
City					Varchar(50),
State					Varchar(50),
Country					Varchar(50),
Latitude				Decimal,
Longitude				Decimal,
Smoker					Varchar(50),
Drink_Level				Varchar(50),
Transportation_Method	Varchar(50),
Marital_Status			Varchar(50),
Children				Varchar(50),
Age						INT,
Occupation				Varchar(50),
Budget					Varchar(50)
)

LOAD DATA LOCAL INFILE:
'C:\Users\user\Documents\Data analysis\Restorent rating analysis\Customer_Details.csv'
into table Customer_Details
fields terminated by ","
enclosed by '"'
lines terminated by '\n'
ignore rows 1;

--- 3) Creating Customer Preference table

CREATE TABLE Customer_Preference(
Consumer_ID			Varchar(50),
Preferred_Cuisine	Varchar(50)
)

LOAD DATA LOCAL INFILE:
'C:\Users\user\Documents\Data analysis\Restorent rating analysis\Customer_Preference.csv'
into table Customer_Preference
fields terminated by ","
enclosed by '"'
lines terminated by '\n'
ignore rows 1;
--- 4) Creating restaurants table

CREATE TABLE Restaurants (
Restaurant_ID  		Varchar(50),
Name				Varchar(100),
City				Varchar(50),
State				Varchar(50),
Country				Varchar(50),
Zip_Code			Varchar(50),
Latitude			Decimal,
Longitude			Decimal,
Alcohol_Service		Varchar(50),
Smoking_Allowed		Varchar(50),
Price				Varchar(50),
Franchise			Varchar(50),
Area				Varchar(50),
Parking				Varchar(100)
)

LOAD DATA LOCAL INFILE:
'C:\Users\user\Documents\Data analysis\Restorent rating analysis\Restaurants.csv'
into table Restaurants
fields terminated by ","
enclosed by '"'
lines terminated by '\n'
ignore rows 1;

--- Creating restaurant_cuisines Table 

CREATE TABLE restaurant_cuisines (
Restaurant_ID	Varchar(50),
Cuisine			Varchar(50)
)

LOAD DATA LOCAL INFILE:
'C:\Users\user\Documents\Data analysis\Restorent rating analysis\restaurant_cuisines.csv'
into table restaurant_cuisines
fields terminated by ","
enclosed by '"'
lines terminated by '\n'
ignore rows 1;
select * from restaurant_cuisines;
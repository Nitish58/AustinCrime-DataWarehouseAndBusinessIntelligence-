-- Creating the database if it does not exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE NAME LIKE '%GRP01_PROJECT_DB%')
BEGIN
	CREATE DATABASE GRP01_PROJECT_DB;
END;


-- Accessing the created database
USE GRP01_PROJECT_DB;


-- Drop table commands
/*
-- Crime Reports Stage and Archive
DROP TABLE PRESTG_CRIME_REPORTS;
DROP TABLE STG_CRIME_REPORTS;
DROP TABLE ARC_CRIME_REPORTS;

-- Traffic Camera Stage and Archive
DROP TABLE PRESTG_TRAFFIC_CAMERA;
DROP TABLE STG_TRAFFIC_CAMERA;
DROP TABLE ARC_TRAFFIC_CAMERA;

-- Unemployment Stage and Archive
DROP TABLE PRESTG_UNEMPLOYMENT;
DROP TABLE STG_UNEMPLOYMENT;
DROP TABLE ARC_UNEMPLOYMENT;

-- Bike Transport Stage and Archive
DROP TABLE PRESTG_BIKE_TRANSPORT;
DROP TABLE STG_BIKE_TRANSPORT;
DROP TABLE ARC_BIKE_TRANSPORT;

-- Error Tables
DROP TABLE ERR_CRIME_REPORTS;
DROP TABLE ERR_TRAFFIC_CAMERA;
DROP TABLE ERR_UNEMPLOYMENT;
DROP TABLE ERR_BIKE_TRANSPORT;

-- Crime Reports Fact and Dimensions
DROP TABLE FACT_CRIME_REPORTS
DROP TABLE DIM_CR_INCIDENT
DROP TABLE DIM_CR_UCR
DROP TABLE DIM_CR_OFFENCE
DROP TABLE DIM_CR_LOCATION

-- Traffic Camera Fact and Dimensions
DROP TABLE FACT_TRAFFIC_CAMERA
DROP TABLE DIM_TC_CAM_LOCATION
DROP TABLE DIM_TC_CAM_IP

-- Unemployment Fact
DROP TABLE FACT_UNEMPLOYMENT

-- Bike Transport Fact and Dimensions
DROP TABLE FACT_BIKE_TRANSPORT
DROP TABLE DIM_BT_LOCATION

-- Latitude-Longitude Mapping Lookup
DROP TABLE LAT_LONG_LKP;
*/


-- Staging and Archiving Crime Reports Data


-- Creating a PRESTG_CRIME_REPORTS table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%PRESTG_CRIME_REPORTS%')
BEGIN
	CREATE TABLE PRESTG_CRIME_REPORTS
	(
		Incident_Number VARCHAR(255),
		Highest_Offense_Description VARCHAR(255),
		Highest_Offense_Code VARCHAR(255),
		Family_Violence VARCHAR(255),
		Occurred_Date_Time VARCHAR(255),
		Occurred_Date VARCHAR(255),
		Occurred_Time VARCHAR(255),
		Report_Date_Time VARCHAR(255),
		Report_Date VARCHAR(255),
		Report_Time VARCHAR(255),
		Location_Type VARCHAR(255),
		[Address] VARCHAR(255),
		Zip_Code VARCHAR(255),
		Council_District VARCHAR(255),
		APD_Sector VARCHAR(255),
		APD_District VARCHAR(255),
		PRA VARCHAR(255),
		Census_Tract VARCHAR(255),
		Clearance_Status VARCHAR(255),
		Clearance_Date VARCHAR(255),
		UCR_Category VARCHAR(255),
		Category_Description VARCHAR(255),
		X_coordinate VARCHAR(255),
		Y_coordinate VARCHAR(255),
		Latitude VARCHAR(255),
		Longitude VARCHAR(255),
		[Location] VARCHAR(255)
	);
END;


-- Creating a STG_CRIME_REPORTS table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE 'STG_CRIME_REPORTS%')
BEGIN
	CREATE TABLE STG_CRIME_REPORTS
	(
		Incident_Number VARCHAR(255),
		Highest_Offense_Description VARCHAR(255),
		Highest_Offense_Code VARCHAR(255),
		Family_Violence VARCHAR(255),
		Occurred_Date_Time VARCHAR(255),
		Occurred_Date VARCHAR(255),
		Occurred_Time VARCHAR(255),
		Report_Date_Time VARCHAR(255),
		Report_Date VARCHAR(255),
		Report_Time VARCHAR(255),
		Location_Type VARCHAR(255),
		[Address] VARCHAR(255),
		Zip_Code VARCHAR(255),
		Council_District VARCHAR(255),
		APD_Sector VARCHAR(255),
		APD_District VARCHAR(255),
		PRA VARCHAR(255),
		Census_Tract VARCHAR(255),
		Clearance_Status VARCHAR(255),
		Clearance_Date VARCHAR(255),
		UCR_Category VARCHAR(255),
		Category_Description VARCHAR(255),
		X_coordinate VARCHAR(255),
		Y_coordinate VARCHAR(255),
		Latitude VARCHAR(255),
		Longitude VARCHAR(255),
		[Location] VARCHAR(255)
	);
END;


-- Creating a ARC_CRIME_REPORTS table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%ARC_CRIME_REPORTS%')
BEGIN
	CREATE TABLE ARC_CRIME_REPORTS
	(
		Incident_Number VARCHAR(255),
		Highest_Offense_Description VARCHAR(255),
		Highest_Offense_Code VARCHAR(255),
		Family_Violence VARCHAR(255),
		Occurred_Date_Time VARCHAR(255),
		Occurred_Date VARCHAR(255),
		Occurred_Time VARCHAR(255),
		Report_Date_Time VARCHAR(255),
		Report_Date VARCHAR(255),
		Report_Time VARCHAR(255),
		Location_Type VARCHAR(255),
		[Address] VARCHAR(255),
		Zip_Code VARCHAR(255),
		Council_District VARCHAR(255),
		APD_Sector VARCHAR(255),
		APD_District VARCHAR(255),
		PRA VARCHAR(255),
		Census_Tract VARCHAR(255),
		Clearance_Status VARCHAR(255),
		Clearance_Date VARCHAR(255),
		UCR_Category VARCHAR(255),
		Category_Description VARCHAR(255),
		X_coordinate VARCHAR(255),
		Y_coordinate VARCHAR(255),
		Latitude VARCHAR(255),
		Longitude VARCHAR(255),
		[Location] VARCHAR(255),
		Upload_Date DATETIME
	);
END;


-- Creating a ERR_CRIME_REPORTS table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%ERR_CRIME_REPORTS%')
BEGIN
	CREATE TABLE ERR_CRIME_REPORTS
	(
		Incident_Number VARCHAR(255),
		Highest_Offense_Code VARCHAR(255),
		Family_Violence VARCHAR(255),
		Occurred_Date DATE,
		Report_Date DATE,
		Clearance_Date DATE,
		Error_Detail VARCHAR(255),
		Error_Date DATE	
	);
END;


-- Staging and Archiving Traffic Camera Data


-- Creating a PRESTG_TRAFFIC_CAMERA table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%PRESTG_TRAFFIC_CAMERA%')
BEGIN
	CREATE TABLE PRESTG_TRAFFIC_CAMERA
	(
		Camera_ID VARCHAR(255),
		Location_Name VARCHAR(255),
		Camera_Status VARCHAR(255),
		Turn_on_Date VARCHAR(255),
		Camera_Manufacturer VARCHAR(255),
		ATD_Location_ID VARCHAR(255),
		Landmark VARCHAR(255),
		Signal_Engineer_Area VARCHAR(255),
		Council_District VARCHAR(255),
		Jurisdiction VARCHAR(255),
		Location_Type VARCHAR(255),
		Primary_St_Segment_ID VARCHAR(255),
		Cross_St_Segment_ID VARCHAR(255),
		Primary_Street_Block VARCHAR(255),
		Primary_Street VARCHAR(255),
		PRIMARY_ST_AKA VARCHAR(255),
		Cross_Street_Block VARCHAR(255),
		Cross_Street VARCHAR(255),
		CROSS_ST_AKA VARCHAR(255),
		COA_Intersection_ID VARCHAR(255),
		Modified_Date VARCHAR(255),
		[Location] VARCHAR(255),
		IP_Comm_Status VARCHAR(255),
		IP_Comm_Status_Date_and_Time VARCHAR(255),
		Longitude VARCHAR(255),
		Latitude VARCHAR(255),
		Published_Screenshots VARCHAR(255),
		Screenshot_Address VARCHAR(255),
		Funding VARCHAR(255),
		ID VARCHAR(255)
	);
END;


-- Creating a STG_TRAFFIC_CAMERA table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE 'STG_TRAFFIC_CAMERA%')
BEGIN
	CREATE TABLE STG_TRAFFIC_CAMERA
	(
		Camera_ID VARCHAR(255),
		Location_Name VARCHAR(255),
		Camera_Status VARCHAR(255),
		Turn_on_Date VARCHAR(255),
		Camera_Manufacturer VARCHAR(255),
		ATD_Location_ID VARCHAR(255),
		Landmark VARCHAR(255),
		Signal_Engineer_Area VARCHAR(255),
		Council_District VARCHAR(255),
		Jurisdiction VARCHAR(255),
		Location_Type VARCHAR(255),
		Primary_St_Segment_ID VARCHAR(255),
		Cross_St_Segment_ID VARCHAR(255),
		Primary_Street_Block VARCHAR(255),
		Primary_Street VARCHAR(255),
		PRIMARY_ST_AKA VARCHAR(255),
		Cross_Street_Block VARCHAR(255),
		Cross_Street VARCHAR(255),
		CROSS_ST_AKA VARCHAR(255),
		COA_Intersection_ID VARCHAR(255),
		Modified_Date VARCHAR(255),
		[Location] VARCHAR(255),
		IP_Comm_Status VARCHAR(255),
		IP_Comm_Status_Date_and_Time VARCHAR(255),
		Longitude VARCHAR(255),
		Latitude VARCHAR(255),
		Published_Screenshots VARCHAR(255),
		Screenshot_Address VARCHAR(255),
		Funding VARCHAR(255),
		ID VARCHAR(255)
	);
END;


-- Creating a ARC_TRAFFIC_CAMERA table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%ARC_TRAFFIC_CAMERA%')
BEGIN
	CREATE TABLE ARC_TRAFFIC_CAMERA
	(
		Camera_ID VARCHAR(255),
		Location_Name VARCHAR(255),
		Camera_Status VARCHAR(255),
		Turn_on_Date VARCHAR(255),
		Camera_Manufacturer VARCHAR(255),
		ATD_Location_ID VARCHAR(255),
		Landmark VARCHAR(255),
		Signal_Engineer_Area VARCHAR(255),
		Council_District VARCHAR(255),
		Jurisdiction VARCHAR(255),
		Location_Type VARCHAR(255),
		Primary_St_Segment_ID VARCHAR(255),
		Cross_St_Segment_ID VARCHAR(255),
		Primary_Street_Block VARCHAR(255),
		Primary_Street VARCHAR(255),
		PRIMARY_ST_AKA VARCHAR(255),
		Cross_Street_Block VARCHAR(255),
		Cross_Street VARCHAR(255),
		CROSS_ST_AKA VARCHAR(255),
		COA_Intersection_ID VARCHAR(255),
		Modified_Date VARCHAR(255),
		[Location] VARCHAR(255),
		IP_Comm_Status VARCHAR(255),
		IP_Comm_Status_Date_and_Time VARCHAR(255),
		Longitude VARCHAR(255),
		Latitude VARCHAR(255),
		Published_Screenshots VARCHAR(255),
		Screenshot_Address VARCHAR(255),
		Funding VARCHAR(255),
		ID VARCHAR(255),
		Upload_Date DATETIME
	);
END;


-- Creating a ERR_TRAFFIC_CAMERA table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%ERR_TRAFFIC_CAMERA%')
BEGIN
	CREATE TABLE ERR_TRAFFIC_CAMERA
	(
		Camera_ID VARCHAR(255),
		Camera_Status VARCHAR(255),
		IP_Comm_Status VARCHAR(255),
		Error_Detail VARCHAR(255),
		Error_Date DATE	
	);
END;


-- Staging and Archiving Unemployment Data


-- Creating a PRESTG_UNEMPLOYMENT table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%PRESTG_UNEMPLOYMENT%')
BEGIN
	CREATE TABLE PRESTG_UNEMPLOYMENT
	(
		As_of_Date VARCHAR(255),
		Unemployment_Rate VARCHAR(255)
	);
END;


-- Creating a STG_UNEMPLOYMENT table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE 'STG_UNEMPLOYMENT%')
BEGIN
	CREATE TABLE STG_UNEMPLOYMENT
	(
		As_of_Date VARCHAR(255),
		Unemployment_Rate VARCHAR(255)
	);
END;


-- Creating a ARC_UNEMPLOYMENT table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%ARC_UNEMPLOYMENT%')
BEGIN
	CREATE TABLE ARC_UNEMPLOYMENT
	(
		As_of_Date VARCHAR(255),
		Unemployment_Rate VARCHAR(255),
		Upload_Date DATETIME
	);
END;


-- Creating a ERR_UNEMPLOYMENT table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%ERR_UNEMPLOYMENT%')
BEGIN
	CREATE TABLE ERR_UNEMPLOYMENT
	(
		As_of_Date DATE,
		Unemployment_Rate DECIMAL(8,1),
		Error_Detail VARCHAR(255),
		Error_Date DATE	
	);
END;


-- Staging and Archiving Bike Transportation Data


-- Creating a PRESTG_BIKE_TRANSPORT table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%PRESTG_BIKE_TRANSPORT%')
BEGIN
	CREATE TABLE PRESTG_BIKE_TRANSPORT
	(
		the_geom NVARCHAR(MAX),
		OBJECTID VARCHAR(255),
		SUB_PROJECT_ID VARCHAR(255),
		ROUTE_NUMBER VARCHAR(255),
		SEGMENT_NUMBER VARCHAR(255),
		ROUTE_CODE VARCHAR(255),
		ROUTE_NAME VARCHAR(255),
		SEGMENT_FROM VARCHAR(255),
		SEGMENT_TO VARCHAR(255),
		EXISTING_FACILITY VARCHAR(255),
		RECOMMENDED_FACILITY VARCHAR(255),
		CREATED_BY VARCHAR(255),
		CREATED_DATE VARCHAR(255),
		MODIFIED_BY VARCHAR(255),
		MODIFIED_DATE VARCHAR(255),
		STREET_SEGMENT_ID VARCHAR(255),
		BICYCLE_FACILITIES_ID VARCHAR(255),
		BICYCLE_PLAN_ID VARCHAR(255),
		SYMBOL_LEVEL VARCHAR(255),
		LEVEL_OF_COMFORT VARCHAR(255)
	);
END;


-- Creating a STG_BIKE_TRANSPORT table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE 'STG_BIKE_TRANSPORT%')
BEGIN
	CREATE TABLE STG_BIKE_TRANSPORT
	(
		the_geom NVARCHAR(MAX),
		OBJECTID VARCHAR(255),
		SUB_PROJECT_ID VARCHAR(255),
		ROUTE_NUMBER VARCHAR(255),
		SEGMENT_NUMBER VARCHAR(255),
		ROUTE_CODE VARCHAR(255),
		ROUTE_NAME VARCHAR(255),
		SEGMENT_FROM VARCHAR(255),
		SEGMENT_TO VARCHAR(255),
		EXISTING_FACILITY VARCHAR(255),
		RECOMMENDED_FACILITY VARCHAR(255),
		CREATED_BY VARCHAR(255),
		CREATED_DATE VARCHAR(255),
		MODIFIED_BY VARCHAR(255),
		MODIFIED_DATE VARCHAR(255),
		STREET_SEGMENT_ID VARCHAR(255),
		BICYCLE_FACILITIES_ID VARCHAR(255),
		BICYCLE_PLAN_ID VARCHAR(255),
		SYMBOL_LEVEL VARCHAR(255),
		LEVEL_OF_COMFORT VARCHAR(255)
	);
END;


-- Creating a ARC_BIKE_TRANSPORT table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%ARC_BIKE_TRANSPORT%')
BEGIN
	CREATE TABLE ARC_BIKE_TRANSPORT
	(
		the_geom NVARCHAR(MAX),
		OBJECTID VARCHAR(255),
		SUB_PROJECT_ID VARCHAR(255),
		ROUTE_NUMBER VARCHAR(255),
		SEGMENT_NUMBER VARCHAR(255),
		ROUTE_CODE VARCHAR(255),
		ROUTE_NAME VARCHAR(255),
		SEGMENT_FROM VARCHAR(255),
		SEGMENT_TO VARCHAR(255),
		EXISTING_FACILITY VARCHAR(255),
		RECOMMENDED_FACILITY VARCHAR(255),
		CREATED_BY VARCHAR(255),
		CREATED_DATE VARCHAR(255),
		MODIFIED_BY VARCHAR(255),
		MODIFIED_DATE VARCHAR(255),
		STREET_SEGMENT_ID VARCHAR(255),
		BICYCLE_FACILITIES_ID VARCHAR(255),
		BICYCLE_PLAN_ID VARCHAR(255),
		SYMBOL_LEVEL VARCHAR(255),
		LEVEL_OF_COMFORT VARCHAR(255),
		Upload_Date DATETIME
	);
END;


-- Creating a ERR_BIKE_TRANSPORT table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%ERR_BIKE_TRANSPORT%')
BEGIN
	CREATE TABLE ERR_BIKE_TRANSPORT
	(
		the_geom NVARCHAR(MAX),
		OBJECTID VARCHAR(255),
		Error_Detail VARCHAR(255),
		Error_Date DATE	
	);
END;


-- Latitude-Longitude Mapping Lookup


-- Creating a LAT_LONG_LKP table
IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%LAT_LONG_LKP%')
BEGIN
	CREATE TABLE LAT_LONG_LKP
	(
		Zip NUMERIC,
		City VARCHAR(255),
		State VARCHAR(255),
		Latitude DECIMAL(8,5),
		Longitude DECIMAL(8,5),
		Timezone VARCHAR(255),
		Daylight_savings_time_flag VARCHAR(255),
		geopoint VARCHAR(255)
	);
END;


-- Crime Reports Fact and Dimensions

IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%DIM_CR_INCIDENT%')
BEGIN
	CREATE TABLE DIM_CR_INCIDENT
	(
		Incident_Number			NUMERIC,
		Family_Violence			VARCHAR(50)   	NULL,
		Council_District		VARCHAR(50)    	NULL,
		Clearance_Status 		VARCHAR(50)   	NULL,
		Clearance_Date 			DATE 		 	NULL,
		Occurred_Date_Time 		DATETIME       	NULL,
		Report_Date_Time 		DATETIME       	NULL,
		Prior_Council_District  VARCHAR(50)    	NULL,
		Last_Updated_Date 		DATETIME       	NULL,
		CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (Incident_Number)
	);
END;

IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%DIM_CR_UCR%')
BEGIN
	CREATE TABLE DIM_CR_UCR
	(
		UCR_Category			VARCHAR(50)		NOT NULL,
		Category_Description    VARCHAR(255)	NULL,
		Last_Updated_Date 		DATETIME       	NULL,
		CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (UCR_Category)
	);
END;

IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%DIM_CR_OFFENCE%')
BEGIN
	CREATE TABLE DIM_CR_OFFENCE
	(
		Highest_Offence_Code			VARCHAR(50)	NOT NULL,
		highest_Offence_Description		VARCHAR(255) NULL,
		Last_Updated_Date 				DATETIME       	NULL,
		CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (Highest_Offence_Code)
	);
END;

IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%DIM_CR_LOCATION%')
BEGIN
	CREATE TABLE DIM_CR_LOCATION
	(
		Location_ID			VARCHAR(259)  	NOT NULL,
		Location_Type		VARCHAR(50)    	NULL,
		[Address] 			VARCHAR(255)    NULL,
		Zip_Code 			NUMERIC     	NULL,
		Latitude 			DECIMAL(8,5)    NULL,
		Longitude 			DECIMAL(8,5)    NULL,
		[Location] 			VARCHAR(255)	NULL,
		Inactive_Flag		VARCHAR(1)		NULL,
		Last_Updated_Date 	DATETIME       	NULL,
		CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (Location_ID)
	);
END;

IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%FACT_CRIME_REPORTS%')
BEGIN
	CREATE TABLE FACT_CRIME_REPORTS
	(
		Highest_Offence_Code    VARCHAR(50)		NOT NULL,
		Location_ID             VARCHAR(259)	NULL,
		Incident_Number         NUMERIC         NOT NULL,
		UCR_Category            VARCHAR(50)     NULL,
		CONSTRAINT PK1 			   		PRIMARY KEY NONCLUSTERED (Incident_Number),
		CONSTRAINT RefCrime_Offence4 	FOREIGN KEY (Highest_Offence_Code) REFERENCES DIM_CR_OFFENCE(Highest_Offence_Code),
		CONSTRAINT RefLocation5 		FOREIGN KEY (Location_ID)    	   REFERENCES DIM_CR_LOCATION(Location_ID),
		CONSTRAINT RefIncident2 		FOREIGN KEY (Incident_Number)      REFERENCES DIM_CR_INCIDENT(Incident_Number),
		CONSTRAINT RefCrime_UCR3 		FOREIGN KEY (UCR_Category)    	   REFERENCES DIM_CR_UCR(UCR_Category)
	);
END;


-- Traffic Camera Fact and Dimensions


IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%DIM_TC_CAM_LOCATION%')
BEGIN
	CREATE TABLE DIM_TC_CAM_LOCATION
	(
		Location_ID			VARCHAR(259)	NOT NULL,
		Location_Name		VARCHAR(100)	NULL,
		Location_Type		VARCHAR(50)		NULL,
		Location			VARCHAR(50)		NULL,
		Longitude			DECIMAL(8,5)	NULL,
		Latitude			DECIMAL(8,5)	NULL,
		Zip_Code			NUMERIC			NULL,
		Inactive_Flag		VARCHAR(1)		NULL,
		Last_Updated_Date 	DATETIME		NULL,
		CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (Location_ID)
	);
END;

IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%DIM_TC_CAM_IP%')
BEGIN
	CREATE TABLE DIM_TC_CAM_IP
	(
		IP_ID                       VARCHAR(259)	NOT NULL,
		IP_Comm_Status              VARCHAR(50)		NULL,
		IP_Comm_Status_Date_Time    DATETIME		NULL,
		CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (IP_ID)
	);
END;

IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%FACT_TRAFFIC_CAMERA%')
BEGIN
	CREATE TABLE FACT_TRAFFIC_CAMERA
	(
		Camera_ID         		NUMERIC    		NOT NULL,
		Location_ID       		VARCHAR(259)	NULL,
		IP_ID             		VARCHAR(259)	NOT NULL,
		Camera_Status     		VARCHAR(50)    	NULL,
		Turn_on_Date      		DATE	       	NULL,
		Council_District  		VARCHAR(50)    	NULL,
		Jurisdiction      		VARCHAR(50)    	NULL,
		Signal_Engineer_Area	VARCHAR(50)    	NULL,
		CONSTRAINT PK6 					 PRIMARY KEY NONCLUSTERED (Camera_ID), 
		CONSTRAINT RefCamera_Location7 	 FOREIGN KEY (Location_ID) 	REFERENCES DIM_TC_CAM_LOCATION(Location_ID),
		CONSTRAINT RefCamera_IP8 		 FOREIGN KEY (IP_ID) 		REFERENCES DIM_TC_CAM_IP(IP_ID)
	);
END;


-- Unemployment Fact


IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%FACT_UNEMPLOYMENT%')
BEGIN
	CREATE TABLE FACT_UNEMPLOYMENT
	(
		As_of_Date DATE,
		Unemployment_Rate DECIMAL(8,1),
		Last_Updated_Date DATETIME
	);
END;


-- Bike Transport Fact and Dimensions


IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%DIM_BT_LOCATION%')
BEGIN
	CREATE TABLE DIM_BT_LOCATION
	(
		Location_ID    	  VARCHAR(259)	 NOT NULL,
		Geom_Point        NVARCHAR(MAX)  NULL,
		Zip_Codes		  VARCHAR(1000)  NULL,
		CONSTRAINT PK10   PRIMARY KEY NONCLUSTERED (Location_ID)
	);
END;

IF NOT EXISTS (SELECT * FROM GRP01_PROJECT_DB.sys.tables WHERE NAME LIKE '%FACT_BIKE_TRANSPORT%')
BEGIN
	CREATE TABLE FACT_BIKE_TRANSPORT
	(
		OBJECT_ID         NUMERIC        NOT NULL,
		Location_ID       VARCHAR(259)	 NOT NULL,
		Sub_Project_ID    VARCHAR(50)    NULL,
		Route_Number      NUMERIC        NULL,
		Segment_Number    NUMERIC        NULL,
		Route_Code        VARCHAR(50)    NULL,
		Route_Name        VARCHAR(100)    NULL,
		Segment_From      VARCHAR(50)    NULL,
		Segment_To        VARCHAR(50)    NULL,
		CONSTRAINT PK9   				 PRIMARY KEY NONCLUSTERED (OBJECT_ID), 
		CONSTRAINT RefBike_Location10 	 FOREIGN KEY (Location_ID)	REFERENCES DIM_BT_LOCATION(Location_ID)
	);
END;


-- Truncate table commands
/*
-- Crime Reports Stage and Archive
TRUNCATE TABLE PRESTG_CRIME_REPORTS;
TRUNCATE TABLE STG_CRIME_REPORTS;
TRUNCATE TABLE ARC_CRIME_REPORTS;

-- Traffic Camera Stage and Archive
TRUNCATE TABLE PRESTG_TRAFFIC_CAMERA;
TRUNCATE TABLE STG_TRAFFIC_CAMERA;
TRUNCATE TABLE ARC_TRAFFIC_CAMERA;

-- Unemployment Stage and Archive
TRUNCATE TABLE PRESTG_UNEMPLOYMENT
TRUNCATE TABLE STG_UNEMPLOYMENT;
TRUNCATE TABLE ARC_UNEMPLOYMENT;

-- Bike Transport Stage and Archive
TRUNCATE TABLE PRESTG_BIKE_TRANSPORT;
TRUNCATE TABLE STG_BIKE_TRANSPORT;
TRUNCATE TABLE ARC_BIKE_TRANSPORT;

-- Error Tables
TRUNCATE TABLE ERR_CRIME_REPORTS;
TRUNCATE TABLE ERR_TRAFFIC_CAMERA;
TRUNCATE TABLE ERR_UNEMPLOYMENT;
TRUNCATE TABLE ERR_BIKE_TRANSPORT;

-- Crime Reports Fact and Dimensions
TRUNCATE TABLE FACT_CRIME_REPORTS
TRUNCATE TABLE DIM_CR_INCIDENT
TRUNCATE TABLE DIM_CR_UCR
TRUNCATE TABLE DIM_CR_OFFENCE
TRUNCATE TABLE DIM_CR_LOCATION

-- Traffic Camera Fact and Dimensions
TRUNCATE TABLE FACT_TRAFFIC_CAMERA
TRUNCATE TABLE DIM_TC_CAM_LOCATION
TRUNCATE TABLE DIM_TC_CAM_IP

-- Unemployment Fact
TRUNCATE TABLE FACT_UNEMPLOYMENT

-- Bike Transport Fact and Dimensions
TRUNCATE TABLE FACT_BIKE_TRANSPORT
TRUNCATE TABLE DIM_BT_LOCATION

-- Latitude-Longitude Mapping Lookup
TRUNCATE TABLE LAT_LONG_LKP;
*/


-- Viewing the data in the table


-- Crime Reports Stage and Archive
SELECT  *
  FROM  STG_CRIME_REPORTS;

SELECT  *
  FROM  ARC_CRIME_REPORTS;


-- Traffic Camera Stage and Archive
SELECT  *
  FROM  STG_TRAFFIC_CAMERA;

SELECT  *
  FROM  ARC_TRAFFIC_CAMERA;


-- Unemployment Stage and Archive
SELECT  *
  FROM  STG_UNEMPLOYMENT;

SELECT  *
  FROM  ARC_UNEMPLOYMENT;


-- Bike Transport Stage and Archive
SELECT  *
  FROM  STG_BIKE_TRANSPORT;

SELECT  *
  FROM  ARC_BIKE_TRANSPORT;


-- Crime Reports Fact and Dimensions
SELECT  *
  FROM  FACT_CRIME_REPORTS

SELECT  *
  FROM  DIM_CR_INCIDENT

SELECT  *
  FROM  DIM_CR_UCR

SELECT  *
  FROM  DIM_CR_OFFENCE

SELECT  *
  FROM  DIM_CR_LOCATION


-- Traffic Camera Fact and Dimensions
SELECT  *
  FROM  FACT_TRAFFIC_CAMERA

SELECT  *
  FROM  DIM_TC_CAM_LOCATION

SELECT  *
  FROM  DIM_TC_CAM_IP


-- Unemployment Fact
SELECT  *
  FROM  FACT_UNEMPLOYMENT


-- Bike Transport Fact and Dimensions
SELECT  *
  FROM  FACT_BIKE_TRANSPORT

SELECT  *
  FROM  DIM_BT_LOCATION


-- Latitude-Longitude Mapping Lookup
SELECT  *
  FROM  LAT_LONG_LKP;


-- Validating Row Count


-- Crime Reports Stage and Archive
SELECT  COUNT(*)
  FROM  STG_CRIME_REPORTS;

SELECT  COUNT(*)
  FROM  ARC_CRIME_REPORTS;


-- Traffic Camera Stage and Archive
SELECT  COUNT(*)
  FROM  STG_TRAFFIC_CAMERA;

SELECT  COUNT(*)
  FROM  ARC_TRAFFIC_CAMERA;


-- Unemployment Stage and Archive
SELECT  COUNT(*)
  FROM  STG_UNEMPLOYMENT;

SELECT  COUNT(*)
  FROM  ARC_UNEMPLOYMENT;


-- Bike Transport Stage and Archive
SELECT  COUNT(*)
  FROM  STG_BIKE_TRANSPORT;

SELECT  COUNT(*)
  FROM  ARC_BIKE_TRANSPORT;


-- Crime Reports Fact and Dimensions
SELECT  COUNT(*)
  FROM  FACT_CRIME_REPORTS

SELECT  COUNT(*)
  FROM  DIM_CR_INCIDENT

SELECT  COUNT(*)
  FROM  DIM_CR_UCR

SELECT  COUNT(*)
  FROM  DIM_CR_OFFENCE

SELECT  COUNT(*)
  FROM  DIM_CR_LOCATION


-- Traffic Camera Fact and Dimensions
SELECT  COUNT(*)
  FROM  FACT_TRAFFIC_CAMERA

SELECT  COUNT(*)
  FROM  DIM_TC_CAM_LOCATION

SELECT  COUNT(*)
  FROM  DIM_TC_CAM_IP


-- Unemployment Fact
SELECT  COUNT(*)
  FROM  FACT_UNEMPLOYMENT


-- Bike Transport Fact and Dimensions
SELECT  COUNT(*)
  FROM  FACT_BIKE_TRANSPORT

SELECT  COUNT(*)
  FROM  DIM_BT_LOCATION


-- Latitude-Longitude Mapping Lookup
SELECT  COUNT(*)
  FROM  LAT_LONG_LKP;


-- Procedure to convert Latitude and Longitude to Zip Code
GO
CREATE OR ALTER PROCEDURE LatLongtoZip
AS

WHILE EXISTS (SELECT Zip_Code FROM DIM_TC_CAM_LOCATION WHERE Zip_Code IS NULL)
BEGIN

DECLARE @Zip NUMERIC;
DECLARE @Longitude DECIMAL(8,5);
DECLARE @Latitude DECIMAL(8,5);
SELECT  TOP 1
		@Longitude = Longitude,
		@Latitude = Latitude
  FROM  DIM_TC_CAM_LOCATION
 WHERE  Zip_Code IS NULL

SELECT  TOP 1
		@Zip = CASE
			   WHEN Tab.Zip IS NULL
			   THEN 99999
			   ELSE Tab.Zip
			   END
  FROM  (
		SELECT  ACOS(
				(COS(RADIANS( Lookup_Tab.Latitude ))
				   * COS(RADIANS( @Latitude ))
				   * COS(RADIANS( Lookup_Tab.Longitude ) - RADIANS( @Longitude ))
				   + SIN(RADIANS( Lookup_Tab.Latitude ))
				   * SIN(RADIANS( @Latitude )))
				) * 3958.75586574 AS distance_miles,
				Lookup_Tab.Zip
		  FROM LAT_LONG_LKP Lookup_Tab
		) AS Tab
ORDER BY Tab.distance_miles;

UPDATE DIM_TC_CAM_LOCATION
SET Zip_Code = @Zip
WHERE Longitude = @Longitude
  AND  Latitude = @Latitude;

END;
GO


-- Executing Procedure to populate Zip Codes in the Traffic Camera Location Dimension table
EXEC LatLongtoZip;
--                     ***************************************
-- 						   🥰🥳	 WELCOME TO Project 2   🥳🥰
-- 					   ***************************************


/*
Q1.Create new schema as alumni
*/ 
CREATE DATABASE alumni;
USE alumni;

-- ***************************************************************************************************************
/*
Q2. Import all .csv files into MySQL
*/
CREATE TABLE College_A_HS (
  RollNo INT,
  LastUpdate DATE,
  Name VARCHAR(255),
  FatherName VARCHAR(255),
  MotherName VARCHAR(255),
  Batch VARCHAR(255),
  Degree VARCHAR(255),
  PresentStatus VARCHAR(255),
  HSDegree VARCHAR(255),
  EntranceExam VARCHAR(255),
  Institute VARCHAR(255),
  Location VARCHAR(255)
);
-- ***************************************************************************************************************
/*
Q3. Run SQL command to see the structure of six tables
*/
-- 1. College_A_HS table:
DESCRIBE College_A_HS;
SHOW CREATE TABLE College_A_HS;

-- 2. College_A_SE table:
DESCRIBE College_A_SE;
SHOW CREATE TABLE College_A_SE;

-- 3.College_A_SJ table:
DESCRIBE College_A_SJ;
SHOW CREATE TABLE College_A_SJ;

-- 4. College_B_HS table:
DESCRIBE College_B_HS;
SHOW CREATE TABLE College_B_HS;

-- 5. College_B_SE table:
DESCRIBE College_B_SE;
SHOW CREATE TABLE College_B_SE;

-- 6.College_B_SJ table:
DESCRIBE College_B_SJ;
SHOW CREATE TABLE College_B_SJ;
-- ***************************************************************************************************************
/*
Q6.Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values. 
*/
DESCRIBE College_A_HS;

-- Create a view with cleaned data from College_A_HS
CREATE VIEW College_A_HS_V AS
SELECT *
FROM College_A_HS
WHERE RollNo IS NOT NULL
  AND LastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND HSDegree IS NOT NULL
  AND EntranceExam IS NOT NULL
  AND Institute IS NOT NULL
  AND Location IS NOT NULL;

-- ***************************************************************************************************************
/*
Q7.Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.
*/
DESCRIBE College_A_SE;

CREATE OR REPLACE  VIEW College_A_SE_V AS
SELECT *
FROM College_A_SE
WHERE RollNo IS NOT NULL
  AND LastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND Organization IS NOT NULL
  AND Location IS NOT NULL;
-- ***************************************************************************************************************
/*
Q8.Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.
*/
DESCRIBE College_A_SJ;

CREATE VIEW College_A_SJ_V AS
SELECT *
FROM College_A_SJ
WHERE RollNo IS NOT NULL
  AND LastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND Organization IS NOT NULL
  AND Designation IS NOT NULL
  AND Location IS NOT NULL;
-- ***************************************************************************************************************
/*
Q9.Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.
*/
DESCRIBE College_B_HS;

CREATE VIEW College_B_HS_V AS
SELECT *
FROM College_B_HS
WHERE RollNo IS NOT NULL
  AND LastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Branch IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND HSDegree IS NOT NULL
  AND EntranceExam IS NOT NULL
  AND Institute IS NOT NULL
  AND Location IS NOT NULL;
-- ***************************************************************************************************************
/*
Q10. Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.
*/

DESCRIBE College_B_SE;

CREATE VIEW College_B_SE_V AS
SELECT *
FROM College_B_SE
WHERE RollNo IS NOT NULL
  AND LastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Branch IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND Organization IS NOT NULL
  AND Location IS NOT NULL;
-- ***************************************************************************************************************

/*
Q11. Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V, Remove null values.
*/
DESCRIBE College_B_SJ;

CREATE VIEW College_B_SJ_V AS
SELECT *
FROM College_B_SJ
WHERE RollNo IS NOT NULL
  AND LastUpdate IS NOT NULL
  AND Name IS NOT NULL
  AND FatherName IS NOT NULL
  AND MotherName IS NOT NULL
  AND Branch IS NOT NULL
  AND Batch IS NOT NULL
  AND Degree IS NOT NULL
  AND PresentStatus IS NOT NULL
  AND Organization IS NOT NULL
  AND Designation IS NOT NULL
  AND Location IS NOT NULL;
-- ***************************************************************************************************************
/*
Q12. Make procedure to use string function/s for converting record of Name, FatherName, MotherName into lower case for views 
(College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
*/


USE `alumni`;
DROP procedure IF EXISTS `ConvertNamesToLowercase`;


DELIMITER $$
USE `alumni`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConvertNamesToLowercase`()
BEGIN
    -- College_A_HS_V
    UPDATE College_A_HS_V
    SET Name = LOWER(Name),
        FatherName = LOWER(FatherName),
        MotherName = LOWER(MotherName)
    WHERE RollNo IS NOT NULL;-- Replace with appropriate key column condition

UPDATE College_A_SE_V 
SET 
    Name = LOWER(Name),
    FatherName = LOWER(FatherName),
    MotherName = LOWER(MotherName)
WHERE
    RollNo IS NOT NULL;-- Replace with appropriate key column condition

UPDATE College_A_SJ_V 
SET 
    Name = LOWER(Name),
    FatherName = LOWER(FatherName),
    MotherName = LOWER(MotherName)
WHERE
    RollNo IS NOT NULL;-- Replace with appropriate key column condition

UPDATE College_B_HS_V 
SET 
    Name = LOWER(Name),
    FatherName = LOWER(FatherName),
    MotherName = LOWER(MotherName)
WHERE
    RollNo IS NOT NULL;-- Replace with appropriate key column condition

UPDATE College_B_SE_V 
SET 
    Name = LOWER(Name),
    FatherName = LOWER(FatherName),
    MotherName = LOWER(MotherName)
WHERE
    RollNo IS NOT NULL;-- Replace with appropriate key column condition

UPDATE College_B_SJ_V 
SET 
    Name = LOWER(Name),
    FatherName = LOWER(FatherName),
    MotherName = LOWER(MotherName)
WHERE
    RollNo IS NOT NULL; -- Replace with appropriate key column condition
END$$

DELIMITER ;


SET SQL_SAFE_UPDATES = 0;
CALL ConvertNamesToLowercase();
SET SQL_SAFE_UPDATES = 1;
-- *******************************************
/*
Q14.Write a query to create procedure get_name_collegeA using the cursor to fetch names of all students from college A.
*/
USE `alumni`;
DROP procedure IF EXISTS `get_name_collegeA`;

USE `alumni`;
DROP procedure IF EXISTS `alumni`.`get_name_collegeA`;
;

DELIMITER $$
USE `alumni`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_name_collegeA`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_name VARCHAR(255);
    
    -- Declare the cursor to fetch student names from College A
    DECLARE cur CURSOR FOR
        SELECT Name FROM College_A_HS;
    
    -- Declare continue handler
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Create a temporary table to store the names
    CREATE TEMPORARY TABLE temp_names (
        Name VARCHAR(255)
    );
    
    OPEN cur;
    
    -- Loop through the cursor and fetch the names
    read_loop: LOOP
        FETCH cur INTO student_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Insert the name into the temporary table
        INSERT INTO temp_names (Name) VALUES (student_name);
    END LOOP;
    
    CLOSE cur;
    
    -- Select the names from the temporary table
    SELECT Name FROM temp_names;
    
    -- Drop the temporary table
    DROP TABLE temp_names;
END$$

DELIMITER ;
;


call get_name_collegeA();
-- ***************************************************************************************************************
/*
Q15.Write a query to create procedure get_name_collegeB using the cursor to fetch names of all students from college B.
*/
USE `alumni`;
DROP procedure IF EXISTS `get_name_collegeB`;

USE `alumni`;
DROP procedure IF EXISTS `alumni`.`get_name_collegeB`;
;

DELIMITER $$
USE `alumni`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_name_collegeB`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_name VARCHAR(255);
    
    -- Declare the cursor to fetch student names from College B
    DECLARE cur CURSOR FOR
        SELECT Name FROM College_B_HS;
    
    -- Declare continue handler
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Create a temporary table to store the name
    CREATE TEMPORARY TABLE temp_names (
        Name VARCHAR(255)
    );
    
    OPEN cur;
    
    -- Loop through the cursor and fetch the names
    read_loop: LOOP
        FETCH cur INTO student_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Insert the name into the temporary table
        INSERT INTO temp_names (Name) VALUES (student_name);
    END LOOP;
    
    CLOSE cur;
    
    -- Select the names from the temporary table
    SELECT Name FROM temp_names;
    
    -- Drop the temporary table
    DROP TABLE temp_names;
END$$

DELIMITER ;
;

call get_name_collegeB();

-- ***************************************************************************************************************
/*
Q16.Calculate the percentage of career choice of College A and College B Alumni
-- (w.r.t Higher Studies, Self Employed and Service/Job)
Note: Approximate percentages are considered for career choices.
*/


-- Step 1: Obtain the count of each career choice for College A

-- Higher Studies: Count the number of alumni who chose Higher Studies in College A.
SELECT COUNT(PresentStatus) FROM college_a_hs;
-- 1157
SET @A_HS = 1157;
-- Self Employed: Count the number of alumni who chose Self Employed in College A.
SELECT COUNT(PresentStatus) FROM college_a_se;
-- 724
SET @A_SE = 724;
-- Service/Job: Count the number of alumni who chose Service/Job in College A.
SELECT COUNT(PresentStatus) FROM college_a_sj;
-- 4006
SET @A_SJ= 4006;

-- *************************

-- Step 2: Obtain the count of each career choice for College B:

-- Higher Studies: Count the number of alumni who chose Higher Studies in College B.
SELECT COUNT(PresentStatus) FROM college_b_hs;
-- 199
SET @B_HS = 199;
-- Self Employed: Count the number of alumni who chose Self Employed in College B.
SELECT COUNT(PresentStatus) FROM college_b_se;
-- 201
SET @B_SE = 201;
-- Service/Job: Count the number of alumni who chose Service/Job in College B.
SELECT COUNT(PresentStatus) FROM college_b_sj;
-- 1859
SET @B_SJ = 1859;

-- *************************

-- Step 3: Calculate the total count for each career choice:

-- For College A: Sum up the counts of Higher Studies, Self Employed, and Service/Job.
SELECT 1157 + 724 + 4006;
-- 5887 
-- Create a veriable 
SET @Total_A = 5887;
-- For College B: Sum up the counts of Higher Studies, Self Employed, and Service/Job.
SELECT 199+201+1859;
-- 2259
-- Create a veriable 
SET @Total_B = 2259;

-- *************************
-- Step 4: Calculate the percentages:

SELECT
    'Higher Studies' AS Career_choice,
    (@A_HS / @Total_A * 100) AS College_A_Percentage,
    (@B_HS / @Total_B  * 100) AS College_B_Percentage
    
FROM college_a_hs
CROSS JOIN college_b_hs

UNION 

SELECT
    'Self Employment' AS Career_choice,
    (@A_SE / @Total_A * 100) AS College_A_Percentage,
    (@B_SE / @Total_B * 100) AS College_B_Percentage
FROM college_a_se
CROSS JOIN college_b_se

UNION

SELECT
    'Service Job' AS Career_choice,
    (@A_SJ / @Total_A * 100) AS College_A_Percentage,
    (@B_SJ / @Total_B * 100) AS College_B_Percentage
FROM college_a_sj
CROSS JOIN college_b_sj;

--                                    🤩  Thank You  🤩 




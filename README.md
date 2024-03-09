# Alumni-Career-Insight-Analyzing-Career-Trajectories-of-University-Graduates
"Alumni Career Insights: Charting Trajectories" explores graduates' career paths from two universities. By analyzing data on higher studies, self-employment, and service/job placements, it offers valuable insights for institutions."


Once a student is passed out from a Institute or College, he/she is known as Alumni of the Institute. Alumni’s career growth plays important role in Institute’s ranking and other networking activities. In this project, career choices of alumni of two Universities will be analyzed with respect to their passing year as well as the course they completed. 
Dataset: Six .csv file (Alumni record of College A and College B) Higher Studies, Self Employed and Service/Job record 
•	College_A_HS ~ Higher Studies Record of College A
•	College_A_SE ~ Self Employed Record of College A
•	College_A_SJ ~ Service/Job Record of College A
•	College_B_HS ~ Higher Studies Record of College B
•	College_B_SE ~ Self-Employed Record of College B
•	College_B_SJ ~ Service/Job respectively Record of College B
Tasks to be performed
1.	Create new schema as alumni
2.	Import all .csv files into MySQL
3.	Run SQL command to see the structure of six tables
4.	Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python. (Submit the solution in jupyter notebook)

5.	Import all the records of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel. (submit Excel file for this question) 
6.	Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values. 
7.	Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.
8.	Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.
9.	Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.
10.	Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.
11.	Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V, Remove null values.
12.	Make procedure to use string function/s for converting record of Name, FatherName, MotherName into lower case for views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
13.	Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) into MS Excel and make pivot chart for location of Alumni. 
14.	Write a query to create procedure get_name_collegeA using the cursor to fetch names of all students from college A.
 
15.	Write a query to create procedure get_name_collegeB using the cursor to fetch names of all students from college B.
16.	Calculate the percentage of career choice of College A and College B Alumni
      -- (w.r.t Higher Studies, Self Employed and Service/Job)
      Note: Approximate percentages are considered for career choices
   	![image](https://github.com/TheRonnie/Alumni-Career-Insight-Analyzing-Career-Trajectories-of-University-Graduates/assets/98576788/c3faa577-630c-46e6-8b72-443ebed05acc)




# Pewlett-Hackard-Analysis

* Use the ERD(concetual diagram) created in this module as a reference
* Use SQL queries knowledge to create tables

## Overview 
Bobby's manager given us two more chanllenges after proven our SQL skills. 
He would like to know the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. 
After that, write a report to summarizes our analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

### completing tasks:

    1. Deliverable one
        - 1a. Write a query to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. 
        - 1b. Export the Retirement table as retirement_titles.csv
        - 2a. Write a query to create a Unique Titles table that contains the employee number, first and last name, and most recent title.
        - 2b. Export the Unique Titles table as unique_titles.csv
        - 3a. Write a query to create a Retiring Titles table that contains the number of titles filled by employees who are retiring
        - 3a. Export the Retirement table as retiring_titles.csv

    2. Deliverable two
        - 1a. Write a query to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965
        - 1b. Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv.
    3. Written report


## Results

* From the retirement_titles.csv we can see every eligible for retirement employee their past and current working experiences and timeframes.



* From the unique_titles.csv we can see every eligible for retirement employee their current working titles/expeirences.
* From the retiring_titles shows us the Senior Engineer and Senior Staff are the majority going to retire.
    Senior_Engineer/total_retirement_emp =  29414/90,398 = 32% 
    Senior_Staff/total_retirement_emp = 31%
    
    
* From mentorship_eligibilty.csv. we can see the overview of all the eligible mentorship employee informations (name, title, emp_no,job_tilte,from_date,to_date).
    we can also based on mentorship_eligibilty table, figure out there are 1549 total eligible employee for mentorship program. Senior staff(569) and senior engineer (529) are the most eligible group.
    
    ![image](https://user-images.githubusercontent.com/85265816/127754801-cf43a98f-e51d-4138-8edb-b2442fade899.png)

    
   <img width="514" alt="image" src="https://user-images.githubusercontent.com/85265816/127754808-7d3abbe9-7e54-409d-bc11-f424bcd068fb.png">



## Summary:

This report did reveal the chanlleging side to Pewlett Hackard in facing the "silver tsunami".
Pewlett Hackard Company will  have 90,398 vacant position and facing 30% retiring rate (90,398/300,024).



<img width="379" alt="image" src="https://user-images.githubusercontent.com/85265816/127754766-661a0ce7-52af-4990-adc6-9ddb7f13bf0e.png">

There will be a low eligible amount for mentorship program (1549). The good part is most of the mmentor eligile employees are senior staffa nd senior engineer.
They are the major force and sure will continue to mentor next generation employees and drive up the company revenue.

<img width="444" alt="image" src="https://user-images.githubusercontent.com/85265816/127754769-ed3a38fa-b3f0-4591-ac85-6cb376968a47.png">




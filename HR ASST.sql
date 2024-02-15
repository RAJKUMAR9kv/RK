use hr;
select * from employees;
/*1.	Write a query to get the first 5 characters of first name from employees table */
select left(first_name,5) as '5' from employees;
/* 2.	Write a query to get first name from employees table after removing white spaces
 from both side */
 select trim(first_name) as 'trim' from employees;
 /* 3.	Write a query to get the length of the employee names (first_name, last_name) 
 from employees table */
 select length(first_name) AS  'f', length(last_name) as 'l' from employees ;
/*  4.	Write a query to check if the first_name fields of the employees table 
contains numbers */
select first_name from employees where first_name  regexp '[0-9]';
/* 5.	Write a query to display the name (first_name, last_name) and salary for all employees whose 
salary is  in the range $15,000 through $25,000 */
select first_name,last_name,salary from employees where salary between 15000 and 25000;
/* 6.	Write a query to display the name (first_name, last_name) and 
department ID of all employees in departments 30 or 100 in ascending order */
select first_name,last_name,department_id from employees where department_id in (30,100) order by department_id;
/* 7.	Write a query to display the name (first_name, last_name) and salary for 
all employees whose salary is not in the range $25,000 through $45,000 and are in 
department 20 or 100.Write a query to display the name (first_name, last_name) 
and hire date for all employees who were hired in 1987 */
select * from employees where salary not between (25000 and 45000) and department_id in   (20,100)  ;
select * from employees where year(hire_date) =1987;
/* 8.	Write a query to display the first_name of all employees who have 
both "c" and "b" in their first name */
select first_name from employees where first_name like '%b%' AND first_name LIKE '%c%';
/* 9.	Write a query to display the last name, job, and salary for all employees whose job
 is that of a Programmer or a Shipping Clerk, and whose salary 
 is not equal to $3,500, $20,000, or $25,000 */
 select last_name,job_id,salary from employees where (job_id = 'it_prog' or job_id='SH_Clerk') ;
/* 10.	Write a query to display the last name of employees whose names have exactly 6 characters */
select last_name from employees where length(last_name)=6;
/* 11.	Write a query to get unique department ID from employee table */
select distinct department_id from employees;
/* 12.	Write a query to get all employee details from the employee table order by first name, descending */
select * from employees order by first_name desc;
/* 13.	Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 12.5% of salary) */
select first_name,last_name ,salary ,salary *12.5/100  'PF' from employees ;
/* 14.	Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary */
select * from employees order by salary ;
/* 15.	Write a query to get the total salaries payable to employees */
select sum(salary) as total from employees;
# 16.	Write a query to get the maximum and minimum salary from employees table
select max(salary),min(salary) from employees;
# 17.	Write a query to get the average salary and number of employees in the employees table
select avg(salary) avg1 ,count(employee_id) total_employees from employees;
# 18.	Write a query to get the number of employees and company working with the company
select distinct job_id ,count(job_id) total from employees group by job_id;
# 19.	Write a query to get the number of jobs available in the employees table
select count(distinct (job_id)) no_of_jobs from employees;
# 20.	Write a query get all first name from employees table in upper case
select upper(first_name) upper  from employees;
# 21.	Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position
select length(first_name) L,last_name FROM EMPLOYEES where last_name like '__c%' ;
# 22.	Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. 
# Give each column an appropriate label. Sort the results by the employees' first names
select first_name,length(first_name) from employees where first_name like 'm%' or first_name like 'j%'or  first_name like  'a%' order by first_name;
# 23.	Write a query to display the first name and salary for all employees. 
# Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY
 select first_name,lpad(salary,10,'$') salary from employees ;
/* 24.	Write a query to display the first eight characters of the employees' first names and indicates the amounts of their salaries with '$' sign.
 Each '$' sign signifies a thousand dollars. Sort the data in descending order of salary */
 select left(first_name,8) 8L,salary,repeat('$',salary/1000)  k from employees order by salary desc;
 # 25.	Write a query to display the employees with their code, first name, last name and hire date who hired either on 
 # seventh day of any month or seventh month in any year
 select first_name,last_name,hire_date from employees WHERE day(hire_date)=7 or month(hire_date) =7;
# 26.	Write a query to display the last name of employees having 'e' as the third character
select last_name from employees where last_name like '__e%' ;
# 27.	Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' 
# will be replaced by '999'
select replace(phone_number,'123','999') rplace  from employees ;
# 28.	Write a query to get the details of the employees where the length of the first name greater than or equal to 5
select * from employees where length(first_name) >=5 ;
# 29.	Write a query to append '@example.com' to email field
select email,concat(email,'@gmail.com') from employees;
# 30.	Write a query to extract the last 4 character of phone numbers
select right(phone_number,4) last4  from employees ;
# 31.	Write a query to get the last word of the street address
select right(street_address,1) last_word from locations ;
# 32.	Write a query to get the locations that have minimum street length
select *,street_address,min(length(street_address)) min_address from locations ;
# 33.	Write a query to display the first word from those job titles which contains more than one words
select substring(job_title,s) from jobs ;

 
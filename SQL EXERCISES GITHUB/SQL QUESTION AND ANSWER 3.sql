Use the Employee table to answer the following questions

-- 1. What is the total number of employees?
-- 2. What is the average salary of the employees? round it up to 2 decimal
-- 3. Which employee has the highest salary? fetch all
-- 4. How many employees have a job title containing the string "Manager"?
-- 5. What is the total salary expenditure?
-- 6. retrive all employees that report to 37270 with the first name alaster or job title with first word 'vp'
/* 7. class work: retrive all employees with job title assistant pro and salary 63996 or first name sayer
or las name crissil */
-- 8. retrieve the office with average salary greater than 80000
-- 10. retrieve no of employees in each job title?
-- 11. Which employees have  last name starting with "C"?


-- 1. What is the total number of employees?
select count(employee_id) as no_of_employee
from employees

-- 2. What is the average salary of the employees? round it up to 2 decimal
select round(avg(salary),2) as average_salary
from employees

-- 3. Which employee has the highest salary? fetch all
select *
from employees
where salary =(
select max(salary)
from employees)

-- filter some column
select employee_id, first_name
from employees
where salary =(
select max(salary)
from employees);

-- 4. How many employees have a job title containing the string "Manager"?
select count(*) as no_of_managers
from employees
where job_title like '%manager%'

-- 5. What is the total salary expenditure?
select sum(salary) as total_sal
from employees

-- 6. retrive all employees that report to 37270 with the first name alaster or job title with first word 'vp'
select * 
from employees
where reports_to = 37270 and first_name = 'alaster' or job_title like 'vp%'

/* 7. class work: retrive all employees  with job title assistant pro and salary 63996 or first name sayer
or las name crissil */
select * 
from employees
where job_title = 'assistant professor' and salary = 32176  or first_name = 'sayer' or last_name = 'crissil'

-- 8. retrieve the office with average salary greater than 80000
select office_id, avg(salary) as avg_sal
from employees
group by office_id
having avg_sal > 80000

-- 9. Which employee has the lowest salary?
select * from employees
where salary =
(select min(salary)
from employees)

-- 10. retrieve no of employees in each job title?
select count(*) as no_of_employees,  job_title, office_id
from employees
group by job_title, office_id

-- 11. Which employees have  last name starting with "C"?
select *
from employees 
where last_name like 'C%'




Use the customer table to answer the following questions

1. Fetch specific columns such as customerid, last_name, birth_date
2. Retrieve details of customer firstname in ascending order
3. Fetch all columns and rows from the customers table 
4. Retrieve all details of customers that lives MA
5. Retrieve 2 customers with highest points 
6. Find details of customer with point in descending order
7. Find the  unique values from the state column 
8. Fetch 5 customers with least points and find the second runnerup
9. Fetch the youngest customer
10. Find both the oldest and youngest customers from the customers table, 
indicate their respective statuses as 'Oldest' and 'Youngest' in the result set.
11. Find the difference in points between customers
12. Fetch the customer with least average points


1. Fetch specific columns such as customerid, last_name, birth_date
select customer_id, last_name, birth_date
from customers

2. Retrieve details of customer firstname in ascending order
select * from customers
order by first_name asc

3. Fetch all columns and rows from the customers table 
select * from customers

4. Retrieve all details of customers that lives MA
select * from customers
where state = 'ma'

5. Retrieve 2 customers with highest points 
select * from customers
order by points desc
limit 2

6. Find details of customer with point in descending order
select *
from customers
order by points desc

7. Find the  unique values from the state column 
select distinct state 
from customers

8. Fetch 5 customers with least points and find the second runnerup
select * from customers
order by points asc
limit 5, 2

9. Fetch the youngest customer
select *
from customers
where birth_date in
(
select  min(birth_date), max(birth_date)
from customers)

10. Find both the oldest and youngest customers from the customers table, 
indicate their respective statuses as 'Oldest' and 'Youngest' in the result set.

SELECT *, 'youngest' AS customer_status
FROM customers
WHERE birth_date = (
    SELECT MIN(birth_date) 
    FROM customers
)
UNION
SELECT *, 'Oldest' AS customer_status
FROM customers
WHERE birth_date = (
    SELECT MAX(birth_date)
    FROM customers
);

11. Find the difference in points between customers
SELECT c1.customer_id, 
c1.first_name, 
c1.last_name, 
c1.points, 
c2.points, 
c2.points - c1.points AS point_difference
FROM customers AS c1
JOIN customers AS c2 ON c2.customer_id = c1.customer_id + 1
ORDER BY c1.customer_id;

12. Fetch the customer with least average points
select customer_id, first_name, last_name, avg(points) as customer_avg_points
from customers
group by customer_id, first_name, last_name
order by customer_avg_points asc
limit 1
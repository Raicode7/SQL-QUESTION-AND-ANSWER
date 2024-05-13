Use the customer table to answer the following questions

1.Retrieve  customers who were born after January 1, 1990.
2.Find customers with the first name Ambur and who live in olando.
3.Find customers who live in city VA, and TX, or first_name babara and ines 
4.Find customers whose bonus is greater than 1000.
5.Retrieve details of customers with the last name 'Smith' or 'Johnson'.
6.Find customers who were born between January 1, 1980 and feb 07, 1985.
7.Retrieve customers who live in Arlington  and have a bonus greater than 200.
8.retieve customers who have a phone number starting with '804'.
9.Find customers who were born before January 1, 1970 or have a points greater than 2000.
10.Find customers who live in city but not in chicago.


select * from customers
1.Retrieve  customers who were born after January 1, 1990.
select * from customers
where birth_date > '1990-01-01'

2.Find customers with the first name Ambur and who live in olando.
select * from customers
where first_name like '%ambur%' and city ='olando'

3.Find customers who live in city VA, and TX, or state babara and ines 
select * from customers
where state in ('va', 'tx') or first_name in ('babara', 'ines')

4.Find customers whose bonus is greater than 1000.
select * from customers
where points > 1000

5.Retrieve details of customers with the last name 'Smith' or 'Johnson'.
select * from customers
where last_name = 'smith' or last_Name = 'johnson'

select * from customers
where last_name in('smith', 'johnson')

6.Find customers who were born between January 1, 1980 and feb 07, 1985.
select * from customers
where birth_date between '1980-03-28' and '1985-02-07'

7.Retrieve customers who live in Arlington  and have a bonus greater than 200.
select * from customers
where city = 'orlando' and points > 200

8.retieve customers who have a phone number starting with '804'.
select * from customers
where phone like '804%'

9.Find customers who were born before January 1, 1970 or have a points greater than 2000.
select * from customers
where birth_date < '1970-01-01' or  points > 2000

10.Find customers who live in city but not in chicago.
select * from customers
where not city = 'chicago'

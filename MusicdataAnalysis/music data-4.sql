SELECT customer_id, first_name, last_name, company, address, city, state, country, postal_code, phone, fax, email, support_rep_id
	FROM public.customer;



--Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most 
--money.write a query that returns one city that has the highest sum of invoice totals.Return both the city name and 
--sum of all invoice totals.

select * from invoice
select sum(total) as invoice_total,billing_city from invoice group by billing_city order by invoice_total desc;

--Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer.
--Write a query that returns the person who has spent the most money.
select customer.customer_id ,customer.first_name,customer.last_name,sum(invoice.total) as bestcustomer from customer  inner join invoice  on customer.customer_id= invoice.customer_id 
	group by customer.customer_id 
	order by bestcustomer desc
	limit 1;


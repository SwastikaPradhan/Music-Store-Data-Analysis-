SELECT invoice_id, customer_id, invoice_date, billing_address, billing_city, billing_state, billing_country, billing_postal, total
	FROM public.invoice;

select * from invoice;


Q2:which countries have the most invoices?
select count(*),billing_country from invoice group by billing_country order by count(*) desc;

Q3:what are the top 3 values of total invoice

select total from invoice
order by total desc
limit 3

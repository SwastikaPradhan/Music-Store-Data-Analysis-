SELECT employee_id, last_name, first_name, title, reports_to, levels, birthdate, hire_date, address, city, state, country, postal_code, phone, fax, email
	FROM public.employee;

select * from employee;
select first_name,last_name,title,levels from employee order by levels desc limit 1;
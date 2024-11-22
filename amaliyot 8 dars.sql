create table if not exists departments(
	id integer generated always as identity primary key,
	department_name varchar(150)
);

insert into departments(department_name) values
('Administration'),
('IT'),
('Design');

create table if not exists employees(
	id integer generated always as identity primary key,
	first_name varchar(150) not null,
	last_name varchar(150) not null,
	position varchar(150) not null,
	salary numeric(7, 2) not null,
	hire_date date default current_date,
	department_id integer references departments(id)
);

insert into employees(first_name, last_name, position, salary, department_id) values
('ALi', 'Karimov', 'Manager', 3000, 1),
('Nodira', 'Toirova', 'Developer', 2500, 2),
('Shoxruh', 'Abdullayev', 'ManagerDesigner', 2200, 3),
('Zarina', 'Abdullayeva', 'Specialist', 1800, 1),
('Jasur', 'Aliyev ', 'Developer ', 2400, 2);	


create table if not exists projects(
	id integer generated always as identity primary key,
	project_name varchar(150) not null,
	start_date date default current_date not null,
	end_date date,
	budget integer
);

insert into projects(project_name, end_date, budget) values
('New Website ', to_date('dd.mm.yyyy', '30.06.2023'), 50000),
('Mobile App', to_date('dd.mm.yyyy', '20.03.2023'), 30000),
('CRM System', to_date('dd.mm.yyyy', '20.06.2023'), 60000);


select first_name ||' '|| last_name as full_name from employees;

select * from employees order by salary DESC;

select * from employees where salary > 2500;

select * from employees order by salary desc limit 3;

select * from employees where salary in(2400, 3000);

select * from employees where salary between 2000 and 3000;

select * from employees where first_name like '%a%';

select * from projects where end_date is not null;




create table employee (
id serial primary key,
employee_name varchar (50) not null
);
create table salary(
id serial primary key,
monthly_salary int not null
);
select * from employee_salary;

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null,
foreign key (employee_id) references employee(id),
foreign key (salary_id) references salary(id)
);

insert into employee (employee_name) 
values ('QA1'), 
       ('QA2'),
       ('QA3'),
       ('QA4'),
       ('QA5'),
       ('QA6'),
       ('QA7'),
       ('QA8'),
       ('QA9'),
       ('QA10'),
       ('QA11'), 
       ('QA12'),
       ('QA13'),
       ('QA14'),
       ('QA15'),
       ('QA16'),
       ('QA17'),
       ('QA18'),
       ('QA19'),
       ('QA20'),
       ('QA21'), 
       ('QA22'),
       ('QA23'),
       ('QA24'),
       ('QA25'),
       ('QA26'),
       ('QA27'),
       ('QA28'),
       ('QA29'),
       ('QA30'),
       ('QA31'), 
       ('QA32'),
       ('QA33'),
       ('QA34'),
       ('QA35'),
       ('QA36'),
       ('QA37'),
       ('QA38'),
       ('QA39'),
       ('QA40'),
       ('QA41'), 
       ('QA42'),
       ('QA43'),
       ('QA44'),
       ('QA45'),
       ('QA46'),
       ('QA47'),
       ('QA48'),
       ('QA49'),
       ('QA50'),
       ('QA51'), 
       ('QA52'),
       ('QA53'),
       ('QA54'),
       ('QA55'),
       ('QA56'),
       ('QA57'),
       ('QA58'),
       ('QA59'),
       ('QA60'),
       ('QA61'), 
       ('QA62'),
       ('QA63'),
       ('QA64'),
       ('QA65'),
       ('QA66'),
       ('QA67'),
       ('QA68'),
       ('QA69'),
       ('QA70');
       select * from employee;
       
      insert into salary (monthly_salary)
      values (1000),
             (1100),
             (1200),
             (1300),
             (1400),
             (1500),
             (1600),
             (1700),
             (1800),
             (1900),
             (2000),
             (2100),
             (2200),
             (2300),
             (2400),
             (2500);
            select * from salary
            
         insert into employee_salary (employee_id, salary_id)
         values (1,1),
                (2,2),
                (3,3),
                (4,4),
                (5,5),
                (6,6),
                (8,8),
                (9,9),
                (10,10),
                (12,12),
                (13,13),
                (15,15),
                (16,16),
                (17,1),
                (18,2),
                (21,5),
                (22,6),
                (23,7),
                (25,9),
                (26,10),
                (27,11),
                (28,12),
                (32,8),
                (29,13),
                (30,14),
                (31,15),
                (24,16),
                (33,9),
                (34,10),
                (35,11),
                (39,12),
                (36,13),
                (37,14),
                (38,16),
                (40,1);
               
               insert into employee_salary (employee_id,salary_id)
               values (90,17);
               
               
                select  employee_name, monthly_salary from employee_salary
                join employee on employee_id = employee.id
                join salary on salary_id = salary.id 
               order by monthly_salary ASC;
              
create table  roles (
id serial primary key,
role_name int not null unique);

select * from roles;

alter table roles alter column role_name type varchar(30);

insert into roles (role_name) 
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;

create table roles_employee (
id serial primary key,
employee_id int not null,
role_id int not null,
foreign key (employee_id) references employee(id),
foreign key (role_id) references roles(id)
);
select * from roles_employee;
insert into roles_employee (employee_id, role_id)
values (1,1),
       (2,2),
       (3,3),
       (4,4),
       (5,5),
       (6,6),
       (7,7),
       (8,8),
       (9,9),
       (11,10),
       (13,8),
       (14,7),
       (15,6),
       (16,5),
       (17,4),
       (18,3),
       (19,2), 
       (20,1),
       (21,11),
       (22,12),
       (23,13),
       (24,14),
       (25,15),
       (26,17),
       (27,18),
       (28,16),
       (29,19),
       (30,20),
       (31,19), 
       (32,18),
       (33,17),
       (34,16),
       (35,15),
       (36,14),
       (37,13),
       (38,12),
       (39,11),
       (30,10);
       select employee_name, role_name from roles_employee
       join employee on employee_id = employee.id 
       join roles on role_id = roles.id;
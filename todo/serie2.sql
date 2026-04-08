-- Bon travail, juste quelques modifs à faire
3.1
select d.id as department_ID, d.name as department_NAME,e.last_name as employee_LASTNAME
from department d
join employee e
on e.department_id = d.id

select e.last_name
from employee e
join department d
on e.department_id=d.id
where d.name='distribution'
-- Attention à la casse : préférer : WHERE LOWER(d.name) = 'distribution' ou WHERE d.name ILIKE 'distribution'  pour PostgreSQL

3.2
select e2.last_name,e2.salary, e1.last_name,e1.salary
from employee e1
join employee e2
on e1.id = e2.superior_id
where e1.salary<e2.salary

3.3
SELECT last_name,title
FROM employee
WHERE title
IN (SELECT title FROM employee WHERE last_name LIKE 'amartakaldire')

select last_name,salary,department_id
from employee 
WHERE salary>
any (SELECT salary FROM employee WHERE department_id=31)
order by department_id,salary

select last_name,salary,department_id
from employee 
WHERE salary>
all (SELECT salary FROM employee WHERE department_id=31)
order by department_id,salary

select last_name,title
from employee
where department_id=31 and title
IN (SELECT title FROM employee WHERE department_id=32)

select last_name,title
from employee
where department_id=31 and title
not IN (SELECT title FROM employee WHERE department_id=32)

select last_name,title,salary
from employee
where title
in (select title from employee where last_name='fairent')
and salary
in (select salary from employee where last_name='fairent')

3.4 3.5 3.6
select d.id,name,last_name
from employee e
right join department d 
on d.id = e.department_id

SELECT AVG(salary)
FROM employee
WHERE title LIKE 'secrétaire'

SELECT title,count(employee)
FROM employee
GROUP BY title

select avg(salary)as "salaire moyen" ,sum(salary)as "somme des salaires",department_id
from employee
group by department_id
order by department_id
-- La question demande le regroupement par région pas par département

3.7
select department_id, count(*)
from employee
group by department_id
having count(*)>=3

select substring(last_name,1,1) as initiale, count(*)
from employee
group by initiale
having count(*) >=3

select max(salary)as maxsalary,min(salary)as minsalary,(max(salary)-min(salary))as ecart
from employee

select count(distinct title)
from employee

select title, count(*)
from employee
group by title

select e.department_id, d.name, count(*)
from employee e
join department d
on e.department_id=d.id
group by department_id, name

select title,avg(salary)
from employee
group by title
having avg(salary)>
(SELECT avg(salary) FROM employee WHERE title='représentant')

select count(salary), count(commission_rate)
from employee




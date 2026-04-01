-- Compléter ce fichier avec vos réponses.
-- glhf!

3.3.1
SELECT * FROM department as d

3.3.2
select last_name, hiring_date, superior_id, department_id, salary
from employee

3.2
select distinct title
from employee

3.3
select * from employee where salary>25000

select last_name,department_id,id 
from employee 
where title = 'secrétaire'

select last_name,department_id
from employee
where department_id>40

3.4
select last_name,first_name
from employee
where last_name<first_name

select last_name, salary, department_id
from employee
where title='représentant' and department_id=35 and salary>20000

select last_name, title, salary
from employee
where title='représentant' or title = 'président'

select last_name, title, department_id, salary
from employee
where department_id=34 and title='représentant' or title='secrétaire'

select last_name,title,department_id,salary
from employee 
where title='représentant' or title='secrétaire' and department_id=34

select last_name, salary
from employee
where salary<=30000 and salary >=20000

3.5
select last_name
from employee
where last_name like 'h%'

select last_name
from employee
where last_name like '%n'

select last_name
from employee
where last_name like '__u%'

3.6
select salary, last_name
from employee
where department_id=41
order by salary desc

select title,salary,last_name
from employee
order by title, salary desc

3.7
select commission_rate,salary,last_name
from employee e order by commission_rate

select last_name,salary,commission_rate,title
from employee
where commission_rate is null

select last_name, salary,commission_rate,title
from employee
where commission_rate is not null

select last_name,salary,commission_rate,title
from employee
where commission_rate is not null and commission_rate<15

select last_name,salary,commission_rate,title
from employee
where commission_rate is not null and commission_rate>15


3.8
select last_name,salary,commission_rate,(salary*commission_rate)as commission
from employee
where commission_rate is not null

select last_name,salary,commission_rate,(salary*commission_rate)as commission
from employee
where commission_rate is not null
order by commission

3.9
select concat (last_name,' ',first_name) as nom_prenom
from employee

3.10
select substring(last_name,1,5)
from employee

select last_name, position('r' in last_name)
from employee

select last_name, upper(last_name), lower(last_name)
from employee
where last_name='vrante'

select last_name, length(last_name)
from employee


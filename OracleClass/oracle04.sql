desc employees;

select employee_id, first_name, last_name from employees
where department_id = 50;
select min(salary) from employees;
select max(salary) from employees;
select avg(salary) from employees;

-- ����ŷ�� ����
select employee_id, first_name, last_name, salary from employees
where salary = (
    select max(salary) from employees
);


select employee_id, first_name, last_name, salary from employees
where 
salary = (select max(salary) from employees) 
or 
salary = (select min(salary) from employees);

select distinct department_id from employees;
-- distinct : �ߺ��� ������ ������

select employee_id, first_name, last_name, department_id
from employees
where department_id in (10, 20, 30);

-- ����1. employees ���̺��� 
-- salary�� 2000 �̻� 3000 ������ �������� ��� ����
select * from employees
where salary >= 2000 and salary <= 3000;
select * from employees
where salary between 2000 and 3000;

-- ����2. manager_id�� 100�� �������� ����
select * from employees
where manager_id = 100;

-- ����3. 2004�� ������ �Ի��� �������� ����
select * from employees
where hire_date < '2004-01-01';

-- ����4. job_id�� IT_PROG �̰ų� HR_REP�� �������� ����
select * from employees
where job_id = 'IT_PROG' or job_id = 'HR_REP';
select * from employees
where job_id in ('IT_PROG', 'HR_REP');

-- ����5. Susan Mavris�� manager_id�� �˻�
select manager_id from employees
where first_name = 'Susan' and last_name = 'Mavris';

-- ����6. Susan Mavris�� �Ŵ����� ���� �Ŵ����� ���� ��� ������ ����
select * from employees
where manager_id = (
select manager_id from employees
where first_name = 'Susan' and last_name = 'Mavris'
);

-- ����7. ��� ����(salary)���� ���� �޴� �������� ����
select * from employees
where salary > (
    select avg(salary) from employees
);
















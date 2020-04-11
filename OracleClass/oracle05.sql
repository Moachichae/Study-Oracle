-- select �÷��� ����
select employee_id as ���, last_name �̸� from employees;

create table emp1(
    emp_id number,
    first_name varchar2(100),
    last_name varchar2(100),
    salary number
);

-- insert-select ����
insert into emp1
select employee_id, first_name, last_name, salary
from employees
where salary > 10000;

-- �Լ�
-- count() : ���� ���� ���
select count(*) cnt from employees;
select count(employee_id) from employees;
select count(manager_id) from employees;

-- lower() : �Էµ� ���ڸ� �ҹ��ڷ� ��ȯ
select first_name, last_name from employees
where lower(first_name) like 'a%';

-- upper() : �Էµ� ���ڸ� �빮�ڷ� ��ȯ
select last_name from employees
where upper(last_name) like 'A%';

-- nvl(�÷�, ġȯ��) : �÷��� null ���� ġȯ������ ��ȯ
select first_name, last_name, commission_pct from employees
where nvl(commission_pct, 0) < 0.2;

select first_name, last_name, commission_pct from employees
where commission_pct < 0.2 
    or commission_pct is null;








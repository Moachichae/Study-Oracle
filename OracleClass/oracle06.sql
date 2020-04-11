-- JOIN:
-- �� �� �̻��� ���̺��� �����͵��� �����ؼ� �˻��ϴ� ���
-- Self-Join:
-- �ϳ��� ���̺��� �����͵��� �����ؼ� �˻��ϴ� ���

-- ���� ���̺��� ���, �̸�, �μ���ȣ�� �˻�
select employee_id, first_name, last_name, department_id
from employees;

-- �μ� ���̺��� �μ���ȣ, �μ��̸��� �˻�
select department_id, department_name
from departments;

-- ������ �μ� ���̺��� ���, �̸�, �μ���ȣ, �μ��̸��� �˻�
select e.employee_id, e.last_name,
    e.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id;

-- ANSI JOIN
select e.employee_id, e.last_name,
    e.department_id, d.department_name
from employees e JOIN departments d
ON e.department_id = d.department_id;

-- �μ���ȣ�� null�� ������ �����ؼ� �˻�
select e.employee_id, e.last_name,
    e.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id(+);

-- ���, ��å ���̺��� ���, �̸�, ��å ���̵�, ��å �̸��� �˻�
select e.employee_id, e.last_name,
    e.job_id, j.job_title
from employees e, jobs j
where e.job_id = j.job_id;

select e.employee_id, e.last_name,
    e.job_id, j.job_title
from employees e join jobs j
on e.job_id = j.job_id;

-- ���� �÷� : rownum
select rownum r, employee_id, last_name from employees;

select a.r, a.employee_id, a.last_name
from (
    select rownum r, employee_id, last_name from employees 
) a
where a.r >= 11 and a.r <= 20;



























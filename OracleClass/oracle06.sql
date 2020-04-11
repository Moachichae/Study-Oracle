-- JOIN:
-- 두 개 이상의 테이블에서 데이터들을 조합해서 검색하는 방법
-- Self-Join:
-- 하나의 테이블에서 데이터들을 조합해서 검색하는 방법

-- 직원 테이블에서 사번, 이름, 부서번호를 검색
select employee_id, first_name, last_name, department_id
from employees;

-- 부서 테이블에서 부서번호, 부서이름을 검색
select department_id, department_name
from departments;

-- 직원과 부서 테이블에서 사번, 이름, 부서번호, 부서이름을 검색
select e.employee_id, e.last_name,
    e.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id;

-- ANSI JOIN
select e.employee_id, e.last_name,
    e.department_id, d.department_name
from employees e JOIN departments d
ON e.department_id = d.department_id;

-- 부서번호가 null인 직원도 포함해서 검색
select e.employee_id, e.last_name,
    e.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id(+);

-- 사원, 직책 테이블에서 사번, 이름, 직책 아이디, 직책 이름을 검색
select e.employee_id, e.last_name,
    e.job_id, j.job_title
from employees e, jobs j
where e.job_id = j.job_id;

select e.employee_id, e.last_name,
    e.job_id, j.job_title
from employees e join jobs j
on e.job_id = j.job_id;

-- 유사 컬럼 : rownum
select rownum r, employee_id, last_name from employees;

select a.r, a.employee_id, a.last_name
from (
    select rownum r, employee_id, last_name from employees 
) a
where a.r >= 11 and a.r <= 20;



























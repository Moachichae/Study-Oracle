desc employees;

select employee_id, first_name, last_name from employees
where department_id = 50;
select min(salary) from employees;
select max(salary) from employees;
select avg(salary) from employees;

-- 연봉킹의 정보
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
-- distinct : 중복을 제거한 데이터

select employee_id, first_name, last_name, department_id
from employees
where department_id in (10, 20, 30);

-- 연습1. employees 테이블에서 
-- salary가 2000 이상 3000 이하인 직원들의 모든 정보
select * from employees
where salary >= 2000 and salary <= 3000;
select * from employees
where salary between 2000 and 3000;

-- 연습2. manager_id가 100인 직원들의 정보
select * from employees
where manager_id = 100;

-- 연습3. 2004년 이전에 입사한 직원들의 정보
select * from employees
where hire_date < '2004-01-01';

-- 연습4. job_id가 IT_PROG 이거나 HR_REP인 직원들의 정보
select * from employees
where job_id = 'IT_PROG' or job_id = 'HR_REP';
select * from employees
where job_id in ('IT_PROG', 'HR_REP');

-- 연습5. Susan Mavris의 manager_id를 검색
select manager_id from employees
where first_name = 'Susan' and last_name = 'Mavris';

-- 연습6. Susan Mavris의 매니저와 같은 매니저를 갖는 모든 직원의 정보
select * from employees
where manager_id = (
select manager_id from employees
where first_name = 'Susan' and last_name = 'Mavris'
);

-- 연습7. 평균 연봉(salary)보다 많이 받는 직원들의 정보
select * from employees
where salary > (
    select avg(salary) from employees
);
















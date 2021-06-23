-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
from employees
Left join salaries
on employees.emp_no = salaries.emp_no
order by emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.
select employees.emp_no, 
employees.last_name,
employees.first_name,
employees.hire_date
from employees
where DATE_PART('year',hire_date) = 1986
order by emp_no;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
left join employees 
on dept_manager.emp_no = employees.emp_no
order by emp_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, 
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no 

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select employees.last_name,
employees.first_name,
employees.sex
from employees
where first_name = 'Hercules' AND last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- all should be in d007 - sales (departments table)
select employees.emp_no, 
employees.last_name,
employees.first_name,
dept_emp.dept_no
from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
join departments
on departments.dept_no=dept_emp.dept_no
where departments.dept_name ='Sales'
order by emp_no;


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, 
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
join departments
on departments.dept_no=dept_emp.dept_no
where departments.dept_name in ('Sales','Development')
order by emp_no;

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as freq_count
from employees
group by last_name
order by freq_count desc;

--search myself - 499942
select employees.emp_no, 
employees.last_name,
employees.first_name
from employees
where employees.emp_no = 499942;

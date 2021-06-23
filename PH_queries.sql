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


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
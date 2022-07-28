/*create table Employee(
	 Employee_ID varchar(255) primary key,
	 First_Name varchar(255) not null,
	 Last_Name varchar(255) not null,
	 Email varchar(255) not null,
	 Phone_Number varchar(255) not null,
	 Hire_Date date not null,
	 Job_ID varchar(255) foreign key references Jobs(Job_ID),
	 Salary int not null,
	 Commission_PCT varchar(255) not null,
	 Manager_ID varchar(255) foreign key references Employee(Employee_ID),
	 Department_ID varchar(255) foreign key references Departments(Department_ID)
);*/

/*create table Departments(
	Department_ID varchar(255) primary key,
	Department_Name varchar(255) not null,
	Manager_ID varchar(255) not null,
	Location_ID varchar(255) not null
);*/

/*create table Jobs(
	Job_ID varchar(255) primary key,
	Job_Title varchar(255) not null,
	Min_Salary int not null,
	Max_Salary int not null
);*/


/*insert into Departments
values
('D1','Computer', 'M1', 'L1'),
('D2','Mechanichle', 'M2', 'L2'),
('D3','IT', 'M3', 'L3'),
('D4','chemical', 'M4', 'L4'),
('D5','nano','M5', 'L5'),
('D6','EC', 'M6', 'L6');*/

/*insert into Jobs
values
('J1','Developer',15000,35000),
('J2','Mechanist',10000,36000),
('J3','QA', 20000,33000),
('J4','Senior emp', 23000,40000),
('J5','Teacher',16000,36000),
('J6','Senior emp', 17000,37000);*/

/*insert into Employee
values
('E1','Virat','Kohli','v@gmail.com',123456789,'2019/07/08','J1',30000, 5000, 'E13','D1'),
('E2','MahendraSingh','Dhoni','d@gmail.com',123546855,'2019/06/08','J1',35000, 5000, 'E13','D1'),
('E3','Harbhajan','Singh','h@gmail.com',123456789,'2018/07/08','J2',15000, 5000, 'E14','D2'),
('E4','Hardik','Pandya','h@gmail.com',123456789,'2017/07/08','J2',36000, 5000, 'E14','D2'),
('E5','Krunal','Pandya','k@gmail.com',123456789,'2018/07/08','J3',30000, 5000, 'E15','D3'),
('E6','Rishabh','Pant','r@gmail.com',123456789,'2019/06/08','J3',33000, 5000, 'E15','D3'),
('E7','Bhuvneshwar','Kumar','b@gmail.com',123456789,'2019/09/08','J4',30000, 5000, 'E16','D4'),
('E8','Rohit','Sharma','r@gmail.com',123456789,'2020/07/08','J4',40000, 5000, 'E16','D4'),
('E9','Jasprit','Bumrah','j@gmail.com',123456789,'2015/03/08','J5',30000, 5000, 'E17','D5'),
('E10','KL','Rahul','k@gmail.com',123456789,'2019/10/08','J5',36000, 5000, 'E17','D5'),
('E11','Ravindra','Jadeja','r@gmail.com',123456789,'2021/07/08','J6',30000, 5000, 'E18','D6'),
('E12','Jonas','Black','u@gmail.com',123456789,'2019/05/08','J6',37000, 5000, 'E18','D6'),
('E13','Dustin','Mac Groove Hill','d@gmail.com',123456789,'2019/07/08','J8',37000, 5000, 'E19','D1'),
('E14','Mike','Healer','m@gmail.com',123456789,'2020/07/08','J8',37000, 5000, 'E19','D2'),
('E15','John','Snow','j@gmail.com',123456789,'2019/07/08','J8',37000, 5000, 'E19','D3'),
('E16','Sansa','Stark','s@gmail.com',123456789,'2019/02/08','J8',37000, 5000, 'E19','D4'),
('E17','Tony','Stark','t@gmail.com',123456789,'2019/03/08','J8',37000, 5000, 'E19','D5'),
('E18','arya','Stark','a@gmail.com',123456789,'2019/07/08','J8',37000, 5000, 'E19','D6'),
('E19','Sachin','Tendulkar','s@gmail.com',123456789,'2019/07/08','J8',37000, 5000, 'E19','D6');*/


---------------------------------------------------------------
--3. Write a query to determine the structure of the table 'DEPARTMENTS'
sp_help Employee;

SELECT TABLE_NAME, COLUMN_NAME  FROM information_schema.columns   
WHERE table_name = 'Employee';

SELECT * FROM information_schema.columns   
WHERE table_name = 'Employee';


--4. Write a query to determine the unique Job IDs from the EMPLOYEES table.
select distinct Job_ID 
from Employee;


--5. Write a query to display the employee number, lastname, salary (oldsalary), salary increased by 15.5% name it has NewSalary and subtract the (NewSalary from OldSalary) name the column as Increment.
select Employee_ID, Last_Name, Salary as OldSalary, (salary*15.5)/100+Salary as NewSalary, ((salary*15.5)/100+Salary - Salary)as Increment 
from Employee;


--6. Write a query to display the minimum, maximum, sum and average salary for each job type.
select min(Salary) 'min-salary', max(Salary) 'max(e.salary)', sum(Salary) 'sumOfSalary', avg(Salary) 'avgSalary', j.Job_Title JobType 
from Employee e 
inner join Jobs j
on e.Job_ID = j.Job_ID
group by j.Job_Title;


--7. The HR department needs to find the names and hire dates of all employees who were hired before their managers, along with their managers’ names and hire dates.
select e.First_Name EmpName, e.Hire_Date EmpHireDate, m.First_Name ManagerName, m.Hire_Date ManagerHireDate from Employee e, Employee m
where e.Manager_ID  = m.Employee_ID and e.Hire_Date<m.Hire_Date;


--8. Create a report for the HR department that displays employee last names, department numbers, and all the employees who work in the same department as a given employee.
create view report as
select e.First_Name, e.Department_ID, m.First_Name Colleuges from Employee e, Employee m
where e.Department_ID = m.Department_ID and e.Employee_ID != m.Employee_ID;


--9. Find the highest, lowest, sum, and average salary of all employees. Label the columns Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest whole number.
select round(min(Salary), 0) 'Minimum', round(max(Salary), 0) 'Maximum', round(sum(Salary), 0) 'Sum', round(avg(Salary),0) 'Average' 
from Employee e


--10. Create a report that displays list of employees whose salary is more than the salary of any employee from department 60
create view report as
select First_Name, Last_Name 
from Employee
where Salary > (select max(salary) from Employee where Department_ID = 'D5');


--11. Create a report that displays last name and salary of every employee who reports to King(Use any manager name instead of King).
create view report as
select Last_Name, Salary from Employee
where Manager_ID = (select Employee_ID from Employee where First_Name = 'Mike');


--12. Write a query to display the list of department IDs for departments that do not contain the job Id ST_CLERK(Add this job ST_CLERK to Job table). Use SET Operator for this query
select Department_ID from Employee
except
select Department_ID from Employee e
inner join Jobs j
on e.Job_ID = j.Job_ID
where j.Job_Title = ' ST_CLERK';


--13. Write a query to display the list of employees who work in department 50 and 80. Show employee Id, job Id and department Id by using set operators. - Add 50 and 80 department Id to department table
select Employee_ID, Job_ID,  Department_ID from Employee
except
select Employee_ID, Job_ID,  Department_ID from Employee where Department_ID != '50' and Department_ID != '80';

-- 01/50 Days SQL challenge

-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert records for three departments
INSERT INTO employees (name, department, salary) VALUES 
('John Doe', 'Engineering', 63000),
('Jane Smith', 'Engineering', 55000),
('Michael Johnson', 'Engineering', 64000),
('Emily Davis', 'Marketing', 58000),
('Chris Brown', 'Marketing', 56000),
('Emma Wilson', 'Marketing', 59000),
('Alex Lee', 'Sales', 58000),
('Sarah Adams', 'Sales', 58000),
('Ryan Clark', 'Sales', 61000);


-- Write the SQL query to find the second highest salary

-- My Solution

select * from employees
order by salary desc limit 1 OFFSET 1
;

-- ADDED new records
INSERT INTO employees
VALUES
(11, 'zara', 'it', 63000)


-- My Another Solution Using Windows Function
select * from
(select *,rank() over(order by salary desc) rn from employees)
as subquery
where rn=2


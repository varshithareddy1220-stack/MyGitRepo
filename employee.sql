SELECT
   e.employee_id,
   e.employee_name,
   COUNT(l.leave_id) AS total_leaves
FROM
   employees e
JOIN
   leaves l
   ON e.employee_id = l.employee_id
GROUP BY
   e.employee_id, e.employee_name
ORDER BY
   total_leaves DESC;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

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

In SQL, a common error arises when using aggregate functions (like COUNT, SUM, AVG) without a GROUP BY clause when you intend to perform calculations on grouped data.  For example, if you want the average salary for each department, omitting the GROUP BY clause will produce an average salary for the entire company, not by department.

```sql
-- Incorrect - averages salary across all departments
SELECT department, AVG(salary) AS average_salary
FROM employees;

-- Correct - averages salary for each department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
```
To solve this, you must use the `GROUP BY` clause to group the data appropriately. The `GROUP BY` clause specifies which columns should be used to group the rows before applying the aggregate function.   Make sure the columns you select in the `SELECT` statement are either included in the `GROUP BY` clause or are aggregate functions.

```sql
-- Correctly uses GROUP BY to get average salary by department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
```

This corrected version groups the employees by department before calculating the average salary, providing accurate results for each department.
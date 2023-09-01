SELECT empno
FROM salaries
WHERE salary = (SELECT MAX(salary) FROM salaries);

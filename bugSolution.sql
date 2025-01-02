The solution is to modify the subquery to ensure that it always returns a single row.  This can be done by using aggregate functions (such as MIN(), MAX(), AVG(), etc.) to combine multiple rows into one, or by adding a LIMIT clause to restrict the number of returned rows to one.  Additionally, check for any potential logic flaws in the WHERE clause of the subquery that might cause it to return multiple rows.

Here's the corrected query:

```sql
SELECT 
    column1, 
    (SELECT MIN(column2) FROM table2 WHERE table2.id = table1.id) AS column2
FROM 
table1; 
```

This revised query uses the MIN() aggregate function to select a single value from the subquery, eliminating the multiple-row error.
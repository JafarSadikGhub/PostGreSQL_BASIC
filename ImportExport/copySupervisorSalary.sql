--this csv file has 3 columns, but our table has 5 columns.
--So, we will write:
COPY supervisor_salaries(town, supervisor, salary)
FROM 'D:\practicalSQL\supervisor_salaries.csv' WITH(FORMAT CSV, HEADER);
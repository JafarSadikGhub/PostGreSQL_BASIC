CREATE TEMPORARY TABLE supervisor_salaries_temp(LIKE supervisor_salaries);

COPY supervisor_salaries_temp(town, supervisor, salary) 
FROM 'D:\PRACTICALSQL\supervisor_salaries.csv'
WITH(FORMAT CSV, HEADER);

INSERT INTO supervisor_salaries(town, county, supervisor, salary)
SELECT town, 'Some county', supervisor, salary
FROM supervisor_salaries_temp;

DROP TABLE supervisor_salaries_temp;
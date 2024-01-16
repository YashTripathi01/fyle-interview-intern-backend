-- Write query to get number of assignments for each state

SELECT state, count(id) AS assignments_count
FROM assignments 
GROUP BY state;

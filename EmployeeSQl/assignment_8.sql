--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select "Data_Employees".last_name, COUNT ("Data_Employees".last_name) AS "name_count"
FROM "Data_Employees" 
GROUP BY "last_name"
ORDER BY "name_count" DESC;
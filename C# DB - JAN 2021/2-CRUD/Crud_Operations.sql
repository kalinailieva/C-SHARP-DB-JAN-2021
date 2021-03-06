--2
Select * FROM Departments

--3
Select [Name] FROM Departments

--4
Select FirstName, LastName, Salary FROM Employees

--5
Select FirstName, MiddleName, LastName FROM Employees

--6
SELECT FirstName + '.'+ LastName + '@softuni.bg' AS [Full Email Address]
FROM Employees

--7
SELECT DISTINCT Salary FROM Employees

--8
SELECT * FROM Employees
	WHERE JobTitle = 'Sales Representative'

--9
SELECT FirstName, LastName, JobTitle FROM Employees
	WHERE Salary BETWEEN 20000 AND 30000

--10
SELECT FirstName + ' ' + MiddleName + ' ' + LastName  AS FullName
FROM Employees
	WHERE Salary IN (25000, 14000, 12500, 23600)

--11
SELECT FirstName,LastName
	FROM Employees
		WHERE ManagerID IS NULL

--12
SELECT FirstName,LastName, Salary
	FROM Employees
		WHERE Salary > 50000
			ORDER BY Salary DESC

--13
SELECT TOP (5) FirstName,LastName
	FROM Employees		
			ORDER BY Salary DESC

--14
SELECT FirstName,LastName
	FROM Employees		
			WHERE NOT DepartmentID = 4

--15
SELECT * FROM Employees		
ORDER BY Salary DESC, FirstName, LastName DESC, MiddleName

--16
CREATE VIEW V_EmployeesSalaries AS
SELECT FirstName, LastName,Salary
	FROM Employees

SELECT * FROM V_EmployeesSalaries 

--17
UPDATE Employees
	SET MiddleName = ''
		WHERE MiddleName IS NULL

CREATE VIEW V_EmployeeNameJobTitle AS
	SELECT FirstName +' '+MiddleName + ' ' + LastName AS [Full Name], JobTitle
	FROM Employees

	SELECT * FROM V_EmployeeNameJobTitle

DROP VIEW V_EmployeeNameJobTitle

--18
SELECT DISTINCT JobTitle FROM Employees

--19
SELECT TOP(10) * FROM Projects	
	WHERE StartDate IS NOT NULL
		ORDER BY StartDate, [Name]

--20
SELECT TOP(7) FirstName, LastName, HireDate
	FROM Employees
	ORDER BY HireDate DESC

--21
UPDATE Employees
SET Salary *=1.12
	WHERE DepartmentID IN (1, 2, 4, 11)

	SELECT Salary FROM Employees

--Part II � Queries for Geography Database
--22
USE Geography

SELECT PeakName FROM Peaks
	ORDER BY PeakName

--23
SELECT TOP(30) CountryName, [Population]
	FROM Countries
	WHERE ContinentCode = 'EU'
	ORDER BY [Population] DESC

--24
SELECT CountryName, CountryCode,
	CASE WHEN CurrencyCode = 'EUR' THEN 'Euro'
		WHEN NOT CurrencyCode = 'EUR' THEN 'Not Euro'
		END AS Currency --name of the require new column
		 FROM Countries
		 ORDER BY CountryName

		 
--Part III � Queries for Diablo Database
--25
USE Diablo
SELECT [Name] FROM Characters
	ORDER BY [Name]










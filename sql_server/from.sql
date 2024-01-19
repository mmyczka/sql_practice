USE Northwind
GO

WITH 
ex_i AS (
-- Retrieve the CustomerID and ContactName from the Customers table.
SELECT 1 AS one, 'two' AS two -- Replace this with your solution.
),

ex_ii AS ( 
-- Retrieve:
-- - the CustomerID and ContactName from the Customers table who have placed orders, 
-- - along with the corresponding OrderID and OrderDate.
SELECT 1 AS one, 'two' AS two, 3 AS three, 4 AS four
),

ex_iii AS ( 
-- Retrieve:
-- - all CustomerID and ContactName from the Customers table,
-- - the corresponding OrderID and OrderDate if available.
SELECT 1 AS one, 'two' AS two, 3 AS three, 4 AS four
),


ex_iv AS ( 
-- Retrieve:
-- - all CustomerID and ContactName from the Customers table,
-- - corresponding OrderID and OrderDate if available,
-- - FirstName and LastName of an Employee if available.
SELECT 1 AS one, 'two' AS two, 3 AS three, 4 AS four, 'five' AS five, 'six' AS six
),

ex_v AS ( 
-- Retrieve:
-- - CustomerID, ContactName, and Country from the Customers table, 
-- - corresponding ProductName,
-- - corresponding Quantity.
SELECT 1 AS one, 'two' AS two, 'three' AS three, 'four' AS four, 5 AS five
),

ex_vi AS ( 
-- Generate a Cartesian product from the Numbers (1,2,3) and Letters (A,B,C)
SELECT 1 AS One, 'two' AS Two
),

ex_vii AS ( 
-- Command
SELECT 1 AS one
),

ex_viii AS ( 
-- Command
SELECT 1 AS one
),

ex_ix AS ( 
-- Command
SELECT 1 AS one
),

ex_x AS ( 
-- Command
SELECT 1 AS one
),

ex_xi AS ( 
-- Command
SELECT 1 AS one
),

ex_xii AS ( 
-- Command
SELECT 1 AS one
),


ex_i_answer AS (
SELECT CustomerID, ContactName
FROM Customers
),

ex_ii_answer AS (
SELECT C.CustomerID, C.ContactName, O.OrderID, O.OrderDate
FROM Customers C
INNER JOIN Orders O ON C.CustomerID = O.CustomerID
),

ex_iii_answer AS (
SELECT C.CustomerID, C.ContactName, O.OrderID, O.OrderDate
FROM Customers C
	LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
),

ex_iv_answer AS(
SELECT C.CustomerID, C.ContactName, O.OrderID, O.OrderDate, E.FirstName, E.LastName
FROM Customers C
	LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
	LEFT JOIN Employees E ON O.EmployeeID = E.EmployeeID
),

ex_v_answer AS (
SELECT C.CustomerID, C.ContactName, C.Country, P.ProductName, OD.Quantity
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
JOIN Products P ON OD.ProductID = P.ProductID
),

ex_vi_answer AS (
SELECT * FROM
  (VALUES (1), (2), (3)) AS Numbers (Number)
CROSS JOIN
  (VALUES ('A'), ('B'), ('C')) AS Letters (Letter)
),

ex_vii_answer AS (
SELECT 2 AS answer
),

ex_viii_answer AS (
SELECT 2 AS answer
),

ex_ix_answer AS (
SELECT 2 AS answer
),

ex_x_answer AS (
SELECT 2 AS answer
),

ex_xi_answer AS (
SELECT 2 AS answer
),

ex_xii_answer AS (
SELECT 2 AS answer
),


test AS (
SELECT 'i' as ex,
    CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_i EXCEPT SELECT * FROM ex_i_answer)
		UNION ALL
		(SELECT * FROM ex_i_answer EXCEPT SELECT * FROM ex_i))
		AND ((SELECT COUNT(*) FROM ex_i) > 0)
		AND ((SELECT COUNT(*) FROM ex_i) = (SELECT COUNT(*) FROM ex_i_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'ii' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_ii EXCEPT SELECT * FROM ex_ii_answer)
		UNION ALL
		(SELECT * FROM ex_ii_answer EXCEPT SELECT * FROM ex_ii))
		AND ((SELECT COUNT(*) FROM ex_ii) > 0)
		AND ((SELECT COUNT(*) FROM ex_ii) = (SELECT COUNT(*) FROM ex_ii_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'iii' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_iii EXCEPT SELECT * FROM ex_iii_answer)
		UNION ALL
		(SELECT * FROM ex_iii_answer EXCEPT SELECT * FROM ex_iii))
		AND ((SELECT COUNT(*) FROM ex_iii) > 0)
		AND ((SELECT COUNT(*) FROM ex_iii) = (SELECT COUNT(*) FROM ex_iii_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'iv' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_iv EXCEPT SELECT * FROM ex_iv_answer)
		UNION ALL
		(SELECT * FROM ex_iv_answer EXCEPT SELECT * FROM ex_iv))
		AND ((SELECT COUNT(*) FROM ex_iv) > 0)
		AND ((SELECT COUNT(*) FROM ex_iv) = (SELECT COUNT(*) FROM ex_iv_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'v' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_v EXCEPT SELECT * FROM ex_v_answer)
		UNION ALL
		(SELECT * FROM ex_v_answer EXCEPT SELECT * FROM ex_v))
		AND ((SELECT COUNT(*) FROM ex_v) > 0)
		AND ((SELECT COUNT(*) FROM ex_v) = (SELECT COUNT(*) FROM ex_v_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'vi' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_vi EXCEPT SELECT * FROM ex_vi_answer)
		UNION ALL
		(SELECT * FROM ex_vi_answer EXCEPT SELECT * FROM ex_vi))
		AND ((SELECT COUNT(*) FROM ex_vi) > 0)
		AND ((SELECT COUNT(*) FROM ex_vi) = (SELECT COUNT(*) FROM ex_vi_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'vii' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_vii EXCEPT SELECT * FROM ex_vii_answer)
		UNION ALL
		(SELECT * FROM ex_vii_answer EXCEPT SELECT * FROM ex_vii))
		AND ((SELECT COUNT(*) FROM ex_vii) > 0)
		AND ((SELECT COUNT(*) FROM ex_vii) = (SELECT COUNT(*) FROM ex_vii_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'viii' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_viii EXCEPT SELECT * FROM ex_viii_answer)
		UNION ALL
		(SELECT * FROM ex_viii_answer EXCEPT SELECT * FROM ex_viii))
		AND ((SELECT COUNT(*) FROM ex_viii) > 0)
		AND ((SELECT COUNT(*) FROM ex_viii) = (SELECT COUNT(*) FROM ex_viii_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'ix' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_ix EXCEPT SELECT * FROM ex_ix_answer)
		UNION ALL
		(SELECT * FROM ex_ix_answer EXCEPT SELECT * FROM ex_ix))
		AND ((SELECT COUNT(*) FROM ex_ix) > 0)
		AND ((SELECT COUNT(*) FROM ex_ix) = (SELECT COUNT(*) FROM ex_ix_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'x' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_x EXCEPT SELECT * FROM ex_x_answer)
		UNION ALL
		(SELECT * FROM ex_x_answer EXCEPT SELECT * FROM ex_x))
		AND ((SELECT COUNT(*) FROM ex_x) > 0)
		AND ((SELECT COUNT(*) FROM ex_x) = (SELECT COUNT(*) FROM ex_x_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'xi' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_xi EXCEPT SELECT * FROM ex_xi_answer)
		UNION ALL
		(SELECT * FROM ex_xi_answer EXCEPT SELECT * FROM ex_xi))
		AND ((SELECT COUNT(*) FROM ex_xi) > 0)
		AND ((SELECT COUNT(*) FROM ex_xi) = (SELECT COUNT(*) FROM ex_xi_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
UNION ALL
SELECT 'xii' as ex,
	CASE
        WHEN
        NOT EXISTS (
		(SELECT * FROM ex_xii EXCEPT SELECT * FROM ex_xii_answer)
		UNION ALL
		(SELECT * FROM ex_xii_answer EXCEPT SELECT * FROM ex_xii))
		AND ((SELECT COUNT(*) FROM ex_xii) > 0)
		AND ((SELECT COUNT(*) FROM ex_xii) = (SELECT COUNT(*) FROM ex_xii_answer))
        THEN 'pass' 
        ELSE 'fail'
    END AS result
)


SELECT * FROM test
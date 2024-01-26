USE Northwind
GO

WITH 
ex_i AS (
-- Find the length of the shortest string in the Product.ProductName.
SELECT 1 AS one -- Replace this with your solution.

),

ex_ii AS ( 
-- Find the length of the longest string in the Product.ProductName.
SELECT 1 AS one
),

ex_iii AS ( 
-- Find the average string length in the Product.ProductName.
SELECT 1 AS one
),


ex_iv AS ( 
-- Find the standard deviation of string length in the Product.ProductName.
SELECT 1 AS one
),

ex_v AS ( 
-- Find the variance of string length in the Product.ProductName.
SELECT 1 AS one
),

ex_vi AS ( 
-- Find, in the CustomerDemographics.CustomerDesc:
-- - length of the shortest string
-- - length of the longest string
-- - average string length
-- - standard deviation of string length
-- - variance of string length
SELECT 1 AS one, 2 AS two, 3 AS three, 4 AS four, 5 AS five
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
SELECT MIN(LEN(ProductName)) AS StringLengthMin
FROM dbo.Products
),

ex_ii_answer AS (
SELECT MAX(LEN(ProductName)) AS StringLengthMax
FROM dbo.Products
),

ex_iii_answer AS (
SELECT AVG(LEN(ProductName)) AS StringLengthAvg
FROM dbo.Products
),

ex_iv_answer AS(
SELECT STDEV(LEN(ProductName)) AS StringLengthStdev
FROM dbo.Products
),

ex_v_answer AS (
SELECT VAR(LEN(ProductName)) AS StringLengthVar
FROM dbo.Products
),

ex_vi_answer AS (
SELECT 
	MIN(LEN(CompanyName)) AS StirngLengthMin,
	MAX(LEN(CompanyName)) AS StringLengthMax,
	AVG(LEN(CompanyName)) AS StringLengthAvg,
	STDEV(LEN(CompanyName)) AS StringLengthStdev,
	VAR(LEN(CompanyName)) AS StringLengthVar
FROM dbo.Customers
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
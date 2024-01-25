USE Northwind
GO

WITH 
ex_i AS (
-- Count rows in a table Orders
SELECT 1 AS one -- Replace this with your solution.

),

ex_ii AS ( 
-- Find the minimum value in the Order Subtotal table.
SELECT 1 AS one 
),

ex_iii AS ( 
-- Find the maximum value in the Order Subtotal view.
SELECT 1 AS one
),


ex_iv AS ( 
-- Calculate the average value of the Order Subtotal view.
SELECT 1 AS one
),

ex_v AS ( 
-- Calculate the standard deviation from the Order Subtotal view.
SELECT 1 AS one
),

ex_vi AS ( 
-- Calculate the variance from the Order Subtotal view.
SELECT 1 AS one
),

ex_vii AS ( 
-- Calculate using the view Order Subtotal:
-- - Minimum value,
-- - Maximum value,
-- - Average value,
-- - Standard deviation
-- - Variance.
SELECT 1 AS One, 2 AS Two, 3 AS Three, 4 AS Four, 5 AS Five
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
SELECT COUNT(*) AS RowsNumber
FROM dbo.Orders
),

ex_ii_answer AS (
SELECT MIN(Subtotal) AS MinSubtotal
FROM dbo.[Order Subtotals]
),

ex_iii_answer AS (
SELECT MAX(Subtotal) AS MaxSubtotal
FROM dbo.[Order Subtotals]
),

ex_iv_answer AS(
SELECT AVG(Subtotal) AS AvgSubtotal
FROM dbo.[Order Subtotals]
),

ex_v_answer AS (
SELECT STDEV(Subtotal) AS StdevSubtotal
FROM dbo.[Order Subtotals]
),

ex_vi_answer AS (
SELECT VAR(Subtotal) AS VarSubtotal
FROM dbo.[Order Subtotals]
),

ex_vii_answer AS (
SELECT 
	MIN(Subtotal) AS MinSubtotal,
	MAX(Subtotal) AS MaxSubtotal,
	AVG(Subtotal) AS AvgSubtotal,
	STDEV(Subtotal) AS StdevSubtotal,
	VAR(Subtotal) AS VarSubtotal
FROM dbo.[Order Subtotals]
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
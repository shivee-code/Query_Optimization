SELECT * FROM bigbasket;

# Non optimizing way
SELECT product, sale_price FROM bigbasket;


# How can use WHERE and HAVING (Filtering data both)
SELECT category, COUNT(*)
FROM bigbasket
GROUP BY category         #count the total number of category wise

HAVING category = "Beauty & Hygiene";     # HAVING is count the saparate category

# 2nd one 
SELECT category, COUNT(*)
FROM bigbasket
WHERE category = "Beauty & Hygiene"
GROUP BY category;                    # WHERE clause is befor categorise data and after given result (HAVING & WHERE both are filtered the data, WHERE is execute faster than HAVING)


# LIMIT clause (it si the restricked the number of output rows)
SELECT * FROM bigbasket
LIMIT 10;
SELECT product, sale_price FROM bigbasket;        # show only 10 rows


# COUNT(*) 
SELECT category, COUNT(id)
FROM bigbasket
WHERE category = "Beauty & Hygiene"
GROUP BY category;                 

# DISTINCT (show the only unique value)
SELECT DISTINCT brand FROM bigbasket;

SELECT brand FROM bigbasket GROUP BY brand;      # DISTINCT & GROUP BY both are same, but GROUP BY is much more faster than DISTINCT 


# UNION and UNION ALL (union all is including duplicates and union is non duplicate)
SELECT product FROM bigbasket WHERE category = "Beauty & Hygiene"
UNION
SELECT product FROM bigbasket WHERE category = "Cleaning and Household";     # show only non duplicate values

SELECT product FROM bigbasket WHERE category = "Beauty & Hygiene"
UNION ALL
SELECT product FROM bigbasket WHERE category = "Cleaning and Household";      # show all duplicate values


# BETWEEN, AND clause
SELECT * FROM bigbasket WHERE sale_price >=100 AND sale_price <=500;

SELECT * FROM bigbasket WHERE sale_price BETWEEN 100 AND 500;        # both are given same output (but second is most faster and easier way)


# IN and OR (both are given same output, but IN is more concise and readable when checking against multiple values)
SELECT * FROM bigbasket WHERE category = "Beauty & Hygiene" OR category = "Cleaning and Household";

SELECT * FROM bigbasket WHERE category IN("Beauty & Hygiene", "Cleaning and Household");


# ASCENDING and DESCENDING ORDER
SELECT * FROM bigbasket ORDER BY category, brand;

SELECT * FROM bigbasket ORDER BY category;


# Aggregate function (SUM, TOTAL, COUNT, MIN, MAX, AVG)

# Most lowest price entire bigbasket table
SELECT sale_price FROM bigbasket ORDER BY sale_price LIMIT 1;

SELECT MIN(sale_price) FROM bigbasket;


# LIKE Operator (The LIKE operator is used in a WHERE clause to search for a specific pattern)
SELECT product FROM bigbasket WHERE product LIKE '%soap%';    # 

SELECT product FROM bigbasket WHERE product LIKE '%soap';    # before the word soap

SELECT product FROM bigbasket WHERE product LIKE 'soap%';    # after the word soap


# SUBSTRING() OR LEFT() operator (function is used to extract a portion of a string from a specific position for a given length)
 SELECT SUBSTRING(product,1,3) FROM bigbasket;         # fetch the first three laters from all the product name
 
 SELECT LEFT(product,3) FROM bigbasket;                # same output 
 
 
 # DELETE Operator (DML Commands) (The DELETE statement is used to remove rows from a table based on a condition)
 DELETE FROM bigbasket WHERE sale_price < 100;      # this is optimize way
 

-- In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.

-- Create a table rentals_may to store the data from rental table with information for the month of May.

CREATE TABLE SAKILA.RENTALS_MAY AS
SELECT * FROM SAKILA.RENTAL
WHERE MONTH(rental_date) = 5;

SELECT * FROM SAKILA.RENTALS_MAY;

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

INSERT INTO rentals_may
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

SELECT COUNT(*) FROM SAKILA.RENTALS_MAY;


-- Create a table rentals_june to store the data from rental table with information for the month of June.

CREATE TABLE SAKILA.RENTALS_JUNE AS
SELECT * FROM SAKILA.RENTAL
WHERE MONTH(rental_date) = 6;

SELECT COUNT(*) FROM SAKILA.RENTALS_JUNE;


-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

INSERT INTO RENTALS_JUNE
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

SELECT COUNT(*) FROM SAKILA.RENTALS_JUNE;


-- Check the number of rentals for each customer for May.

SELECT CUSTOMER_ID, COUNT(RENTAL_ID) AS RENTAL_COUNT
FROM SAKILA.RENTALS_MAY
GROUP BY CUSTOMER_ID
ORDER BY RENTAL_COUNT DESC;



-- Check the number of rentals for each customer for June.

SELECT CUSTOMER_ID, COUNT(RENTAL_ID) AS RENTAL_COUNT
FROM SAKILA.RENTALS_JUNE
GROUP BY CUSTOMER_ID
ORDER BY RENTAL_COUNT DESC;
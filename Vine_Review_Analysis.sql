-- Create vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

-- Total votes greater than or equal to 20
CREATE TABLE total_vine_votes AS
SELECT * FROM vine_table
WHERE total_votes >= 20;

-- Helpful votes greater than 50%
CREATE TABLE helpful_total_votes  AS
SELECT * FROM total_vine_votes
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

-- Paid reviews for vine program
CREATE TABLE paid_votes  AS
SELECT * FROM helpful_total_votes
WHERE vine = 'Y';

-- Unpaid reviews for vine program
CREATE TABLE not_paid_votes  AS
SELECT * FROM helpful_total_votes
WHERE vine = 'N';


-- Total Paid Reviews
SELECT COUNT(review_id) AS "Total Paid Reviews" FROM helpful_total_votes
WHERE vine = 'Y';
-- Total Non_Paid Reviews
SELECT COUNT(review_id) AS "Total Non_Paid Reviews" FROM helpful_total_votes
WHERE vine = 'N';

-- Total Paid 5_Star Reviews
SELECT COUNT(review_id) AS "Total Paid 5_Star Reviews" FROM helpful_total_votes
WHERE vine = 'Y' AND star_rating = 5;

-- Total Non_Paid 5_Star Reviews
SELECT COUNT(review_id) AS "Total Non_Paid 5_Star Reviews" FROM helpful_total_votes
WHERE vine = 'N' AND star_rating = 5;

-- Total %Paid 5_Star Reviews
SELECT CAST((SELECT COUNT(review_id) AS "Total Paid 5_Star Reviews" FROM helpful_total_votes
WHERE vine = 'Y' AND star_rating = 5) AS FLOAT)*100
/
CAST((SELECT COUNT(review_id) AS "Total Paid Reviews" FROM helpful_total_votes
WHERE vine = 'Y') AS FLOAT) 
AS "Total %Paid 5_Star Reviews";

-- Total %Non_Paid 5_Star Reviews
SELECT CAST((SELECT COUNT(review_id) AS "Total Non_Paid 5_Star Reviews" FROM helpful_total_votes
WHERE vine = 'N' AND star_rating = 5) AS FLOAT)*100
/
CAST((SELECT COUNT(review_id) AS "Total Non_Paid Reviews" FROM helpful_total_votes
WHERE vine = 'N') AS FLOAT) 
AS "Total %Non_Paid 5_Star Reviews";



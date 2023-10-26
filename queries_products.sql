-- Comments in SQL Start with dash-dash --
SELECT app_name FROM analytics WHERE ID = 1880;

SELECT ID, app_name FROM analytics WHERE last_updated = 'August 01, 2018';

SELECT category, COUNT(id) AS number_of_apps
FROM analytics
GROUP BY category
ORDER BY number_of_apps DESC;

SELECT app_name, reviews
FROM analytics
ORDER BY reviews DESC
LIMIT 5;

SELECT app_name, reviews
FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;

SELECT category, AVG(rating) AS avg_rating
FROM analytics
GROUP BY category
ORDER BY avg_rating ASC;

SELECT app_name, price, rating
FROM analytics WHERE rating < 3
ORDER BY price DESC
LIMIT 1;

SELECT app_name, rating, min_installs
FROM analytics
WHERE min_installs < 50 AND rating IS NOT NULL
ORDER BY rating DESC;

SELECT app_name
FROM analytics
WHERE rating < 3 AND reviews >= 10000;


SELECT app_name
FROM analytics
WHERE price >=0.10 AND price <= 1.00
ORDER BY rating DESC;

SELECT app_name, last_updated
FROM analytics
ORDER BY last_updated ASC
LIMIT 1;

SELECT app_name, price
FROM analytics
ORDER BY price DESC
LIMIT 1;

SELECT SUM(reviews) AS total_reviews
FROM analytics;

SELECT 
    app_name,
    reviews,
    min_installs,
    (min_installs / reviews) AS proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion DESC, app_name ASC
LIMIT 1;

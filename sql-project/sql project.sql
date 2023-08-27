/* Schools that have more locations. NOTE: springboard is full remote */
SELECT school, COUNT(country_name) AS total_schools
FROM p2_db.locations
GROUP BY school
ORDER BY total_schools DESC;

SELECT school, country_name,
    CASE
        WHEN country_name IN ('Germany', 'Netherlands', 'France', 'Spain','Portugal', 'Belgium', 'Switzerland', 'England', 'Chile') THEN 'Europe'
        WHEN country_name IN ('United States', 'Canada', 'Mexico') THEN 'North America'
        WHEN country_name IN ('Brazil', 'Argentina') THEN 'South America'
        WHEN country_name IN ('Indonisia', 'China', 'Japan', 'Singapore') THEN 'Asia'
        WHEN country_name IN ('Australia') THEN 'Australia'
        WHEN country_name IN ('Moroco', 'Mauritius') THEN 'Africa'
        WHEN country_name IN ('Cape Town') THEN 'South Africa'
        WHEN country_name IN ('United Arab Emirates') THEN 'United Arab Emirates'
        ELSE 'Other'
    END AS continent
FROM p2_db.locations;

/* Which school scores highest across all locations? Why is that? */        
SELECT locations.country_name, comments.school, ROUND(AVG(comments.overallScore), 1) AS avg_score_school
FROM p2_db.comments
INNER JOIN p2_db.locations ON p2_db.comments.school = p2_db.locations.school
GROUP BY comments.school, locations.country_name
ORDER BY avg_score_school DESC
LIMIT 10;
#com base nas keywords em badges
/* Counts which school has more online courses */
SELECT school, COUNT(keyword LIKE "available_online") AS online_courses
FROM p2_db.badges
GROUP BY school
ORDER BY online_courses DESC;

/* Counts which school has more flexible courses */
SELECT school, COUNT(keyword LIKE "flexible_courses") AS flexible_courses
FROM p2_db.badges
GROUP BY school
ORDER BY flexible_courses DESC;

/* Counts which school has more job guarantee */
SELECT school, COUNT(keyword LIKE "job_guarantee") AS job_guarantee
FROM p2_db.badges
GROUP BY school
ORDER BY job_guarantee DESC;
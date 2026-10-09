SELECT topic
FROM episodes
WHERE topic IS NOT NULL
GROUP BY topic
HAVING COUNT(*) > 1;
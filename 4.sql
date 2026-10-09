SELECT name FROM authors
WHERE author_id = (SELECT author_id FROM authors
WHERE birth IS NOT NULL
AND death IS NOT NULL
ORDER BY CAST(strftime('%Y', death) AS INTEGER) - CAST(strftime('%Y', birth) AS INTEGER) DESC LIMIT 1);
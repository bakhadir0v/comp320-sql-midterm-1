SELECT title
FROM books
WHERE book_id = (SELECT book_id
FROM editions
GROUP BY book_id
ORDER BY COUNT(*) DESC
LIMIT 1);
SELECT 'There are ' || COUNT(DISTINCT book_id) || ' books in the editions table.'
FROM editions;
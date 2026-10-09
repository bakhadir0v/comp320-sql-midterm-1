SELECT artist, english_title
FROM views v
WHERE entropy = (SELECT MAX(entropy) FROM views WHERE artist = v.artist)
ORDER BY artist;
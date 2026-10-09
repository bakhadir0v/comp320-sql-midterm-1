SELECT title 
FROM episodes e
WHERE episode_in_season IN (SELECT MAX(episode_in_season) FROM episodes WHERE season = e.season);
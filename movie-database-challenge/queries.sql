-- -- List all movies with release year
-- select title, year From Movies;

-- Actors under 30
-- SELECT name, age FROM Actors WHERE age < 30;

-- Combine movie titles with release years concatenated
SELECT title || ' (' || year || ')' AS movie_info FROM  Movies;
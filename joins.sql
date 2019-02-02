SELECT * 
FROM users;

SELECT *
FROM posts
WHERE user_id = 100;

SELECT 
users.username,
users.first_name,
users.last_name
FROM users INNER JOIN posts
ON posts.user_id = users.id
WHERE posts.user_id = 200;






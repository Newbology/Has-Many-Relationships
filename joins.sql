-- SELECT * 
-- FROM users;

-- SELECT 
-- id,
-- title,
-- url,
-- content,
-- created_at,
-- updated_at
-- FROM posts
-- WHERE user_id = 100;

-- SELECT 
-- users.id,
-- users.username,
-- users.first_name,
-- users.last_name,
-- users.created_at,
-- users.updated_at
-- FROM users INNER JOIN posts
-- ON posts.user_id = users.id
-- WHERE posts.user_id = 200;

-- SELECT 
-- posts.id,
-- posts.title,
-- posts.content,
-- users.username,
-- posts.created_at,
-- posts.updated_at
-- FROM users INNER JOIN posts
-- ON posts.user_id = users.id
-- WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';


-- SELECT
-- username
-- FROM users
-- WHERE created_at > DATE '2015-01-01';

-- SELECT 
-- posts.title,
-- posts.content,
-- users.username
-- FROM users INNER JOIN posts
-- ON posts.user_id = users.id
-- WHERE users.created_at < DATE '2015-01-01';

-- SELECT 
-- posts.title AS post_title,
-- comments.id,
-- comments.body,
-- comments.created_at,
-- comments.updated_at
-- FROM comments INNER JOIN posts
-- ON comments.post_id = posts.id;


-- SELECT
-- comments.id,
-- comments.body AS comment_body,
-- comments.created_at,
-- comments.updated_at,
-- posts.title AS post_title,
-- posts.url AS post_url
-- FROM comments INNER JOIN posts
-- ON comments.post_id = posts.id
-- WHERE comments.created_at < DATE '2015-01-01'

-- SELECT
-- comments.id,
-- comments.body AS comment_body,
-- comments.created_at,
-- comments.updated_at,
-- posts.title AS post_title,
-- posts.url AS post_url
-- FROM comments INNER JOIN posts
-- ON comments.post_id = posts.id
-- WHERE comments.created_at > DATE '2015-01-01'

-- SELECT
-- comments.id,
-- comments.body AS comment_body,
-- comments.created_at,
-- comments.updated_at,
-- posts.title AS post_title,
-- posts.url AS post_url
-- FROM comments INNER JOIN posts
-- ON comments.post_id = posts.id
-- WHERE comments.body ~ 'USB';

-- SELECT 
-- posts.title AS post_title,
-- users.first_name,
-- users.last_name,
-- comments.body AS comment_body
-- FROM posts 
-- INNER JOIN users ON posts.user_id = users.id
-- INNER JOIN comments ON comments.post_id = posts.id
-- WHERE comments.body ~ 'matrix';

SELECT
users.first_name,
users.last_name,
comments.body AS comment_body
FROM users
INNER JOIN posts ON posts.user_id = users.id
INNER JOIN comments ON comments.post_id = posts.id
WHERE comments.body ~ 'SSL' AND posts.content ~ 'dolorum';
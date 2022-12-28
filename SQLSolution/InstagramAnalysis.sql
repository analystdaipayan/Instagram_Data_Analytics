-- Data Anlysis of the Instagram Database

-- We want to reward the most loyal users on Instagram
-- Finding the 5 most oldest users on the platform

SELECT username FROM users
ORDER BY created_at ASC
LIMIT 5;


-- We need to send promotional emails to the people who never posted a Single photo on Instagram
-- Finding the users who never posted a photo on Instagram

SELECT u.username, image_url
FROM users u LEFT JOIN photos p
ON u.id = p.user_id
WHERE p.image_url is null;


-- We are arranging a contest to reward the user with most liked photo
-- Finding the user whose single photo is liked the most

SELECT u.username
FROM users u JOIN photos p
ON u.id = p.user_id
WHERE p.id = (SELECT photo_id FROM likes GROUP BY photo_id ORDER BY Count(photo_id) DESC LIMIT 1);


-- We need to use popular hashtags in order to reach our maximum users
-- Finding the top 5 most commonly used hashtags on Instagram

-- Finding by using 'IN' operator
SELECT tag_name FROM tags
WHERE id IN (SELECT tag_id  FROM photo_tags GROUP BY tag_id ORDER BY COUNT(tag_id) DESC LIMIT 5);

-- Finding by using 'JOIN' operator
SELECT t.tag_name, t.id
FROM tags t
JOIN (SELECT tag_id  FROM photo_tags GROUP BY tag_id ORDER BY COUNT(tag_id) DESC LIMIT 5) q
ON t.id = q.tag_id;


-- We want to launch ads on the best day of the week
-- Finding the day of the week on which most users register on the platform

 SELECT * FROM users;
 
 
 SELECT dayname(created_at) day_name, COUNT(*) total_count FROM users
 GROUP BY day_name
 ORDER BY total_count DESC
 LIMIT 1;
 
 
 -- We want to see the activeness of the users on Instagram
 -- Finding the amount of time an average user posts on instagram
 
SELECT ROUND ((SELECT COUNT(*) FROM photos)/(SELECT COUNT(*) FROM users),3) AS Average_Posting;


-- We want to delete some fake accounts/bots
-- Finding those users which have like every single photo

SELECT username FROM users
WHERE id IN (SELECT user_id  FROM LIKES GROUP BY user_id HAVING COUNT(user_id) = (SELECT COUNT(*) FROM photos));


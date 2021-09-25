SELECT 
    user_id AS id,
    user_name || ' ' ||last_name AS full_name, 
    contact AS phone_number,
    CASE
        WHEN gender = 1 THEN 'erkak'
        ELSE 'ayol'
    END AS gender
FROM users
ORDER BY user_id ASC;

SELECT 
    *,
    'ayollar' AS type 
FROM users WHERE gender = 2;

SELECT
    COUNT(user_id) AS full_count
FROM users;
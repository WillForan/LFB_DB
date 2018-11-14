-- name: get-media-by-author-title
-- Get all media matching title
SELECT *
FROM media
LEFT JOIN media_series as ms on media.mid = ms.mid
WHERE title like %s and author like %s;

-- name: get-staff-with-name
-- Get all staff matching name
SELECT *
FROM staff
WHERE name like %s and enddate is not NULL;

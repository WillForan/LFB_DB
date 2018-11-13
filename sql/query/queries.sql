-- name: get-staff-with-name
-- Get all staff matching name
SELECT *
FROM staff
WHERE name = %s;

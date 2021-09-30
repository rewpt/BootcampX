SELECT name, email, phone
FROM students
WHERE github IS NULL AND
NOW() > end_date;
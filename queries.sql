-- 1. List all active students
SELECT student_id, student_name, email
FROM students
WHERE status = 'active';

-- 2. Find students with invalid email
SELECT *
FROM students
WHERE email IS NULL OR email NOT LIKE '%@%';

-- 3. List easy and medium problems
SELECT *
FROM problems
WHERE difficulty IN ('Easy','Medium');

-- 4. Display latest 20 submissions
SELECT *
FROM submissions
ORDER BY submission_time DESC
LIMIT 20;

-- 5. Find failed submissions
SELECT *
FROM submissions
WHERE status != 'successful';

-- 6. Submission details with student and problem
SELECT s.student_name, p.problem_title, sub.language, sub.status
FROM submissions sub
JOIN students s ON sub.student_id = s.student_id
JOIN problems p ON sub.problem_id = p.problem_id;

-- 7. Students and enrollments
SELECT s.student_name, e.course_id
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id;

-- 8. Count enrolled students per course
SELECT course_id, COUNT(student_id) AS total_students
FROM enrollments
GROUP BY course_id;

--

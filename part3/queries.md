1. Instructors

SELECT * FROM instructors;

SELECT first_name, last_name, email FROM instructors;

2. Courses 

SELECT * FROM students;

SELECT course_name, course_code, instructor_id FROM courses;

3. Students 

SELECT * FROM students;

SELECT first_name, last_name, date_of_birth FROM students WHERE date_of_birth > '2000-01-01';

4. Entollments

SELECT * FROM enrollments;

SELECT student_id, course_id FROM enrollments WHERE course_id = 1;


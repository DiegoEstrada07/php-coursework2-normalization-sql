CREATE TABLE Students (
    student_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE,
    PRIMARY KEY (student_id)
);

CREATE TABLE Instructors (
    instructor_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (instructor_id)
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) NOT NULL UNIQUE,
    instructor_id INT NOT NULL,
    PRIMARY KEY (course_id),
    FOREIGN KEY (instructor_id)
        REFERENCES Instructors(instructor_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    PRIMARY KEY (enrollment_id),
    FOREIGN KEY (student_id)
        REFERENCES Students(student_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    UNIQUE (student_id, course_id)
);
-- Truncate all the Tables
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Courses;
TRUNCATE TABLE CourseProfessors;
TRUNCATE TABLE Professors;
TRUNCATE TABLE Departments;
TRUNCATE TABLE Semesters;
TRUNCATE TABLE Rooms;
TRUNCATE TABLE TimeSlots;
TRUNCATE TABLE Preferences;

SET FOREIGN_KEY_CHECKS = 1;

-- Insert dummy data into Depratments Table
INSERT INTO Departments (DepartmentName, DepartmentCode) VALUES
('Computer Science and Engineering', 'CSE');

-- Insert dummy data into the Professors Table with ShortName
INSERT INTO Professors (FirstName, LastName, ShortName, DepartmentID, Email, Phone, Status) VALUES
('John', 'Doe', 'JD', 1, 'jdoe@example.com', '123-456-7890', 'Active'),
('Jane', 'Smith', 'JS', 1, 'jsmith@example.com', '098-765-4321', 'Active'),
('Michael', 'Brown', 'MB', 1, 'mbrown@example.com', '234-567-8901', 'Active'),
('Emily', 'Davis', 'ED', 1, 'edavis@example.com', '345-678-9012', 'Active'),
('David', 'Wilson', 'D', 1, 'dwilson@example.com', '456-789-0123', 'Active');

-- Insert dummy data into the Semesters Table with SemesterCode
INSERT INTO Semesters (SemesterName, SemesterCode) VALUES
('First Year, First Semester', '1--1'),
('First Year, Second Semester', '1--2'),
('Second Year, First Semester', '2--1'),
('Second Year, Second Semester', '2--2'),
('Third Year, First Semester', '3--1'),
('Third Year, Second Semester', '3--2'),
('Fourth Year, First Semester', '4--1'),
('Fourth Year, Second Semester', '4--2');

-- Insert dummy data into the Courses Table with ShortName and CourseType
INSERT INTO Courses (CourseName, CourseCode, DepartmentID, Credits, CourseType) VALUES
('Introduction to Programming', 'CSE101', 1, 3, 'Theory'),
('Data Structures', 'CSE102', 1, 3, 'Theory'),
('Computer Networks Lab', 'CSE201', 1, 1, 'Lab'),
('Database Management Systems', 'CSE202', 1, 3, 'Theory'),
('Operating Systems Lab', 'CSE203', 1, 1, 'Lab'),
('Algorithms', 'CSE204', 1, 3, 'Theory');

-- Insert dummy data into the CourseProfessors Table
INSERT INTO CourseProfessors (CourseID, ProfessorID) VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(4, 1),
(5, 1),
(5, 5),
(6, 3);

-- Insert dummy data into the SemestersCourses Table
INSERT INTO SemestersCourses (SemesterID, CourseID) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6);

-- Insert dummy data into the Rooms Table with RoomType
INSERT INTO Rooms (RoomNumber, Capacity, RoomType, Status) VALUES
('101', 30, 'Classroom', 'Available'),
('102', 40, 'Classroom', 'Available'),
('201', 20, 'Lab', 'Available'),
('202', 25, 'Lab', 'Available'),
('301', 50, 'Classroom', 'Available'),
('302', 15, 'Lab', 'Available');

-- Insert dummy data to TimeSlots Table
INSERT INTO TimeSlots (DayOfWeek, StartTime, EndTime) VALUES
-- Sunday
('Sunday', '09:00:00', '10:20:00'),
('Sunday', '10:25:00', '11:45:00'),
('Sunday', '11:50:00', '13:10:00'),
('Sunday', '14:00:00', '15:20:00'),
('Sunday', '15:25:00', '16:45:00'),

-- Monday
('Monday', '09:00:00', '10:20:00'),
('Monday', '10:25:00', '11:45:00'),
('Monday', '11:50:00', '13:10:00'),
('Monday', '14:00:00', '15:20:00'),
('Monday', '15:25:00', '16:45:00'),

-- Tuesday
('Tuesday', '09:00:00', '10:20:00'),
('Tuesday', '10:25:00', '11:45:00'),
('Tuesday', '11:50:00', '13:10:00'),
('Tuesday', '14:00:00', '15:20:00'),
('Tuesday', '15:25:00', '16:45:00'),

-- Wednesday
('Wednesday', '09:00:00', '10:20:00'),
('Wednesday', '10:25:00', '11:45:00'),
('Wednesday', '11:50:00', '13:10:00'),
('Wednesday', '14:00:00', '15:20:00'),
('Wednesday', '15:25:00', '16:45:00'),

-- Thursday
('Thursday', '09:00:00', '10:20:00'),
('Thursday', '10:25:00', '11:45:00'),
('Thursday', '11:50:00', '13:10:00'),
('Thursday', '14:00:00', '15:20:00'),
('Thursday', '15:25:00', '16:45:00');

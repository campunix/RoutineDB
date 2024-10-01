# University Routine Database

This repository contains the SQL scripts to set up a University Routine Management System. The database is designed to handle the departments, professors, semesters, and courses, along with their relationships to efficiently manage academic schedules.

#Database Setup
The following steps are included in the script to set up the database.

# 1. Create the Database
The database UniversityRoutineDB is created (if it doesn't already exist) using the following command:

```sql
DROP DATABASE IF EXISTS UniversityRoutineDB;
CREATE DATABASE UniversityRoutineDB;
```

# 2. Use the Database
```sql
USE UniversityRoutineDB;
```

# 3. Departments Table
This table stores the different departments within the university.
```sql
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL,
    DepartmentCode VARCHAR(100) NOT NULL
);
```

# 4. Professors Table
Stores information about professors, including their names, short names, department affiliation, and employment status.
```sql
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    ShortName VARCHAR(10) NOT NULL,
    DepartmentID INT,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Status ENUM('Active', 'LPR', 'Leave', 'PRL', 'Retired') DEFAULT 'Active',
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
```

# 5. Semesters Table
Stores information about different semesters and indicates whether they are currently active.
```sql
CREATE TABLE Semesters (
    SemesterID INT PRIMARY KEY AUTO_INCREMENT,
    SemesterName VARCHAR(50) NOT NULL,
    SemesterCode VARCHAR(5) NOT NULL,
    IsActive BOOLEAN DEFAULT FALSE
);
```

# 6. Courses Table
Stores information about courses offered by different departments.
```sql
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    CourseCode VARCHAR(20) NOT NULL,
    DepartmentID INT,
    Credits INT,
    CourseType ENUM('Theory', 'Lab') NOT NULL,
    IsActive BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
```

# 7. Course Professors Table
Associates professors with the courses they teach.
```sql
CREATE TABLE CourseProfessors (
    CourseProfessorID INT PRIMARY KEY AUTO_INCREMENT,
    CourseID INT,
    ProfessorID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);
```

# 8. Semesters Courses Table
Links courses to semesters, helping to manage which courses are being taught in which semester.
```sql
CREATE TABLE SemestersCourses (
    SemesterCourseID INT PRIMARY KEY AUTO_INCREMENT,
    SemesterID INT,
    CourseID INT,
    FOREIGN KEY (SemesterID) REFERENCES Semesters(SemesterID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID));
```

# How to Use
Clone the repository.
Run the SQL script Create DB.sql in your preferred database management system (MySQL).
Adjust the schema and structure as necessary to fit your institution's requirements.

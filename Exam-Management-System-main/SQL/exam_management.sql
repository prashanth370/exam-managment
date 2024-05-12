-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql110.epizy.com
-- Generation Time: Jun 25, 2022 at 10:45 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_32030629_exam_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE `add_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`class_id`, `class_name`, `status`) VALUES
(1, 'Class 1', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `add_course`
--

CREATE TABLE `add_course` (
  `course_id` int(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `create_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_course`
--

INSERT INTO `add_course` (`course_id`, `course_name`, `create_time`, `status`) VALUES
(1, 'Software Engineering', '24-06-2022 23:32', 'Enabled');
INSERT INTO `add_course` (`course_id`, `course_name`, `create_time`, `status`) VALUES
(2, 'DSA', '24-06-2022 22:32', 'Enabled');
INSERT INTO `add_course` (`course_id`, `course_name`, `create_time`, `status`) VALUES
(3, 'DBMS', '24-06-2024 21:32', 'Enabled');
INSERT INTO `add_course` (`course_id`, `course_name`, `create_time`, `status`) VALUES
(4, 'OS', '24-01-2024 17:32', 'Enabled');
INSERT INTO `add_course` (`course_id`, `course_name`, `create_time`, `status`) VALUES
(5, 'Python', '24-01-2024 15:32', 'Enabled');



-- --------------------------------------------------------

--
-- Table structure for table `add_exam`
--

CREATE TABLE `add_exam` (
  `exam_id` int(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `exam_time_limit` varchar(100) NOT NULL,
  `total_question` varchar(100) NOT NULL,
  `correct` varchar(100) NOT NULL,
  `wrong` varchar(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `exam_date` varchar(100) NOT NULL,
  `exam_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_exam`
--

INSERT INTO `add_exam` (`exam_id`, `course`, `exam_time_limit`, `total_question`, `correct`, `wrong`, `exam_title`, `exam_date`, `exam_time`, `status`) VALUES
(1, 'Software Engineering', '15', '15', '2', '1', 'Exam of Software Engineering', '2022-06-25', '12:00', 'Ended');

INSERT INTO `add_exam` (`exam_id`, `course`, `exam_time_limit`, `total_question`, `correct`, `wrong`, `exam_title`, `exam_date`, `exam_time`, `status`) VALUES
(2, 'DSA', '15', '10', '2', '1', 'DSA Exam', '2024-01-25', '14:00', 'Ended');

INSERT INTO `add_exam` (`exam_id`, `course`, `exam_time_limit`, `total_question`, `correct`, `wrong`, `exam_title`, `exam_date`, `exam_time`, `status`) VALUES
(3, 'DBMS', '15', '10', '2', '1', 'DBMS Exam', '2024-02-25', '16:00', 'Ended');

INSERT INTO `add_exam` (`exam_id`, `course`, `exam_time_limit`, `total_question`, `correct`, `wrong`, `exam_title`, `exam_date`, `exam_time`, `status`) VALUES
(4, 'OS', '15', '10', '2', '1', 'OS Exam', '2024-03-25', '18:00', 'Ended');

INSERT INTO `add_exam` (`exam_id`, `course`, `exam_time_limit`, `total_question`, `correct`, `wrong`, `exam_title`, `exam_date`, `exam_time`, `status`) VALUES
(5, 'Python Exam', '15', '0', '2', '1', 'OS', '2024-04-25', '20:00', 'Ended');

-- --------------------------------------------------------

--
-- Table structure for table `add_question`
--

CREATE TABLE `add_question` (
  `question_id` int(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `ans_1` varchar(100) NOT NULL,
  `ans_2` varchar(100) NOT NULL,
  `ans_3` varchar(100) NOT NULL,
  `ans_4` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_question`
--
INSERT INTO `add_question` (`question_id`, `exam_title`, `course`, `question`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `correct_answer`) VALUES
(1, 'Exam of Software Engineering', 'Software Engineering', 'What is Software Engineering?', 'Designing a software', 'Testing a software', 'Application of engineering principles to the design a software', 'None of the above', 'Application of engineering principles to the design a software'),
(2, 'Exam of Software Engineering', 'Software Engineering', 'Attributes of good software is -', 'Development', 'Maintainability & functionality', 'Functionality', 'Maintainability', 'Maintainability & functionality'),
(3, 'Exam of Software Engineering', 'Software Engineering', 'When can white-box testing be started?', 'After SRS creation', 'After installation', 'After programming', 'After designing', 'After programming'),
(4, 'Exam of Software Engineering', 'Software Engineering', 'A process view in software engineering would consider which of the following', 'Product performance', 'Staffing', 'Functionality', 'Reliability', 'Staffing'),
(5, 'Exam of Software Engineering', 'Software Engineering', 'What does SDLC stands for?', 'System Design Life Cycle', 'Software Design Life Cycle', 'Software Development Life Cycle', 'System Development Life cycle', 'Software Development Life Cycle'),
(6, 'Exam of Software Engineering', 'Software Engineering', 'What is the purpose of requirements engineering in software development?', 'To define the functional and non-functional requirements of the software system', 'To write code for the software system', 'To test the software system', 'To deploy the software system', 'To define the functional and non-functional requirements of the software system'),
(7, 'Exam of Software Engineering', 'Software Engineering', 'Which software development model involves iterative development cycles?', 'Waterfall model', 'Spiral model', 'Agile model', 'V-Model', 'Agile model'),
(8, 'Exam of Software Engineering', 'Software Engineering', 'What is the main goal of software quality assurance?', 'To ensure that software meets customer requirements and standards', 'To minimize the cost of software development', 'To complete software development projects on time', 'To increase the complexity of software systems', 'To ensure that software meets customer requirements and standards'),
(9, 'Exam of Software Engineering', 'Software Engineering', 'What is the purpose of version control in software development?', 'To manage changes to source code and documentation', 'To create multiple versions of the software for testing', 'To control access to the software system', 'To track software bugs and issues', 'To manage changes to source code and documentation'),
(10, 'Exam of Software Engineering', 'Software Engineering', 'Which software testing technique involves testing individual units or components of a software system?', 'Integration testing', 'System testing', 'Acceptance testing', 'Unit testing', 'Unit testing'),
(11, 'Exam of Software Engineering', 'Software Engineering', 'What is the primary focus of black-box testing?', 'To verify the internal logic of the software system', 'To test the functionality of the software system from the user''s perspective', 'To test individual units or components of the software system', 'To simulate real-world usage scenarios of the software system', 'To test the functionality of the software system from the user''s perspective'),
(12, 'Exam of Software Engineering', 'Software Engineering', 'What is the main purpose of a software requirements specification (SRS) document?', 'To capture the functional and non-functional requirements of the software system', 'To outline the project schedule and budget', 'To document the software design and architecture', 'To define the testing strategy for the software system', 'To capture the functional and non-functional requirements of the software system'),
(13, 'Exam of Software Engineering', 'Software Engineering', 'Which software development approach emphasizes adaptability and customer collaboration?', 'Waterfall model', 'Spiral model', 'Agile model', 'V-Model', 'Agile model'),
(14, 'Exam of Software Engineering', 'Software Engineering', 'What is the purpose of a software design document?', 'To describe how the software system will be implemented', 'To capture user feedback on the software system', 'To outline the project management plan', 'To document the software requirements', 'To describe how the software system will be implemented'),
(15, 'Exam of Software Engineering', 'Software Engineering', 'Which software development model involves a sequential approach to project management?', 'Waterfall model', 'Spiral model', 'Agile model', 'V-Model', 'Waterfall model');


INSERT INTO `add_question` (`question_id`, `exam_title`, `course`, `question`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `correct_answer`) VALUES
(16, 'DSA Exam', 'Data Structures and Algorithms', 'What is the time complexity of binary search in the worst-case scenario?', 'O(n)', 'O(log n)', 'O(n log n)', 'O(1)', 'O(log n)'),
(17, 'DSA Exam', 'Data Structures and Algorithms', 'Which data structure is typically used for implementing LIFO (Last In First Out) behavior?', 'Queue', 'Stack', 'Heap', 'Linked List', 'Stack'),
(18, 'DSA Exam', 'Data Structures and Algorithms', 'What is the worst-case time complexity of the quicksort algorithm?', 'O(n log n)', 'O(n^2)', 'O(n)', 'O(log n)', 'O(n^2)'),
(19, 'DSA Exam', 'Data Structures and Algorithms', 'Which data structure is suitable for implementing a priority queue?', 'Array', 'Stack', 'Queue', 'Heap', 'Heap'),
(20, 'DSA Exam', 'Data Structures and Algorithms', 'What is the purpose of the breadth-first search (BFS) algorithm?', 'Finding the shortest path in a graph', 'Finding the maximum flow in a network', 'Sorting a list of elements', 'Traversing a binary search tree', 'Finding the shortest path in a graph'),
(21, 'DSA Exam', 'Data Structures and Algorithms', 'Which sorting algorithm has the best worst-case time complexity?', 'Bubble Sort', 'Insertion Sort', 'Selection Sort', 'Merge Sort', 'Merge Sort'),
(22, 'DSA Exam', 'Data Structures and Algorithms', 'What is the main advantage of using a hash table data structure?', 'Constant-time search', 'Efficient memory utilization', 'Preserving element order', 'Supporting dynamic resizing', 'Constant-time search'),
(23, 'DSA Exam', 'Data Structures and Algorithms', 'In a binary tree, what is the maximum number of nodes at level "d", where "d" is the depth of the tree?', '2^d', '2^(d-1)', 'd', 'd^2', '2^d'),
(24, 'DSA Exam', 'Data Structures and Algorithms', 'Which data structure is used for storing a collection of elements in a sorted order?', 'Stack', 'Queue', 'Linked List', 'Binary Search Tree', 'Binary Search Tree'),
(25, 'DSA Exam', 'Data Structures and Algorithms', 'What is the purpose of dynamic programming?', 'Solving optimization problems by breaking them down into simpler subproblems', 'Solving problems by enumerating all possible solutions', 'Finding the shortest path in a graph', 'Sorting a list of elements', 'Solving optimization problems by breaking them down into simpler subproblems');

INSERT INTO `add_question` (`question_id`, `exam_title`, `course`, `question`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `correct_answer`) VALUES
(26, 'DBMS Exam', 'Database Management Systems', 'What is a primary key in a database table?', 'A key that uniquely identifies each row in the table', 'A key that uniquely identifies each column in the table', 'A key that allows duplicate values in the table', 'A key that is used for sorting the table', 'A key that uniquely identifies each row in the table'),
(27, 'DBMS Exam', 'Database Management Systems', 'Which type of join returns only the rows that have matching values in both tables?', 'INNER JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'FULL OUTER JOIN', 'INNER JOIN'),
(28, 'DBMS Exam', 'Database Management Systems', 'What is the purpose of the SQL SELECT statement?', 'To insert new records into a table', 'To update existing records in a table', 'To retrieve data from a database table', 'To delete records from a table', 'To retrieve data from a database table'),
(29, 'DBMS Exam', 'Database Management Systems', 'Which type of relationship exists between two tables when each record in the first table corresponds to multiple records in the second table?', 'One-to-One', 'One-to-Many', 'Many-to-One', 'Many-to-Many', 'One-to-Many'),
(30, 'DBMS Exam', 'Database Management Systems', 'What is the purpose of normalization in database design?', 'To reduce data redundancy and improve data integrity', 'To increase data redundancy and reduce data integrity', 'To speed up query performance', 'To simplify database management', 'To reduce data redundancy and improve data integrity'),
(31, 'DBMS Exam', 'Database Management Systems', 'Which SQL command is used to make changes to the structure of a database table?', 'ALTER TABLE', 'UPDATE TABLE', 'MODIFY TABLE', 'CHANGE TABLE', 'ALTER TABLE'),
(32, 'DBMS Exam', 'Database Management Systems', 'What does ACID stand for in the context of database transactions?', 'All Columns Identified Data', 'Atomicity, Consistency, Isolation, Durability', 'Aggregate, Consistency, Inheritance, Data', 'Automatic Commit, Isolation, Durability', 'Atomicity, Consistency, Isolation, Durability'),
(33, 'DBMS Exam', 'Database Management Systems', 'Which type of index is automatically created by the database management system to improve the performance of frequently executed queries?', 'Clustered Index', 'Non-clustered Index', 'Primary Index', 'Composite Index', 'Clustered Index'),
(34, 'DBMS Exam', 'Database Management Systems', 'What is the purpose of the GROUP BY clause in SQL?', 'To filter rows based on a specified condition', 'To sort the result set in ascending order', 'To group rows that have the same values into summary rows', 'To perform calculations on numeric data in the result set', 'To group rows that have the same values into summary rows'),
(35, 'DBMS Exam', 'Database Management Systems', 'Which SQL command is used to remove a table from a database?', 'DELETE TABLE', 'DROP TABLE', 'REMOVE TABLE', 'ERASE TABLE', 'DROP TABLE');

INSERT INTO `add_question` (`question_id`, `exam_title`, `course`, `question`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `correct_answer`) VALUES
(36, 'OS Exam', 'Operating Systems', 'What is the purpose of an operating system?', 'To manage computer hardware resources and provide services for computer programs', 'To develop software applications', 'To manage network connections', 'To create user interfaces', 'To manage computer hardware resources and provide services for computer programs'),
(37, 'OS Exam', 'Operating Systems', 'Which memory management scheme allows for the relocation of processes to different regions of memory during execution?', 'Fixed Partitioning', 'Dynamic Partitioning', 'Paging', 'Segmentation', 'Paging'),
(38, 'OS Exam', 'Operating Systems', 'What is the role of the kernel in an operating system?', 'To provide an interface for users to interact with the computer system', 'To manage system resources and provide essential services', 'To execute application programs', 'To store data and files permanently', 'To manage system resources and provide essential services'),
(39, 'OS Exam', 'Operating Systems', 'Which scheduling algorithm provides the shortest average waiting time for processes?', 'First-Come, First-Served (FCFS)', 'Shortest Job First (SJF)', 'Round Robin (RR)', 'Priority Scheduling', 'Shortest Job First (SJF)'),
(40, 'OS Exam', 'Operating Systems', 'What is the purpose of virtual memory?', 'To provide a large, contiguous block of memory for applications', 'To allow multiple programs to execute simultaneously', 'To simulate more RAM than physically available', 'To prevent unauthorized access to memory', 'To simulate more RAM than physically available'),
(41, 'OS Exam', 'Operating Systems', 'Which file system feature allows files to be organized into a hierarchy of directories?', 'Encryption', 'Compression', 'Partitioning', 'Directory Structure', 'Directory Structure'),
(42, 'OS Exam', 'Operating Systems', 'What is the main purpose of the process synchronization mechanism in an operating system?', 'To prevent deadlock situations', 'To ensure that only one process can access the CPU at a time', 'To allow multiple processes to communicate and coordinate their actions', 'To allocate system resources to processes', 'To allow multiple processes to communicate and coordinate their actions'),
(43, 'OS Exam', 'Operating Systems', 'Which mechanism is used by the operating system to handle page faults?', 'Demand Paging', 'Prepaging', 'Page Replacement', 'Page Table', 'Page Replacement'),
(44, 'OS Exam', 'Operating Systems', 'What is the function of the file allocation table (FAT) in a file system?', 'To store the contents of files', 'To map file names to their locations on disk', 'To manage free space on disk', 'To organize files into directories', 'To map file names to their locations on disk'),
(45, 'OS Exam', 'Operating Systems', 'Which technique is used by the operating system to protect memory access between processes?', 'Address Translation', 'Shared Memory', 'Interprocess Communication', 'Memory Segmentation', 'Address Translation');

INSERT INTO `add_question` (`question_id`, `exam_title`, `course`, `question`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `correct_answer`) VALUES
(46, 'Python Exam', 'Python Programming', 'What is the output of the following code snippet?\n\n```\nprint(3 * 2 + 1)\n```', '5', '6', '7', '8', '7'),
(47, 'Python Exam', 'Python Programming', 'Which of the following data types is mutable in Python?', 'Tuple', 'String', 'List', 'Dictionary', 'List'),
(48, 'Python Exam', 'Python Programming', 'What does the `range()` function in Python return?', 'A list of integers', 'A range object', 'A tuple of integers', 'A generator object', 'A range object'),
(49, 'Python Exam', 'Python Programming', 'What will be the output of the following code?\n\n```\nprint("Python"[1:])\n```', 'P', 'y', 'thon', 'Python', 'ython'),
(50, 'Python Exam', 'Python Programming', 'Which of the following statements is true about Python?', 'Python is a low-level language', 'Python is a compiled language', 'Python is not suitable for web development', 'Python is an interpreted language', 'Python is an interpreted language'),
(51, 'Python Exam', 'Python Programming', 'What will be the output of the following code?\n\n```\ndef my_func(x=10, y=20):\n    print(x, y)\n\nmy_func(5)\n```', '10 20', '5 20', '10 5', '5 10', '5 20'),
(52, 'Python Exam', 'Python Programming', 'Which keyword is used to define a function in Python?', 'func', 'def', 'function', 'define', 'def'),
(53, 'Python Exam', 'Python Programming', 'What is the correct syntax to open a file named "data.txt" in Python for reading?', 'file = open("data.txt", "r")', 'file = open("data.txt")', 'file = open("data.txt", "read")', 'file = open("data.txt", "w")', 'file = open("data.txt", "r")'),
(54, 'Python Exam', 'Python Programming', 'What will be the output of the following code?\n\n```\nprint("Python"[-3:])\n```', 'hon', 'Pytho', 'Py', 'P', 'hon'),
(55, 'Python Exam', 'Python Programming', 'What is the purpose of the `pass` statement in Python?', 'To terminate the program', 'To create an empty class or function', 'To skip a code block without executing any code', 'To print a message to the console', 'To create an empty class or function');


-- --------------------------------------------------------

--
-- Table structure for table `add_student`
--

CREATE TABLE `add_student` (
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_student`
--

INSERT INTO `add_student` (`std_id`, `std_name`, `gender`, `dob`, `course`, `year`, `email`, `password`) VALUES
(1, 'Student One', 'Male', '2001-07-14', 'Software Engineering', '2nd Year', 'student@gmail.com', '1234');

INSERT INTO `add_student` (`std_id`, `std_name`, `gender`, `dob`, `course`, `year`, `email`, `password`) VALUES
(2, 'Alice Smith', 'Female', '2001-09-15', 'DSA', '2nd Year', 'alice.smith@example.com', 'password2');

INSERT INTO `add_student` (`std_id`, `std_name`, `gender`, `dob`, `course`, `year`, `email`, `password`) VALUES
(3, 'Michael Johnson', 'Male', '2000-12-03', 'DBMS', '4th Year', 'michael.johnson@example.com', 'password3');

INSERT INTO `add_student` (`std_id`, `std_name`, `gender`, `dob`, `course`, `year`, `email`, `password`) VALUES
(4, 'Emily Brown', 'Female', '2003-03-28', 'OS', '1st Year', 'emily.brown@example.com', 'password4');

INSERT INTO `add_student` (`std_id`, `std_name`, `gender`, `dob`, `course`, `year`, `email`, `password`) VALUES
(5, 'David Wilson', 'Male', '2003-07-11', 'Python', '3rd Year', 'david.wilson@example.com', 'password5');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `adm_id` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `special_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`adm_id`, `image`, `full_name`, `contact`, `emailid`, `password`, `special_token`) VALUES
(1, '', 'Admin One', '1234567890', 'admin@email', '1234', 'MthPNTKv0n');  

INSERT INTO `admin_reg` (`adm_id`, `image`, `full_name`, `contact`, `emailid`, `password`, `special_token`) VALUES
(2, '', 'Admin Two', '9876543210', 'admin2@email', '5678', 'VlKGeQF6z1');

INSERT INTO `admin_reg` (`adm_id`, `image`, `full_name`, `contact`, `emailid`, `password`, `special_token`) VALUES
(3, '', 'Admin Three', '4561237890', 'admin3@email', 'abcd', 'NwRIfXc3o2');

INSERT INTO `admin_reg` (`adm_id`, `image`, `full_name`, `contact`, `emailid`, `password`, `special_token`) VALUES
(4, '', 'Admin Four', '7891234560', 'admin4@email', 'efgh', 'TzPsUoYb4m');

INSERT INTO `admin_reg` (`adm_id`, `image`, `full_name`, `contact`, `emailid`, `password`, `special_token`) VALUES
(5, '', 'Admin Five', '6549873210', 'admin5@email', 'ijkl', 'QoWsZdF8aX');



-- --------------------------------------------------------

--
-- Table structure for table `assign_course`
--

CREATE TABLE `assign_course` (
  `assign_id` int(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `create_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_course`
--

INSERT INTO `assign_course` (`assign_id`, `class_name`, `course_name`, `create_time`) VALUES
(1, 'Class 1', 'Software Engineering', '24-06-2022 23:33');

INSERT INTO `assign_course` (`assign_id`, `class_name`, `course_name`, `create_time`) VALUES
(2, 'Class 2', 'Data Structures and Algorithms', '2022-07-24 24:33:00');

INSERT INTO `assign_course` (`assign_id`, `class_name`, `course_name`, `create_time`) VALUES
(3, 'Class 3', 'Database Management Systems', '2022-08-24 18:33:00');

INSERT INTO `assign_course` (`assign_id`, `class_name`, `course_name`, `create_time`) VALUES
(4, 'Class 4', 'Operating Systems', '2022-09-24 13:33:00');

INSERT INTO `assign_course` (`assign_id`, `class_name`, `course_name`, `create_time`) VALUES
(5, 'Class 5', 'Python Programming', '2022-10-24 15:33:00');


-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `id` int(100) NOT NULL,
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_email` varchar(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `answered` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `std_exam_status`
--

CREATE TABLE `std_exam_status` (
  `status_id` int(100) NOT NULL,
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_email` varchar(100) NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `attendence_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `add_course`
--
ALTER TABLE `add_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `add_exam`
--
ALTER TABLE `add_exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `add_question`
--
ALTER TABLE `add_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `add_student`
--
ALTER TABLE `add_student`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `assign_course`
--
ALTER TABLE `assign_course`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_exam_status`
--
ALTER TABLE `std_exam_status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_course`
--
ALTER TABLE `add_course`
  MODIFY `course_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_exam`
--
ALTER TABLE `add_exam`
  MODIFY `exam_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_question`
--
ALTER TABLE `add_question`
  MODIFY `question_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `add_student`
--
ALTER TABLE `add_student`
  MODIFY `std_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `adm_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assign_course`
--
ALTER TABLE `assign_course`
  MODIFY `assign_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `std_exam_status`
--
ALTER TABLE `std_exam_status`
  MODIFY `status_id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

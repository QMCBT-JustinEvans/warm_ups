/*
Query the Name of any student in STUDENTS
who scored higher than 75 Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters
(i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/

USE school_sample;
SELECT student_id, final_grade FROM student_grades
WHERE final_grade > 75
ORDER BY RIGHT (final_grade,2) DESC, student_id ASC 

/* alias */
/* neki query pravo_ime_kolone AS zeljeno_ime */
select name as Ime, surname as Prezime, study_year as Godina 
from students
where Godina > 2;

/* count() */
select count(name) as BrojStudenata from students; 

/* avg() */
select avg(salary) as ProsjecnaPlata from lecturers;

/* sum() */
select sum(salary) as UkupnaPlata from lecturers;

/* multiple functions */
select sum(salary) as UkupnaPlata, avg(salary) as ProsjecnaPlata from lecturers;

select name, salary from lecturers order by salary DESC;

select max(salary) as Najveca, min(salary) as Najmanja from lecturers;

select max(name) as Najveca, min(name) as Najmanja from lecturers;

/* we want to print the course name and the lecturers name */
select courses.name as cn, lecturers.name as ln from courses
inner join course_taught on courses.code = course_taught.course_code
inner join lecturers on course_taught.lecturer_id = lecturers.id;


/* ZADACA*/


/*Write a query to list all the student names and surnames and the names of the courses they have taken*/
select students.name as Ime, students.surname as Prezime, courses.name  as Imekursa from students
inner join Course_taken on students.student_id = Course_taken.student_id
inner join courses on Course_taken.course_code = courses.code;

/*Write a query to calculate the average grade for a single student (you can pick which one
*/
select students.name as ImeStudenta1, avg(grade) as Prosjek from students
inner join Course_taken on students.student_id  = Course_taken.student_id
inner join courses on Course_taken.course_code = courses.code
where students.student_id = 1;

/*Write a query to list student names, names of courses they have taken and the 
names of the lectures who taught those courses.
 For example: Student Name | Lecturer Name | Course Name John Pettruci Cahrles Xavier Intro to Java*/

select students.name as Ime, courses.name as ImeKursa, Lecturers.name as ImePredavaca from students  
inner join Course_taken on students.student_id = Course_taken.student_id
inner join courses on Course_taken.course_code = courses.code
inner join course_taught on courses.code = course_taught.course_code
inner join Lecturers on course_taught.lecturer_id = lecturers.id;

/* Write a .sql to alter the student table to add a column for age*/
ALTER TABLE students ADD COLUMN age smallin;

/* List all the students for a course code (CS101) ordered by their grade*/

/*select students.name as IME, courses.grade as OCJENE from ...*/

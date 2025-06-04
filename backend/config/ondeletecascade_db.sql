ALTER TABLE students_subjects
DROP FOREIGN KEY students_subjects_ibfk_1;

ALTER TABLE students_subjects
ADD CONSTRAINT students_subjects_ibfk_1
FOREIGN KEY (student_id) REFERENCES students(id)
ON DELETE RESTRICT;

ALTER TABLE students_subjects
DROP FOREIGN KEY students_subjects_ibfk_2;

ALTER TABLE students_subjects
ADD CONSTRAINT students_subjects_ibfk_2
FOREIGN KEY (subject_id) REFERENCES subjects(id)
ON DELETE RESTRICT;

//RESTRICT impide que se borre si hay registros relacionados.
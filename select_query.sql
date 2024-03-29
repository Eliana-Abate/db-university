/* 1. Selezionare tutti gli studenti nati nel 1990 */

SELECT `name`, `surname`, `date_of_birth`
FROM `students` 
WHERE YEAR(`date_of_birth`) = 1990;

/* 2.  Selezionare tutti i corsi che valgono più di 10 crediti */

SELECT `name`, `cfu`
FROM `courses`
WHERE `cfu` > 10;
ORDER BY `cfu` ASC;

/* 3. Selezionare tutti gli studenti che hanno più di 30 anni */

SELECT `name`, `surname`, `date_of_birth`
FROM `students` 
WHERE `date_of_birth` <= '1990-09-28'
ORDER BY `date_of_birth` DESC;
--* alternative: DATE_SUB o TIMESTAMPDIFF o DATE_DIFF(ma c'é il problema dei bisestili in quest'ultima)

/* 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea */

SELECT `name`, `period`, `year`
FROM `courses` 
WHERE `period` = 'I semestre' AND `year` = '1';


/* 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020  */

SELECT `course_id`, `date`, `hour`
FROM `exams` 
WHERE `date` = '2020-06-20' AND `hour` > '14:00'
ORDER BY `hour` ASC;

/* 6. Selezionare tutti i corsi di laurea magistrale */

SELECT  `name`, `level` 
FROM `degrees` 
WHERE `level` = 'magistrale';

/* 7. Da quanti dipartimenti è composta l'università? */

SELECT COUNT(*)
FROM `departments`;

/* 8. Quanti sono gli insegnanti che non hanno un numero di telefono? */

SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL;

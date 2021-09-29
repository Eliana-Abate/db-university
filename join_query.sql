/* 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name` AS `Corso_di_Laurea`
FROM `students`
JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

/* 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze */
SELECT `degrees`.`name` AS `Corso_di_Laurea`, `departments`.`name` AS `Dipartimento`
FROM `degrees`
JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

/* 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) */
SELECT `courses`.`name` AS `Materia`, `teacher_id` AS `Professore`
FROM `course_teacher`
JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`name` = 'Fulvio' AND `teachers`.`surname` = 'Amato';

/* 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome */
SELECT `students`.`surname`, `students`.`name`, `students`.`registration_number`, `degrees`.*, `departments`.`name` AS `DIPARTIMENTO`
FROM `students`
JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id` 
ORDER BY `students`.`surname` ASC, `students`.`name` ASC;

/* 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti */
SELECT `degrees`.`name`  AS `Corso_di_Laurea`, `courses`.`name` AS `Materie`, `teachers`.`surname` AS `Cognome_Professore`, `teachers`.`name` AS `Nome_Professore`
FROM `degrees`
JOIN `courses`
ON `courses`.`degree_id` = `degrees`.`id`
JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
ORDER BY `degrees`.`name`;

/* 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54) */
SELECT `teachers`.`surname` AS `Cognome_Professore`, `teachers`.`name` AS `Nome_Professore`, `departments`.`name` AS `Dipartimento`
FROM `teachers`
JOIN `course_teacher`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `degrees`
ON `courses`.`degree_id`= `degrees`.`id` 
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Matematica';

/* 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami */


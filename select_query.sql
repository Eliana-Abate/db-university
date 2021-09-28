/* 1. Selezionare tutti gli studenti nati nel 1990 */

SELECT `name`, `surname`, `date_of_birth`
FROM `students` 
WHERE YEAR(`date_of_birth`) = '1990';

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

/* 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea */

SELECT `name`, `period`, `year`
FROM `courses` 
WHERE `period` = 'I semestre' AND `year` = '1';


/* 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020  */
/* 6. Selezionare tutti i corsi di laurea magistrale */
/* 7. Da quanti dipartimenti è composta l'università? */
/* 8. Quanti sono gli insegnanti che non hanno un numero di telefono? */
/* 1. Contare quanti iscritti ci sono stati ogni anno */

SELECT COUNT(*) AS `iscritti`, YEAR(`enrolment_date`) AS `year`
FROM `students` 
GROUP BY `year`;

/* 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio */ 

SELECT COUNT(*) AS `num_insegnanti`, `office_address` AS `sede_ufficio`
FROM `teachers` 
GROUP BY `sede_ufficio`;

/* 3. Calcolare la media dei voti di ogni appello d'esame */

/* 4. Contare quanti corsi di laurea ci sono per ogni dipartimento */
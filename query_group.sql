--1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) as `anno_iscrizione`, COUNT(`id`)
FROM `students`
GROUP BY `anno_iscrizione`;


--2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_address` as `indirizzo_ufficio`, COUNT(`id`)
FROM `teachers`
GROUP BY  `indirizzo_ufficio`;

--3. Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS `media_voti`, `exam_id`
FROM `exam_student`
GROUP BY `exam_id`;


--4. Contare quanti corsi di laurea ci sono per ogni dipartimento
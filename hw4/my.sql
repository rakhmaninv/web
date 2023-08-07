
CREATE TABLE classmates (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    birth_date DATE NOT NULL,
    adress TEXT NOT NULL
);

INSERT INTO classmates(name, birth_date, adress) VALUES ('Мансур Джумаев', '1990-11-05', 'Москва');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Ленар Гайфутдинов', '1999-05-22', 'Самара');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Алексей Зотов', '2001-06-10', 'Сочи');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Екатерина Пирогова', '1995-09-15', 'Москва');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Владимир Ромчук', '1998-04-15', 'Москва');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Егор Бойко', '1993-11-27', 'Самара');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Яков Журавлев', '1993-01-19', 'Новосибирск');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Станислав Сергеев', '1989-10-11', 'Москва');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Евгений Усачев', '1997-07-01', 'Москва');
INSERT INTO classmates(name, birth_date, adress) VALUES ('Роман Макулин', '1991-05-18', 'Новосибирск');


SELECT * FROM
(
  SELECT id, name, adress, TIMESTAMPDIFF(YEAR, birth_date, now()) as age 
  FROM classmates
) sq
WHERE age BETWEEN 18 AND 29 AND 
    adress = 'Москва';

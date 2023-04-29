SELECT Н_ТИПЫ_ВЕДОМОСТЕЙ.НАИМЕНОВАНИЕ, Н_ВЕДОМОСТИ.ДАТА
	FROM Н_ТИПЫ_ВЕДОМОСТЕЙ
	RIGHT JOIN Н_ВЕДОМОСТИ ON Н_ВЕДОМОСТИ.ТВ_ИД = Н_ТИПЫ_ВЕДОМОСТЕЙ.ИД
	WHERE Н_ТИПЫ_ВЕДОМОСТЕЙ.ИД > 2
		AND Н_ВЕДОМОСТИ.ЧЛВК_ИД > 117219
		AND Н_ВЕДОМОСТИ.ЧЛВК_ИД < 153285;


SELECT Н_ЛЮДИ.ИД, Н_ВЕДОМОСТИ.ДАТА, Н_СЕССИЯ.УЧГОД
	FROM Н_ЛЮДИ
	INNER JOIN Н_ВЕДОМОСТИ ON Н_ВЕДОМОСТИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
	INNER JOIN Н_СЕССИЯ ON Н_СЕССИЯ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
	WHERE Н_ЛЮДИ.ИМЯ > 'Иван'
		AND Н_ВЕДОМОСТИ.ДАТА > '2006-06-18';



CREATE INDEX ON Н_ВЕДОМОСТИ USING HASH(ЧЛВК_ИД);
CREATE INDEX ON Н_ЛЮДИ USING HASH(ИД);
CREATE INDEX ON Н_СЕССИЯ USING HASH(ЧЛВК_ИД);

CREATE INDEX ON Н_ЛЮДИ USING BTREE(ИМЯ);
CREATE INDEX ON Н_ВЕДОМОСТИ USING BTREE(ДАТА);



CREATE INDEX ON Н_ТИПЫ_ВЕДОМОСТЕЙ USING HASH(ИД);
CREATE INDEX ON Н_ВЕДОМОСТИ USING HASH(ТВ_ИД);
CREATE INDEX ON Н_ВЕДОМОСТИ USING BTREE(ЧЛВК_ИД);



SELECT COUNT (*) 
FROM (SELECT Н_ЛЮДИ.ИМЯ FROM Н_ЛЮДИ
	JOIN Н_УЧЕНИКИ
	ON Н_ЛЮДИ.ИД = Н_УЧЕНИКИ.ЧЛВК_ИД
	WHERE Н_УЧЕНИКИ.ГРУППА = '3103' AND Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ > '2003-03-16 00:00:00'
	) foo;
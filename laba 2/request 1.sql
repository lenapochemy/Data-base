SELECT Н_ЛЮДИ.ИД, Н_СЕССИЯ.УЧГОД
FROM Н_ЛЮДИ
RIGHT JOIN Н_СЕССИЯ
ON Н_ЛЮДИ.ИД = Н_СЕССИЯ.ЧЛВК_ИД
WHERE Н_ЛЮДИ.ОТЧЕСТВО < 'Георгиевич' AND Н_СЕССИЯ.ДАТА < '2003-01-04';

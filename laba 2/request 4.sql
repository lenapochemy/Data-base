SELECT Н_ЛЮДИ.ФАМИЛИЯ, COUNT(Н_ЛЮДИ.ФАМИЛИЯ)
FROM Н_ЛЮДИ
JOIN Н_УЧЕНИКИ ON Н_ЛЮДИ.ИД = Н_УЧЕНИКИ.ЧЛВК_ИД
JOIN Н_ПЛАНЫ ON Н_УЧЕНИКИ.ПЛАН_ИД = Н_ПЛАНЫ.ИД
JOIN Н_ОТДЕЛЫ USING (ОТД_ИД)
WHERE Н_ОТДЕЛЫ.КОРОТКОЕ_ИМЯ = 'ВТ'
GROUP BY Н_ЛЮДИ.ФАМИЛИЯ
HAVING COUNT(Н_ЛЮДИ.ФАМИЛИЯ) = 30;
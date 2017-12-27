/****** Script for SelectTopNRows command from SSMS  ******/
SELECT COUNT(1) AS count, Userinfo.NAME
FROM cmpp.dbo.CmSTATINFO INNER JOIN
      Userinfo ON cmpp.dbo.CmSTATINFO.mobile = Userinfo.Num
WHERE (cmpp.dbo.CmSTATINFO.smsport = '106585841') AND (DATEDIFF(DAY, 
      cmpp.dbo.CmSTATINFO.sendtime, GETDATE()) <= 7)
GROUP BY Userinfo.NAME
ORDER BY count DESC

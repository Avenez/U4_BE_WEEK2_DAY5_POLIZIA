--select DataViolazione, Importo, DecurtamentoPunti from verbale where DataViolazione = '2024-01-05'

/*
CREATE PROCEDURE FindViolazioneXData (@Data date)
AS
BEGIN
 select DataViolazione, Importo, DecurtamentoPunti 
 from verbale 
 where DataViolazione = @Data;
END
GO
*/

--Infine si vogliono creare le seguenti storedProcedure: 
--1) Una SP parametrica che, ricevendo in input un anno, visualizzi l’elenco delle contravvenzioni effettuate in un quel determinato anno, 
/*
CREATE PROCEDURE VerbaliXAnno (@Anno VARCHAR(4))
AS
BEGIN
    SELECT * FROM VERBALE 
	WHERE CONVERT(VARCHAR(4), YEAR(DataViolazione)) = @Anno;
END
GO
*/

--2) Una SP parametrica che, ricevendo in input una data, visualizzi il totale dei punti decurtati in quella determinata data
/*
CREATE PROCEDURE TotalePuntiXData (@Data Date)
AS
BEGIN

SELECT DataTrascrizioneVerbale, 
Count(DecurtamentoPunti) AS Totale_Punti_Decurtati_x_Data 
FROM verbale 
WHERE DataTrascrizioneVerbale = @Data group by DataTrascrizioneVerbale;

END
GO
*/

--3)Una SP che consenta di eliminare un determinato verbale identificandolo con il proprio identificativo.
/*
CREATE PROCEDURE DeleteVerbale (@NumeroVerbale int)
AS
BEGIN

DELETE FROM VERBALE 
WHERE idverbale = @NumeroVerbale;

END
GO
*/



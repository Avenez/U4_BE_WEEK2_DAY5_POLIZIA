--1. Conteggio dei verbali trascritti, 
--select count(*) as NUMERO_VERBALI from verbale;

--2. Conteggio dei verbali trascritti raggruppati per anagrafe, 
--select idanagrafica, count(*) as VERBALI_x_PERSONA from VERBALE group by idanagrafica;

--3. Conteggio dei verbali trascritti raggruppati per tipo di violazione, 
--select idviolazione, count(*) as VERBALI_x_VIOLAZIONI from VERBALE group by idviolazione;

--4. Totale dei punti decurtati per ogni anagrafe, 
--select idanagrafica, sum(DecurtamentoPunti) as totale_punti_decurtati from VERBALE group by idanagrafica;

--5. Cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati per tutti gli anagrafici residenti a Palermo,
--SELECT Cognome, Nome, DataViolazione, IndirizzoViolazione, Importo, DecurtamentoPunti FROM anagrafica AS AN LEFT JOIN VERBALE AS VE ON AN.idanagrafica = VE.idanagrafica WHERE AN.Città = 'Palermo'  

--6. Cognome, Nome, Indirizzo, Data violazione, importo e punti decurtati per le violazioni fatte tra il febbraio 2009 e luglio 2009, 
--SELECT Cognome, Nome, IndirizzoViolazione, DataViolazione, Importo FROM anagrafica AS AN LEFT JOIN VERBALE AS VE ON AN.idanagrafica = VE.idanagrafica where CONVERT(VARCHAR(25), VE.DataTrascrizioneVerbale, 126) between '2023-02%' and '2023-07%'

--7. Totale degli importi per ogni anagrafico, 
--SELECT idanagrafica, sum(Importo) AS importo_x_persona FROM VERBALE GROUP BY idanagrafica;
--select Nome, Cognome, sum(Importo) as importo_x_persona from VERBALE as VE left join anagrafica as AN on VE.idanagrafica = AN.idanagrafica group by Nome, Cognome

--8. Visualizzazione di tutti gli anagrafici residenti a Palermo,
--select * from anagrafica where città = 'Palermo'

--9. Query parametrica che visualizzi Data violazione, Importo e decurta mento punti relativi ad una certa data, 
--select DataViolazione, Importo, DecurtamentoPunti from verbale where DataViolazione = '2024-01-05'
--EXEC FindViolazioneXData @Data = '2024-01-05';

--10. Conteggio delle violazioni contestate raggruppate per Nominativo dell’agente di Polizia, 
--select Nominativo_Agente, count(idviolazione) as Num_Violazioni from verbale group by Nominativo_Agente;


--11. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino il decurtamento di 5 punti, 
--select Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti from ANAGRAFICA as AN LEFT JOIN VERBALE as VE on AN.idanagrafica = VE.idanagrafica where DecurtamentoPunti >3 order by DecurtamentoPunti desc ;

--12. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino l’importo di 400 euro. 
--select Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti from ANAGRAFICA as AN LEFT JOIN VERBALE as VE on AN.idanagrafica = VE.idanagrafica where Importo > 80 order by Importo asc;


--1B)
--EXEC VerbaliXAnno @Anno = 2024

--2B)
--EXEC TotalePuntiXData @Data = '2023-01-06'

--3B) 
--EXEC DeleteVerbale @NumeroVerbale = 40;

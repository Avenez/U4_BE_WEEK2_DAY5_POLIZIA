-- Creazione della tabella ANAGRAFICA
CREATE TABLE ANAGRAFICA (
    idanagrafica INT PRIMARY KEY,
    Cognome NVARCHAR(50) NOT NULL,
    Nome NVARCHAR(50) NOT NULL,
    Indirizzo NVARCHAR(100) NOT NULL,
    Città NVARCHAR(50) NOT NULL,
    CAP NVARCHAR(10) NOT NULL,
    Cod_Fisc NVARCHAR(16) NOT NULL,
	Punti int NOT NULL DEFAULT 20
);

-- Creazione della tabella TIPO VIOLAZIONE
CREATE TABLE TIPO_VIOLAZIONE (
    idviolazione INT PRIMARY KEY,
    descrizione NVARCHAR(100) NOT NULL
);

-- Creazione della tabella VERBALE
CREATE TABLE VERBALE (
    idverbale INT PRIMARY KEY,
    DataViolazione DATE NOT NULL,
    IndirizzoViolazione VARCHAR(100) NOT NULL,
    Nominativo_Agente VARCHAR(100) NOT NULL, 
    DataTrascrizioneVerbale DATE NOT NULL,
    Importo MONEY NOT NULL,
    DecurtamentoPunti INT NOT NULL,
    idanagrafica INT NOT NULL,
    idviolazione INT NOT NULL,
    FOREIGN KEY (idanagrafica) REFERENCES ANAGRAFICA(idanagrafica) ,
    FOREIGN KEY (idviolazione) REFERENCES TIPO_VIOLAZIONE(idviolazione)
);

-- Inserimento dei dati per la tabella ANAGRAFICA
INSERT INTO ANAGRAFICA (idanagrafica, Cognome, Nome, Indirizzo, Città, CAP, Cod_Fisc) 
VALUES
    (1, 'Rossi', 'Mario', 'Via Roma 1', 'Roma', '00100', 'RSSMRA01A01H501A'),
    (2, 'Bianchi', 'Luigi', 'Corso Italia 20', 'Milano', '20121', 'BNCGLG02B02I452B'),
    (3, 'Verdi', 'Giuseppe', 'Via Dante 15', 'Napoli', '80100', 'VRDGPP03C03L712C'),
    (4, 'Ferrari', 'Giovanna', 'Piazza Garibaldi 5', 'Firenze', '50123', 'FRRGVN04D04M823D'),
    (5, 'Russo', 'Maria', 'Largo Kennedy 3', 'Palermo', '90100', 'RSSMRA05E05N944E'),
    (6, 'Romano', 'Antonio', 'Via San Martino 12', 'Torino', '10100', 'RMNNNT06F06O055F'),
    (7, 'Gallo', 'Angela', 'Piazza Vittorio 8', 'Bologna', '40123', 'GLLGNA07G07P166G'),
    (8, 'Costa', 'Roberto', 'Corso Vittorio Emanuele 25', 'Genova', '16100', 'CSTRRT08H08Q277H'),
    (9, 'Greco', 'Anna', 'Via XX Settembre 7', 'Bari', '70100', 'GRCNNA09I09R388I'),
    (10, 'Conti', 'Paolo', 'Viale Kennedy 21', 'Catania', '95100', 'CNTPL10L10S499L'),
    (11, 'De Luca', 'Giorgio', 'Via Cavour 9', 'Venizia', '30100', 'DLCGRG11M11T510M'),
    (12, 'Moretti', 'Sara', 'Largo Garibaldi 17', 'Trieste', '34100', 'MRTSRA12N12U611N'),
    (13, 'Barbieri', 'Luca', 'Via Leopardi 4', 'Verona', '37100', 'BRBLCU13O13V722O'),
    (14, 'Fontana', 'Alessia', 'Piazza Duomo 29', 'Messina', '98100', 'FNTNLS14P14Z833P'),
    (15, 'Mancini', 'Giovanni', 'Corso Garibaldi 6', 'Padova', '35100', 'MNCNGV15R15A944R'),
    (16, 'Caruso', 'Daniela', 'Via Mazzini 11', 'Taranto', '74100', 'CRSDNL16S16B055S'),
    (17, 'Ferrara', 'Marco', 'Piazza Kennedy 32', 'Ancona', '60100', 'FRRMRC17T17C166T'),
    (18, 'Martini', 'Silvia', 'Viale Marconi 18', 'Pescara', '65100', 'MRTNVS18U18D277U'),
    (19, 'Lombardi', 'Paola', 'Largo Garibaldi 22', 'Cagliari', '09100', 'LMBRDP19V19F388V'),
    (20, 'Marino', 'Francesco', 'Via Umberto I 14', 'Reggio Calabria', '89100', 'MRNFR20H20G499H');

-- Inserimento dei dati per la tabella TIPO VIOLAZIONE
INSERT INTO TIPO_VIOLAZIONE (idviolazione, descrizione)
VALUES
    (1, 'Eccesso di velocità'),
    (2, 'Sosta vietata'),
    (3, 'Guida senza cintura di sicurezza'),
    (4, 'Attraversamento col semaforo rosso'),
    (5, 'Mancata revisione del veicolo'),
    (6, 'Guida in stato di ebrezza'),
    (7, 'Utilizzo del telefono cellulare durante la guida'),
    (8, 'Guida senza patente'),
    (9, 'Manutenzione inadeguata del veicolo'),
    (10, 'Guida contromano');

-- Inserimento dei dati per la tabella VERBALE
INSERT INTO VERBALE (idverbale, DataViolazione, IndirizzoViolazione, Nominativo_Agente, DataTrascrizioneVerbale, Importo, DecurtamentoPunti, idanagrafica, idviolazione)
VALUES
    (1, '2023-01-05', 'Via Roma 10', 'Agente Rossi', '2023-01-06', 100, 3, 1, 1),
    (2, '2023-02-10', 'Via Verdi 5', 'Agente Bianchi', '2023-02-11', 80, 2, 2, 2),
    (3, '2023-03-15', 'Corso Italia 30', 'Agente Verdi', '2023-03-16', 120, 4, 3, 3),
    (4, '2023-04-20', 'Piazza Garibaldi 3', 'Agente Ferrari', '2023-04-21', 150, 5, 4, 4),
    (5, '2023-05-25', 'Largo Kennedy 5', 'Agente Russo', '2023-05-26', 90, 2, 5, 5),
    (6, '2023-06-30', 'Via San Martino 15', 'Agente Romano', '2023-07-01', 110, 3, 6, 6),
    (7, '2023-07-05', 'Piazza Vittorio 10', 'Agente Gallo', '2023-07-06', 70, 1, 7, 7),
    (8, '2023-08-10', 'Corso Vittorio Emanuele 30', 'Agente Costa', '2023-08-11', 130, 4, 8, 8),
    (9, '2023-09-15', 'Via XX Settembre 9', 'Agente Greco', '2023-09-16', 85, 2, 9, 9),
    (10, '2023-10-20', 'Viale Kennedy 25', 'Agente Conti', '2023-10-21', 95, 2, 10, 10),
    (11, '2023-11-25', 'Via Cavour 19', 'Agente De Luca', '2023-11-26', 100, 3, 11, 1),
    (12, '2023-12-30', 'Largo Garibaldi 19', 'Agente Moretti', '2023-12-31', 75, 1, 12, 2),
    (13, '2024-01-05', 'Via Leopardi 10', 'Agente Barbieri', '2024-01-06', 110, 3, 13, 3),
    (14, '2024-02-10', 'Piazza Duomo 35', 'Agente Fontana', '2024-02-11', 140, 4, 14, 4),
    (15, '2024-03-15', 'Corso Garibaldi 10', 'Agente Mancini', '2024-03-16', 80, 2, 15, 5),
    (16, '2024-04-20', 'Via Mazzini 15', 'Agente Caruso', '2024-04-21', 120, 4, 16, 6),
    (17, '2024-05-25', 'Piazza Kennedy 35', 'Agente Ferrara', '2024-05-26', 100, 3, 17, 7),
    (18, '2024-06-30', 'Viale Marconi 20', 'Agente Martini', '2024-07-01', 90, 2, 18, 8),
    (19, '2024-07-05', 'Largo Garibaldi 24', 'Agente Lombardi', '2024-07-06', 110, 3, 19, 9),
    (20, '2024-08-10', 'Via Umberto I 19', 'Agente Marino', '2024-08-11', 130, 4, 20, 10),
    (21, '2024-09-15', 'Via Roma 15', 'Agente Rossi', '2024-09-16', 95, 2, 1, 1),
    (22, '2024-10-20', 'Via Verdi 10', 'Agente Bianchi', '2024-10-21', 105, 3, 2, 2),
    (23, '2024-11-25', 'Corso Italia 35', 'Agente Verdi', '2024-11-26', 115, 3, 3, 3),
    (24, '2024-12-30', 'Piazza Garibaldi 7', 'Agente Ferrari', '2024-12-31', 120, 4, 4, 4),
    (25, '2025-01-05', 'Largo Kennedy 7', 'Agente Russo', '2025-01-06', 80, 2, 5, 5),
    (26, '2025-02-10', 'Via San Martino 18', 'Agente Romano', '2025-02-11', 100, 3, 6, 6),
    (27, '2025-03-15', 'Piazza Vittorio 12', 'Agente Gallo', '2025-03-16', 90, 2, 7, 7),
    (28, '2025-04-20', 'Corso Vittorio Emanuele 35', 'Agente Costa', '2025-04-21', 110, 3, 8, 8),
    (29, '2025-05-25', 'Via XX Settembre 11', 'Agente Greco', '2025-05-26', 100, 3, 9, 9),
    (30, '2025-06-30', 'Viale Kennedy 29', 'Agente Conti', '2025-07-01', 120, 4, 10, 10),
    (31, '2025-07-05', 'Via Cavour 21', 'Agente De Luca', '2025-07-06', 85, 2, 11, 1),
    (32, '2025-08-10', 'Largo Garibaldi 25', 'Agente Moretti', '2025-08-11', 95, 2, 12, 2),
    (33, '2025-09-15', 'Via Leopardi 15', 'Agente Barbieri', '2025-09-16', 105, 3, 13, 3),
    (34, '2025-10-20', 'Piazza Duomo 39', 'Agente Fontana', '2025-10-21', 115, 3, 14, 4),
    (35, '2025-11-25', 'Corso Garibaldi 15', 'Agente Mancini', '2025-11-26', 120, 4, 15, 5),
    (36, '2025-12-30', 'Via Mazzini 18', 'Agente Caruso', '2025-12-31', 130, 4, 16, 6),
    (37, '2026-01-05', 'Piazza Kennedy 39', 'Agente Ferrara', '2026-01-06', 140, 4, 17, 7),
    (38, '2026-02-10', 'Viale Marconi 25', 'Agente Martini', '2026-02-11', 100, 3, 18, 8),
    (39, '2026-03-15', 'Largo Garibaldi 29', 'Agente Lombardi', '2026-03-16', 110, 3, 19, 9),
    (40, '2026-04-20', 'Via Umberto I 24', 'Agente Marino', '2026-04-21', 120, 4, 20, 10);

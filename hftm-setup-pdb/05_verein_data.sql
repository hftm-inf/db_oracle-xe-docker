/*================================================*/
/* Datenbanken II                                 */
/* Vereinsdatenbank                               */
/* Beispieldaten                                  */
/*================================================*/

-- The Base Image is using a Pluggable Database (PDB).
alter session set container=xepdb1;

--
-- --------------
-- table FUNKTION
-- --------------
--
INSERT INTO vereinuser.funktion 
       (funkid, bezeichner) 
VALUES (1, 'Praesidium');
--       
INSERT INTO vereinuser.funktion
       (funkid, bezeichner)
VALUES (2, 'Vizepraesidium');
--
INSERT INTO vereinuser.funktion
       (funkid, bezeichner)
VALUES (3, 'Kasse');
--
INSERT INTO vereinuser.funktion
       (funkid, bezeichner)
VALUES (4, 'Beisitz');
--
INSERT INTO vereinuser.funktion
       (funkid, bezeichner)
VALUES (5, 'PR');
--
--
-- -------------
-- table SPONSOR
-- -------------
--
INSERT INTO vereinuser.sponsor 
       (sponid, name, strasse_nr, plz, ort, spendentotal)
VALUES (1, 'Hasler AG', 'Zelgweg 9', '2540',
        'Grenchen', 1270);
--
INSERT INTO vereinuser.sponsor 
       (sponid, name, strasse_nr, plz, ort, spendentotal)
VALUES (2, 'Pauker Druck', 'Solothurnstr. 19', '2544',
        'Bettlach',2750);
--
INSERT INTO vereinuser.sponsor 
       (sponid, name, strasse_nr, plz, ort, spendentotal)
VALUES (3, 'Meyer Toni', 'Rothstr. 22', '4500',
        'Solothurn',750);
--
--
-- ------------
-- table STATUS
-- ------------
--
INSERT INTO vereinuser.status 
       (statid, bezeichner, beitrag)
VALUES (1, 'Junior', 0);
--
INSERT INTO vereinuser.status 
       (statid, bezeichner, beitrag)
VALUES (2, 'Aktiv', 50);
--
INSERT INTO vereinuser.status 
       (statid, bezeichner, beitrag)
VALUES (3, 'Ehemalig', null);
--       
INSERT INTO vereinuser.status 
       (statid, bezeichner, beitrag)
VALUES (4, 'Passiv', 30);
--
INSERT INTO vereinuser.status 
       (statid, bezeichner, beitrag)
VALUES (5, 'Helfer', null);
--
INSERT INTO vereinuser.status 
       (statid, bezeichner, beitrag)
VALUES (6, 'Extern', null);
--
--
-- ------------
-- table PERSON
-- ------------
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (1, 3, 'Niiranen', 'Ulla', 'Nordstr. 113', '2500', 
        'Biel', '1', NULL, TO_DATE('11-11-2007','DD-MM-YYYY'),
        TO_DATE('31-03-2011','DD-MM-YYYY'), NULL);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (2, 3, 'Wendel', 'Otto', 'Sigriststr. 9', '4500',
        'Solothurn', '1', NULL, TO_DATE('01-01-2011','DD-MM-YYYY'),
        TO_DATE('30-11-2014','DD-MM-YYYY'), NULL);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (3, 2, 'Meyer', 'Dominik', 'Rainstr. 13', '4528',
        'Zuchwil', '1', NULL, TO_DATE('01-01-2011','DD-MM-YYYY'),
        NULL, NULL);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (4, 2, 'Meyer', 'Petra', 'Rainstr. 13', '4528',
        'Zuchwil', '1', NULL, TO_DATE('15-02-2009','DD-MM-YYYY'),
        NULL, NULL);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (5, 2, 'Tamburino', 'Mario', 'Solothurnstr. 96', '2540',
        'Grenchen', '0', NULL, TO_DATE('30-09-2014','DD-MM-YYYY'),
        NULL, 4);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (6, 2, 'Bregger', 'Beni', 'Sportstr. 2', '2540',
        'Grenchen', '1', NULL, TO_DATE('21-05-2012','DD-MM-YYYY'),
        NULL, 4);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (7, 5, 'Luder', 'Kevin', 'Forstweg 14', '2545',
        'Zuchwil', '1', 'Klaushock', NULL, NULL, NULL);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (8, 6, 'Frei', 'Barbara', 'Gartenstr.1', '2540',
        'Grenchen', '1', NULL, NULL, NULL, NULL);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (9, 6, 'Huber', 'Felix', 'Eichmatt 7', '2545',
        'Selzach', '1', NULL, NULL, NULL, NULL);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (10, 1, 'Cadola', 'Leo', 'Sportstr. 2', '4500',
        'Solothurn', '1', NULL, TO_DATE('01-10-2013','DD-MM-YYYY'),
        NULL, NULL);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (11, 1, 'Bart', 'Sabine', 'Bernstr. 15', '2540',
        'Grenchen', '1', NULL, TO_DATE('12-07-2014','DD-MM-YYYY'),
        NULL, 10);
--
INSERT INTO vereinuser.person 
       (persid, statid, name, vorname, strasse_nr, plz, ort,
        bezahlt, bemerkungen, eintritt, austritt, mentorid)
VALUES (12, 2, 'Gruber', 'Romy', 'Gladbaechli 3', '2545',
        'Selzach', '0', NULL, TO_DATE('29-11-2009','DD-MM-YYYY'),
        NULL, NULL);
--
--
-- ------------
-- table ANLASS
-- ------------
--
INSERT INTO vereinuser.anlass 
       (anlaid, bezeichner, ort, datum, kosten, orgid)
VALUES (1, 'GV', 'Solothurn', 
        TO_DATE('31-03-2013','DD-MM-YYYY'), 200, 2);
--
INSERT INTO vereinuser.anlass 
       (anlaid, bezeichner, ort, datum, kosten, orgid)
VALUES (2, 'Vorstandssitzung', 'Grenchen',
        TO_DATE('17-01-2014','DD-MM-YYYY'), NULL, 12);
--
INSERT INTO vereinuser.anlass 
       (anlaid, bezeichner, ort, datum, kosten, orgid)
VALUES (3, 'GV', 'Bettlach',
        TO_DATE('30-03-2013','DD-MM-YYYY'), 200, 6);
--
INSERT INTO vereinuser.anlass 
       (anlaid, bezeichner, ort, datum, kosten, orgid)
VALUES (4, 'Klaushock', 'Bettlach',
        TO_DATE('06-12-2014','DD-MM-YYYY'), 150, 7);
--
INSERT INTO vereinuser.anlass 
       (anlaid, bezeichner, ort, datum, kosten, orgid)
VALUES (5, 'Vorstandssitzung', 'Grenchen',
        TO_DATE('21-01-2015','DD-MM-YYYY'), NULL, 12);
--
INSERT INTO vereinuser.anlass 
       (anlaid, bezeichner, ort, datum, kosten, orgid)
VALUES (6, 'Turnier', 'Biel',
        TO_DATE('28-02-2014','DD-MM-YYYY'), 1020, 10);
--
INSERT INTO vereinuser.anlass 
       (anlaid, bezeichner, ort, datum, kosten, orgid)
VALUES (7, 'GV', 'Grenchenberg',
        TO_DATE('29-03-2015','DD-MM-YYYY'), 250, 4);
--
INSERT INTO vereinuser.anlass 
       (anlaid, bezeichner, ort, datum, kosten, orgid)
VALUES (8, 'Vorstandssitzung', 'Grenchen',
        TO_DATE('19-01-2015','DD-MM-YYYY'), NULL, 6);
--
--
-- ------------
-- table SPENDE
-- ------------
--
INSERT INTO vereinuser.spende
       (sponid, spenid, anlaid, bezeichner, datum, betrag)
VALUES (1, 5, 6, 'Apéro', 
        TO_DATE('02-02-2015','DD-MM-YYYY'), 720);
--
INSERT INTO vereinuser.spende
       (sponid, spenid, anlaid, bezeichner, datum, betrag)
VALUES (1, 6, NULL, 'Defizittilgung',
        TO_DATE('13-04-2015','DD-MM-YYYY'), 550);
--
INSERT INTO vereinuser.spende
       (sponid, spenid, anlaid, bezeichner, datum, betrag)
VALUES (2, 3, 7, 'Getraenke',
        TO_DATE('05-03-2015','DD-MM-YYYY'), 600);
--
INSERT INTO vereinuser.spende
       (sponid, spenid, anlaid, bezeichner, datum, betrag)
VALUES (2, 4, 6, 'Plakate',
        TO_DATE('11-03-2015','DD-MM-YYYY'), 300);
--
INSERT INTO vereinuser.spende
       (sponid, spenid, anlaid, bezeichner, datum, betrag)
VALUES (2, 5, NULL, 'Defizittilgung',
        TO_DATE('13-04-2015','DD-MM-YYYY'), 750);
--
INSERT INTO vereinuser.spende
       (sponid, spenid, anlaid, bezeichner, datum, betrag)
VALUES (3, 1, 4, 'Gluehwein',
        TO_DATE('29-11-2014','DD-MM-YYYY'), 200);
--
INSERT INTO vereinuser.spende
       (sponid, spenid, anlaid, bezeichner, datum, betrag)
VALUES (3, 2, 7, 'Unterhaltungsmusik',
        TO_DATE('23-02-2015','DD-MM-YYYY'), 550);
--
--
-- ----------------
-- table TEILNEHMER
-- ----------------
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (3, 1);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (4, 1);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (6, 1);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (12, 1);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (2, 2);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (3, 2);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (4, 2);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (2, 3);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (4, 3);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (6, 3);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (12, 3);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (3, 5);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (12, 5);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (2, 7);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (3, 7);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (6, 7);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (4, 8);
--
INSERT INTO vereinuser.teilnehmer
       (persid, anlaid)
VALUES (12, 8);
--
--
-- --------------------
-- table SPONSORENKONTAKT
-- --------------------
--
INSERT INTO vereinuser.sponsorenkontakt
       (persid, sponid)
VALUES (8, 1);
--
INSERT INTO vereinuser.sponsorenkontakt
       (persid, sponid)
VALUES (4, 2);
--
INSERT INTO vereinuser.sponsorenkontakt
       (persid, sponid)
VALUES (9, 2);
--
INSERT INTO vereinuser.sponsorenkontakt
       (persid, sponid)
VALUES (3, 3);
--
INSERT INTO vereinuser.sponsorenkontakt
       (persid, sponid)
VALUES (4, 3);
--
--
-- ------------------------
-- table FUNKTIONSBESETZUNG
-- ------------------------
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (1, 1, TO_DATE('11-11-2007','DD-MM-YYYY'),
        TO_DATE('31-03-2010','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (4, 2, TO_DATE('01-04-2009','DD-MM-YYYY'),
        TO_DATE('31-03-2011','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (12, 1, TO_DATE('01-04-2010','DD-MM-YYYY'),
        TO_DATE('31-03-2011','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (4, 1, TO_DATE('01-04-2011','DD-MM-YYYY'),
        TO_DATE('31-03-2013','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (12, 2, TO_DATE('01-04-2011','DD-MM-YYYY'),
        TO_DATE('31-03-2012','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (2, 3, TO_DATE('01-04-2011','DD-MM-YYYY'),
        TO_DATE('31-03-2013','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (3, 2, TO_DATE('01-04-2012','DD-MM-YYYY'),
        TO_DATE('31-03-2013','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (12, 1, TO_DATE('01-04-2012','DD-MM-YYYY'), NULL);
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (6, 3, TO_DATE('01-04-2013','DD-MM-YYYY'),
        TO_DATE('31-03-2014','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (3, 4, TO_DATE('01-04-2013','DD-MM-YYYY'),
        TO_DATE('31-03-2015','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (4, 5, TO_DATE('01-04-2013','DD-MM-YYYY'),
        TO_DATE('31-03-2014','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (6, 2, TO_DATE('01-04-2014','DD-MM-YYYY'),
        TO_DATE('30-04-2029','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (4, 4, TO_DATE('01-04-2014','DD-MM-YYYY'), NULL);
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (2, 5, TO_DATE('01-04-2014','DD-MM-YYYY'),
        TO_DATE('30-11-2028','DD-MM-YYYY'));
--
INSERT INTO vereinuser.funktionsbesetzung 
       (persid, funkid, antritt, ruecktritt)
VALUES (3, 3, TO_DATE('01-08-2014','DD-MM-YYYY'), NULL);
--
--
--
-- ==================================
-- Eintraege definitiv in DB speichern
-- ==================================
--
COMMIT;
--
--
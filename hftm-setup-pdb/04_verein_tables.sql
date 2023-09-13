/*================================================*/
/* Datenbanken II                                 */
/* Vereinsdatenbank                               */
/* Schemen  erzeugen                              */
/*================================================*/

-- The Base Image is using a Pluggable Database (PDB).
alter session set container=xepdb1;

CREATE
  TABLE vereinuser.Anlass
  (
    AnlaID     INTEGER NOT NULL ,
    Bezeichner VARCHAR2 (20) NOT NULL ,
    Ort        VARCHAR2 (20) ,
    Datum      DATE NOT NULL ,
    Kosten     NUMBER (8,2) ,
    OrgID      INTEGER NOT NULL
  ) ;
ALTER TABLE vereinuser.Anlass ADD CONSTRAINT chk_kosten CHECK ( kosten IS NULL OR
(
  kosten >= 0
)
) ;
ALTER TABLE vereinuser.Anlass ADD CONSTRAINT Anlass_PK PRIMARY KEY ( AnlaID ) ;


CREATE
  TABLE vereinuser.Funktion
  (
    FunkID     INTEGER NOT NULL ,
    Bezeichner VARCHAR2 (20) NOT NULL
  ) ;
ALTER TABLE vereinuser.Funktion ADD CONSTRAINT Funktion_PK PRIMARY KEY ( FunkID ) ;


CREATE
  TABLE vereinuser.Funktionsbesetzung
  (
    Antritt    DATE NOT NULL ,
    Ruecktritt DATE ,
    FunkID     INTEGER NOT NULL ,
    PersID     INTEGER NOT NULL
  ) ;
ALTER TABLE vereinuser.Funktionsbesetzung ADD CONSTRAINT chk_ruecktritt CHECK ( antritt <=
ruecktritt OR ruecktritt                                                     IS
NULL) ;
ALTER TABLE vereinuser.Funktionsbesetzung ADD CONSTRAINT Funktionsbesetzung_PK PRIMARY KEY
( FunkID, PersID, Antritt ) ;


CREATE
  TABLE vereinuser.Person
  (
    PersID      INTEGER NOT NULL ,
    Name        VARCHAR2 (20) NOT NULL ,
    Vorname     VARCHAR2 (15) NOT NULL ,
    Strasse_Nr  VARCHAR2 (20) NOT NULL ,
    PLZ         CHAR (4) NOT NULL ,
    Ort         VARCHAR2 (20) NOT NULL ,
    bezahlt     CHAR (1) NOT NULL ,
    Bemerkungen VARCHAR2 (25) ,
    Eintritt    DATE ,
    Austritt    DATE ,
    StatID      INTEGER NOT NULL ,
    MentorID    INTEGER
  ) ;
ALTER TABLE vereinuser.Person ADD CONSTRAINT chk_austritt CHECK ( (eintritt <= austritt OR
austritt                                                         IS NULL) OR
(
  eintritt IS NULL AND austritt IS NULL
)
) ;
ALTER TABLE vereinuser.Person ADD CONSTRAINT Person_PK PRIMARY KEY ( PersID ) ;


CREATE
  TABLE vereinuser.Spende
  (
    SpenID     INTEGER NOT NULL ,
    Bezeichner VARCHAR2 (20) ,
    Datum      DATE DEFAULT CURRENT_DATE NOT NULL ,
    Betrag     NUMBER (8,2) NOT NULL ,
    SponID     INTEGER NOT NULL ,
    AnlaID     INTEGER
  ) ;
ALTER TABLE vereinuser.Spende ADD CONSTRAINT Spende_PK PRIMARY KEY ( SpenID, SponID ) ;


CREATE
  TABLE vereinuser.Sponsor
  (
    SponID       INTEGER NOT NULL ,
    Name         VARCHAR2 (20) NOT NULL ,
    Strasse_Nr   VARCHAR2 (20) NOT NULL ,
    PLZ          CHAR (4) NOT NULL ,
    Ort          VARCHAR2 (20) NOT NULL ,
    Spendentotal NUMBER (8,2) NOT NULL
  ) ;
ALTER TABLE vereinuser.Sponsor ADD CONSTRAINT Sponsor_PK PRIMARY KEY ( SponID ) ;


CREATE
  TABLE vereinuser.Sponsorenkontakt
  (
    PersID INTEGER NOT NULL ,
    SponID INTEGER NOT NULL
  ) ;
ALTER TABLE vereinuser.Sponsorenkontakt ADD CONSTRAINT Sponsorenkontakt_PK PRIMARY KEY (
PersID, SponID ) ;


CREATE
  TABLE vereinuser.Status
  (
    StatID     INTEGER NOT NULL ,
    Bezeichner VARCHAR2 (20) NOT NULL ,
    Beitrag    NUMBER (5)
  ) ;
ALTER TABLE vereinuser.Status ADD CONSTRAINT chk_beitrag_status CHECK ( beitrag IS NULL OR
(
  beitrag >= 0
)
) ;
ALTER TABLE vereinuser.Status ADD CONSTRAINT Status_PK PRIMARY KEY ( StatID ) ;


CREATE
  TABLE vereinuser.Teilnehmer
  (
    PersID INTEGER NOT NULL ,
    AnlaID INTEGER NOT NULL
  ) ;
ALTER TABLE vereinuser.Teilnehmer ADD CONSTRAINT Teilnehmer_PK PRIMARY KEY ( PersID,
AnlaID ) ;


ALTER TABLE vereinuser.Anlass ADD CONSTRAINT Anlass_Person_FK FOREIGN KEY ( OrgID )
REFERENCES vereinuser.Person ( PersID ) ;

ALTER TABLE vereinuser.Sponsorenkontakt ADD CONSTRAINT FK_SPONK_PERSON FOREIGN KEY (
PersID ) REFERENCES vereinuser.Person ( PersID ) ;

ALTER TABLE vereinuser.Sponsorenkontakt ADD CONSTRAINT FK_SPONK_SPONSOR FOREIGN KEY (
SponID ) REFERENCES vereinuser.Sponsor ( SponID ) ;

ALTER TABLE vereinuser.Teilnehmer ADD CONSTRAINT FK_TEILN_ANLASS FOREIGN KEY ( AnlaID )
REFERENCES vereinuser.Anlass ( AnlaID ) ;

ALTER TABLE vereinuser.Teilnehmer ADD CONSTRAINT FK_TEILN_PERSON FOREIGN KEY ( PersID )
REFERENCES vereinuser.Person ( PersID ) ;

ALTER TABLE vereinuser.Funktionsbesetzung ADD CONSTRAINT Funktionsbesetzung_Funktion_FK
FOREIGN KEY ( FunkID ) REFERENCES vereinuser.Funktion ( FunkID ) ;

ALTER TABLE vereinuser.Funktionsbesetzung ADD CONSTRAINT Funktionsbesetzung_Person_FK
FOREIGN KEY ( PersID ) REFERENCES vereinuser.Person ( PersID ) ;

ALTER TABLE vereinuser.Person ADD CONSTRAINT Person_Person_FK FOREIGN KEY ( MentorID )
REFERENCES vereinuser.Person ( PersID ) ;

ALTER TABLE vereinuser.Person ADD CONSTRAINT Person_Status_FK FOREIGN KEY ( StatID )
REFERENCES vereinuser.Status ( StatID ) ;

ALTER TABLE vereinuser.Spende ADD CONSTRAINT Spende_Anlass_FK FOREIGN KEY ( AnlaID )
REFERENCES vereinuser.Anlass ( AnlaID ) ;

ALTER TABLE vereinuser.Spende ADD CONSTRAINT Spende_Sponsor_FK FOREIGN KEY ( SponID )
REFERENCES vereinuser.Sponsor ( SponID ) ;

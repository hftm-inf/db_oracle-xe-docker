/*================================================*/
/* Datenbanken I                                  */
/* Einführungsbeispiel                            */
/* Tabellen erzeugen                              */
/*================================================*/

-- The Base Image is using a Pluggable Database (PDB).
alter session set container=xepdb1;

/*================================================*/
/* Tabelle: DEPT                                  */
/*================================================*/
CREATE TABLE scott.dept  (
   deptno      NUMBER(2)          NOT NULL,
   dname       VARCHAR2(14)       NOT NULL,
   loc         VARCHAR2(13)       NOT NULL,
   CONSTRAINT pk_dept PRIMARY KEY (deptno)
);

/*================================================*/
/* Tabelle: EMP                                   */
/*================================================*/
CREATE TABLE scott.emp  (
   empno       NUMBER(4)          NOT NULL,
   ename       VARCHAR2(10)       NOT NULL,
   job         VARCHAR2(9)        NOT NULL,
   mgr         NUMBER(4),
   hiredate    DATE               NOT NULL,
   sal         NUMBER(7,2)        NOT NULL,
   comm        NUMBER(7,2),
   deptno      NUMBER(2)          NOT NULL,
   CONSTRAINT pk_emp PRIMARY KEY (empno),
   CONSTRAINT fk_emp_relation__dept FOREIGN KEY (deptno)
     REFERENCES scott.dept (deptno),
   CONSTRAINT fk_emp_relation__emp FOREIGN KEY (mgr)
     REFERENCES scott.emp (empno)
);

/*================================================*/
/* Index: RELATION_3_FK                           */
/*================================================*/
CREATE INDEX scott.relation_3_fk ON scott.emp (
   deptno ASC
);

/*================================================*/
/* Index: RELATION_16_FK                          */
/*================================================*/
CREATE INDEX scott.relation_16_fk ON scott.emp (
   mgr ASC
);

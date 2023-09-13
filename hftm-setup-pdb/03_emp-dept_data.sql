/*================================================*/
/* Datenbanken I                                  */
/* Einführungsbeispiel                            */
/* Daten in Demotabellen einfügen                 */
/*================================================*/

-- The Base Image is using a Pluggable Database (PDB).
alter session set container=xepdb1;

ALTER SESSION SET nls_date_format = 'DD-MON-YYYY'
                  nls_date_language = 'AMERICAN';

-- -----------
-- Abteilungen
-- -----------

INSERT INTO scott.dept
       (deptno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO scott.dept
       (deptno, dname, loc)
VALUES (20, 'RESEARCH', 'DALLAS');

INSERT INTO scott.dept 
       (deptno, dname, loc)
VALUES (30, 'SALES', 'CHICAGO');

INSERT INTO scott.dept
       (deptno, dname, loc )
VALUES (40, 'OPERATIONS', 'BOSTON');

-- -----------
-- Angestellte
-- -----------

INSERT INTO scott.emp 
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7369, 'SMITH',  'CLERK',
        TO_DATE('17-DEC-1980', 'DD-MON-YYYY'),
        800, NULL, 20);

INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7499, 'ALLEN',  'SALESMAN',
        TO_DATE('20-FEB-1981', 'DD-MON-YYYY'),
        1600,  300, 30);

INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7521, 'WARD',   'SALESMAN',
        TO_DATE('22-FEB-1981', 'DD-MON-YYYY'),
        1250,  500, 30);

INSERT INTO scott.emp 
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7566, 'JONES',  'MANAGER',
        TO_DATE('2-APR-1981', 'DD-MON-YYYY'),
        2975, NULL, 20);

INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7654, 'MARTIN', 'SALESMAN',
        TO_DATE('28-SEP-1981', 'DD-MON-YYYY'),
        1250, 1400, 30);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7698, 'BLAKE',  'MANAGER',
        TO_DATE('1-MAY-1981', 'DD-MON-YYYY'),
        2850, NULL, 30);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7782, 'CLARK',  'MANAGER',
        TO_DATE('9-JUN-1981', 'DD-MON-YYYY'),
        2450, NULL, 10);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7788, 'SCOTT',  'ANALYST',
        TO_DATE('09-DEC-1982', 'DD-MON-YYYY'),
        3000, NULL, 20);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7839, 'KING',   'PRESIDENT',
        TO_DATE('17-NOV-1981', 'DD-MON-YYYY'),
        5000, NULL, 10);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7844, 'TURNER', 'SALESMAN',
        TO_DATE('8-SEP-1981', 'DD-MON-YYYY'),
        1500,    0, 30);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7876, 'ADAMS',  'CLERK',
        TO_DATE('12-JAN-1983', 'DD-MON-YYYY'),
        1100, NULL, 20);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7900, 'JAMES',  'CLERK',
        TO_DATE('3-DEC-1981', 'DD-MON-YYYY'),
        950, NULL, 30);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7902, 'FORD',   'ANALYST',
        TO_DATE('3-DEC-1981', 'DD-MON-YYYY'),
        3000, NULL, 20);
        
INSERT INTO scott.emp
       (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7934, 'MILLER', 'CLERK',
        TO_DATE('23-JAN-1982', 'DD-MON-YYYY'),
        1300, NULL, 10);

UPDATE scott.emp
  SET mgr = 7902
WHERE empno = 7369;

UPDATE scott.emp
  SET mgr = 7698
WHERE empno = 7499;

UPDATE scott.emp
  SET mgr = 7698
WHERE empno = 7521;

UPDATE scott.emp
  SET mgr = 7839
WHERE empno = 7566;

UPDATE scott.emp
  SET mgr = 7698
WHERE empno = 7654;

UPDATE scott.emp
  SET mgr = 7839
WHERE empno = 7698;

UPDATE scott.emp
  SET mgr = 7839
WHERE empno = 7782;

UPDATE scott.emp
  SET mgr = 7566
WHERE empno = 7788;

UPDATE scott.emp
  SET mgr = 7698
WHERE empno = 7844;

UPDATE scott.emp
  SET mgr = 7788
WHERE empno = 7876;

UPDATE scott.emp
  SET mgr = 7698
WHERE empno = 7900;

UPDATE scott.emp
  SET mgr = 7566
WHERE empno = 7902;

UPDATE scott.emp
  SET mgr = 7782
WHERE empno = 7934;


-- Transaktion abschliessen

COMMIT;

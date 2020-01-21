SELECT * FROM 사원, 부서; -- 곱하기가 되어버림

-- join
SELECT * FROM 사원, 부서 WHERE 사원.소속부서 = 부서.부서번호;
SELECT * FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO;

SELECT * FROM EMP JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

SELECT * FROM 주문 JOIN 제품 ON 주문.주문제품 = 제품.제품번호 WHERE 주문고객='banana';
SELECT * FROM 고객 JOIN 주문 ON 고객.고객아이디 = 주문.주문고객 WHERE 나이 >= 30;

SELECT P.제품명, O.수량, O.주문일자 FROM 주문 O JOIN 고객 C ON O.주문고객 = C.고객아이디
				  JOIN 제품 P ON P.제품번호 = O.주문제품
                  WHERE O.배송지 = '서울시 마포구';

SELECT E.ENAME, E.DEPTNO, D.DNAME FROM EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO;
SELECT * FROM EMP JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;
SELECT E.ENAME, E.COMM, E.SAL, D.LOC FROM EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO WHERE COMM IS NOT NULL;
SELECT SUM(E.SAL), D.DNAME FROM EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO WHERE D.LOC = 'NEW YORK' OR D.LOC = 'DALLAS' GROUP BY D.DEPTNO;         

SELECT E1.MGR, E2.EMPNO FROM EMP E1 JOIN EMP E2 ON E1.MGR = E2.EMPNO;

SELECT * FROM 제품 P LEFT JOIN 주문 O ON P.제품번호 = O.주문제품;
SELECT * FROM 주문 O RIGHT JOIN 제품 P ON P.제품번호 = O.주문제품;



CREATE TABLE IT_MEMBER (
 NUM INT
 , NAME VARCHAR(10)
 , COURSE_NO INT
);

INSERT INTO IT_MEMBER VALUES (1, 'AA', 1);
INSERT INTO IT_MEMBER VALUES (2, 'BB', 1);
INSERT INTO IT_MEMBER VALUES (3, 'CC', 2);
INSERT INTO IT_MEMBER VALUES (4, 'DD', 2);
INSERT INTO IT_MEMBER VALUES (5, 'EE', 4);
INSERT INTO IT_MEMBER VALUES (6, 'FF', NULL);

CREATE TABLE COURSE02 (
 COURSE_NO INT
 , COURSE_NAME VARCHAR(20)
);
INSERT INTO COURSE02 VALUES (1, 'DIGITAL');
INSERT INTO COURSE02 VALUES (2, 'BIG DATA');
INSERT INTO COURSE02 VALUES (3, 'CLOUD');
INSERT INTO COURSE02 VALUES (4, 'NFC');

SELECT * FROM IT_MEMBER I JOIN COURSE02 C ON I.COURSE_NO = C.COURSE_NO;
SELECT * FROM IT_MEMBER I LEFT OUTER JOIN COURSE02 C ON C.COURSE_NO = I.COURSE_NO;
SELECT * FROM IT_MEMBER I RIGHT OUTER JOIN COURSE02 C ON C.COURSE_NO = I.COURSE_NO;

SELECT * FROM EMP;
SELECT * FROM EMP WHERE SAL = 1250;

SELECT 제조업체 FROM 제품 WHERE 제품명='달콤비스켓';
SELECT 제품명, 단가 FROM 제품 WHERE 제조업체 = '한빛제과';
SELECT 제품명, 단가 FROM 제품 WHERE 제조업체 = 
										(SELECT 제조업체 FROM 제품 WHERE 제품명='달콤비스켓');
SELECT 제품명, 제조업체 FROM 제품 WHERE 제품번호 IN ('p06', 'p01', 'p04');

SELECT * FROM EMP WHERE SAL >= 
							(SELECT SAL FROM EMP WHERE ENAME="ALLEN");

SELECT * FROM EMP WHERE DEPTNO = 
							(SELECT DEPTNO FROM EMP WHERE MGR IS NULL);

SELECT * FROM EMP WHERE SAL < 
							(SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 
																	(SELECT DEPTNO FROM EMP WHERE COMM = 0));


UPDATE 제품 SET 제품명 = '쿵떡파이' WHERE 제품명 = '통큰파이';
SELECT * FROM 제품;
ROLLBACK;



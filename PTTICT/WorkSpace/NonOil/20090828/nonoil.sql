truncate table BRAND_BRANCH_TXXT;

INSERT INTO BRAND_BRANCH_TXXT
SELECT * FROM BRAND_BRANCH;


/* Open Old Shop*/
UPDATE BRAND_BRANCH
SET CLOSE_DATE = null,
ENGINEERING_STATUS = '28',
CP_CLOSEDATE = null
WHERE DL_C_ID ='10006560'
AND CLOSE_DATE > TO_DATE('31/10/2008','dd/mm/yyyy');



SELECT BB.CODE_NAME_7_11,BB.NAME_7_11 , BB.CLOSE_DATE, BB.CP_CLOSEDATE
FROM BRAND_BRANCH BB, BRAND B , BRANCH BR
WHERE BB.BRAND_ID = B.BRAND_ID
AND BB.BRANCH_ID = BR.BRANCH_ID
AND DL_C_ID ='10006560'
AND CLOSE_DATE > TO_DATE('31/10/2008','dd/mm/yyyy');

/* */


/* Close New Shop */
UPDATE BRAND_BRANCH
SET CLOSE_DATE = to_date('31/10/2008','dd/mm/yyyy'),
ENGINEERING_STATUS = '30',
CP_CLOSEDATE = to_date('31/10/2008','dd/mm/yyyy')
WHERE DL_C_ID ='10010362';


SELECT * FROM BRAND_BRANCH
WHERE DL_C_ID ='10010362';

SELECT BB.CODE_NAME_7_11,BB.NAME_7_11 , BB.CLOSE_DATE, BB.CP_CLOSEDATE
FROM BRAND_BRANCH BB, BRAND B , BRANCH BR
WHERE BB.BRAND_ID = B.BRAND_ID
AND BB.BRANCH_ID = BR.BRANCH_ID
AND DL_C_ID ='10010362'




SELECT * FROM BRAND_BRANCH A
WHERE NOT EXISTS (SELECT NULL FROM BRAND_BRANCH B WHERE A.CODE_NAME_7_11 = B.CODE_NAME_7_11 AND B.DL_C_ID = '10006560')
AND A.DL_C_ID = '10010362';


SELECT S.CP_ID,B.NAME_7_11,B.SPECIAL_PAYMENT 
FROM SP_COST S,BRAND_BRANCH B
WHERE S.CP_ID = B.CODE_NAME_7_11
AND B.CLOSE_DATE IS NULL



SELECT * 
FROM SP_COST

SELECT * 
FROM BRAND_BRANCH B
WHERE B.CODE_NAME_7_11 = '00380'

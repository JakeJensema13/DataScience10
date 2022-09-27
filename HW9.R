
#Problem 1
dbGetQuery(mydb,'SELECT PRODUCT.PROD_NO,NAME,COLOR,ORDER_NO,QUANTITY FROM PRODUCT
           JOIN SALEONLINE WHERE
           SALEONLINE.PROD_NO = PRODUCT.PROD_NO')

#PROD_NO  NAME COLOR ORDER_NO QUANTITY
#      p1 PANTS  BLUE        1       10
2#      p1 PANTS  BLUE        2       10
3 #     p1 PANTS  BLUE        9        5
4  #    p1 PANTS  BLUE       10        5
5   #   p4 SOCKS WHITE        2       20


#Problem 2

#Part A
dbSendQuery(mydb,'INSERT INTO DEPARTMENT VALUES(
            "D4","COMPLAINTS","E3")')

#Part B
dbSendQuery(mydb,'CREATE TABLE NEW_DEPARTMENT(DEPT_NO VARCHAR,NAME VARCHAR, MANAGER VARCHAR)')
dbSendQuery(mydb,'INSERT INTO NEW_DEPARTMENT VALUES(
            "D4","COMPLAINTS","E3")')
#Part C
dbListTables(mydb)

#Part D
dbRemoveTable(mydb,'NEW_DEPARTMENT')

#Part E
dbListTables(mydb)

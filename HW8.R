mydb <- dbConnect(RSQLite::SQLite(),'my-db.sqlite')

#Problem 1
#PROD_NO(p1,p2,p3,...)
#Name(PANTS,SOCKS,SHIRTS)
#Color(BLUE,KHAKI,GREEN,WHITE)


#Problem 2
dbGetQuery(mydb,'SELECT age FROM Employee 
           ORDER BY age DESC 
           LIMIT 1')
# AGE
#1  65

#Problem 3
dbGetQuery(mydb,'SELECT * FROM Employee
          WHERE age < 50 AND name = "%r%"')
#None

#Problem 4
dbGetQuery(mydb,'SELECT MANAGER FROM Department 
           WHERE name = "Sales"')
# E5

#Problem 5
dbGetQuery(mydb,'SELECT COUNT(DEPT_NO) FROM DEPARTMENT')
#3

#Problem 6
dbGetQuery(mydb,'SELECT CUST_NO FROM Customer
           WHERE name = "CAROL"')
# C3

#Problem 7 
dbGetQuery(mydb,'SELECT Employee.name FROM Employee
           JOIN Department
           WHERE Department.MANAGER = Employee.EMP_NO
           AND Department.DEPT_NO = "D2"')
#Brown

#Problem 8
dbGetQuery(mydb,'SELECT Sum(Stock.QUANTITY) FROM Stock
           JOIN Product
           WHERE Stock.PROD_NO = Product.PROD_NO
           AND Product.COLOR = "WHITE"')
#1000

#Problem 9
dbGetQuery(mydb,'SELECT * FROM Employee
           LEFT JOIN Department
           WHERE 
           Employee.DEPT_NO = Department.DEPT_NO')

#EMP_NO NI_NO  NAME AGE DEPT_NO DEPT_NO     NAME MANAGER
#1     E1   123 SMITH  21      D1      D1 Accounts      E1
#2     E2   159 SMITH  31      D1      D1 Accounts      E1
#3     E3  5432 BROWN  65      D2      D2   Stores      E3
#4     E5  7654 GREEN  52      D3      D3    Sales      E5

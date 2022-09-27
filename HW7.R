mydb <- dbConnect(RSQLite::SQLite(),'my-db.sqlite')

Customer <- read.csv("CUSTOMER.txt")
Department <- read.csv("C:/Users/jforj/OneDrive/Documents/DEPARTMENT.txt")
Employee <- read.csv("C:/Users/jforj/OneDrive/Documents/EMPLOYEE.txt")
Sale <- read.csv("SALES_ORDER.txt")
Product <- read.csv('PRODUCT.txt')
EmployeePhone <- read.csv('EMPLOYEE_PHONE.txt')
Invoices <- read.csv('INVOICES.txt')


dbWriteTable(mydb,'Customer',Customer)
dbWriteTable(mydb,'Department',Department)
dbWriteTable(mydb,'Employee',Employee)
dbWriteTable(mydb,'Sale',Sale)
dbWriteTable(mydb,'Product',Product)
dbWriteTable(mydb,'EmployeePhone',EmployeePhone)
dbWriteTable(mydb,'Invoices',Invoices)
Employee
Customer
Sale
Product
EmployeePhone
Invoices

#Problem 1
dbGetQuery(mydb, 'SELECT EMP_NO,age FROM Employee WHERE age < 50')

#Problem 2
dbGetQuery(mydb,'SELECT name FROM Employee')

#Problem 3
dbGetQuery(mydb,'SELECT DISTINCT name FROM Employee')

#Problem 4
dbGetQuery(mydb,'SELECT name FROM Employee WHERE name LIKE "B%"')

#Problem 5
dbGetQuery(mydb,'SELECT name, NI_NO FROM Employee ')

#Problem 6
dbGetQuery(mydb,'SELECT * FROM Employee WHERE age BETWEEN 31 AND 65')

#Problem 7
dbGetQuery(mydb,'SELECT DEPT_NO FROM Department WHERE manager = NULL')
#No rows are returned so we know there is no departments with no managers aka manager = NULL

#Problem 8
dbGetQuery(mydb,'SELECT date FROM Sale WHERE cust_no = "C3" ')
#7/19/19

#Problem 9
dbGetQuery(mydb,'SELECT NAME FROM Product WHERE COLOR = "WHITE"')
#Socks and shirts

#Problem 10
dbGetQuery(mydb,'SELECT office FROM EMPLOYEEPHONE WHERE EMP_NO = "E2" ')
#Gives office number R10

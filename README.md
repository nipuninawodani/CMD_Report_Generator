# CMD_Report_Generator
This is a command-line report generation tool for an e-commerce system. 
The users of this tool would be the managers of the e-commerce platform. 
The end user iiss able to provide the following inputs as Command line arguments.

1. Type of the report
2. The report time period (Start time and End time)
3. The method of receiving the output(Email/File)
4. Email address of the user

The tool will be generate the requested report in Microsoft Excel format. 
If the user has selected the output method as Email, the tool should email the Excel report to the user, otherwise just saving it to an excel file in the disk would be enough.


Student Number and Git usernames of each member
SE/2018/001 - AbdullahRamees
SE/2018/013 - maheladissa
SE/2018/031 - nipuninawodani
SE/2018/038 - isuruni
SE/2018/042 - Sachin-Tharaka
SE/2018/048 - waruniLalendra

#1.Database Creation & SQL Connection - Mahela

The database for the tool is created using Mysql and hosted on a local server. The database has two tables,
·        Orders Table
·        User Login Count Table
These two tables are used to make the Orders Report and User Login Report respectively.
The java.sql.* libraries are used to make the database connection and to execute queries.
Connector
The database is connected using the JDBC driver. The getConnection method in the MySqlDBConnector class is used to create the database connection. The MySqlDBConnector class implements the Interface class DBConnector.
The getConnection method uses five variables in its operations. The last three variables are easy to understand: the variable url to store the link to the MySQL table, uname to store Database Username, pass to store Database password. The variable driver stores the package name of the Driver we are using to connect to the database. For Mysql the driver is JDBC. The other variable con is used to store the connection to the database. The getConnection method uses the java.sql Object DriverManager’s getConnection method to create the database connection and store it in the con variable and then returns the con variable.
All the classes relevant to database connection are in the com.cmd.report.connector package.
Controller
Then the method to get the data from the database is in the com.cmd.report.controller package.
The getResults method inside MySqlDBController class is used to get the data from the database. It takes the Connection generated from the previous getConnection method and a string containing the SQL query.
The getresults method gets the SQL query and the connection and creates a java.sql PreparedStatement object. Then it executes the PreparedStatement and stores the return value in a variable called results. Then the getResults method returns the results variable. The MySqlDBController class implements the Interface class DBController. Note that even though at this moment we are only selecting results from the DB if in future we want to add or modify data in a Database this is the same class we have to use. Therefore, this class was named DBController.

#2. Getting Args - Isuruni

In the implementation process at first ArgumentsCounter class was created to check whether all the required arguments are given. There a constructor is created to receive the String args[] array and copy it into an array owned by the class in order to utilize it within the class. With the use of verifyArgumentsCount() method at first it has been checked whether the array has less than 4 or greater than 5 arguments. If it is, an exception is thrown ( A custom exception is made throughout and will explain about its implementation later.)
Then if the array has 4 or 5 arguments, it is checked whether the third argument is “Email” ( receiving type of the report). If it is, then it is checked for the fifth argument and if the fifth argument is not available an exception is thrown. Likewise, the argument count is checked. The ArgumentCounter interface is created to place the verifyArgumentsCount() method in order to facilitate extensibility. All this class and interface are kept in the com.cmd.report.inputs.argumnets.argument_counter  package to promote cohesion.
Then the UI interface was created with the showMessage(String message) method which takes a String argument called “message” and prints the message onto the screen. This interface is implemented by the CommandLineUI class which contains the declaration of showMessage(String message). This class and the interface are placed in the com.cmd.report.inputs.arguments.ui  package to promote cohesion.
The InvalidArgumentsCountException is a customized exception class that extends Throwable class and is used to show an error message to the user when invalid number of arguments are provided as CommandLine Arguments. It contains a constructor created to take the message to be shown to the user and provide it to the constructor of the throwable class.
The CommandLineInputs class acts as a coordinator of all the classes related to inputs. This class also involves classes used in arguments validation. It is implemented by the interface which contains the validateArgumentArray() method for extensibility.
It has the following attributes :
private String[] arguments - To store Command Line Arguments
private ArgumentsValidator validator - To assign objects from arguments validation classes
private final UI ui 
private  ArgumentsCounter argumentsCounter 

Then it has the constructor which takes three arguments at the time of object creation as String[] args, UI ui,ArgumentsCounter argumentsCounter. These are assigned to above mentioned attributes. Following that it has a method called validateArgumentArray() which is used to execute all the methods related to inputs. First verifyArgumentsCount() method from ArgumentCounter is executed. Then accordingly all the methods from argument validation are executed by using the validator object created. If all the validations are successful users will be given a message stating their process or if any exception is encountered the relevant message will be shown. Finally it will return the validated array of arguments to be used by other functions.
The names of the classes as well as interfaces are given so that they display their responsibility to the outsider. The classes are separated at most to obtain single responsibility per class. All the classes are created based on interfaces so that they are available for future extensions following open close principle. Most of the time classes are closed to modifications but open to modifications through implementing interfaces. All the interfaces relevant to classes are created keeping dependency inversion principle in mind so that concrete classes are not interdependent on each other. The above classes are created in order to facilitate extensibility at its highest level so that new features would be able to be added to the system just by creating a new class relevant to its responsibility.


#3. Arguments validation - Waruni

I was responsible for the argument validation part. Since we are getting 5 command line arguments in this program I had to validate each argument that is given by the user is valid or not. Our user inputs are,

1. Report type 
2. Starting date 
3. Ending date 
4. Output type 
5. Email address

I had to validate the given arguments whether an actual report name(order_report or user_login_report), actual two dates which are in the correct format, the output type name is ‘Email’ or ‘File’ and the actual email address. 

The first thing that I had to consider was that argument validation responsibilities came under the input package and that input package responsibilities were divided among me and one of my other teammates. This was really challenging for us because our responsibilities interdependent with each other too much. So we decided to work together at first to clear our background. Therefore we developed a simple program (without solid principles and other good practices) to get and validate arguments just to understand the background. After that we got a clear idea about what we have to do to a considerable extent. And also we understood how those responsibilities need to divide among us. 

After that we realize that my part needs to be in a separate package inside the input package which is named arguments validation since related classes should be together(cohesion). Inside that package I created separate classes for each argument validation which are named ReportTypeValidator, DateValidator, OutputTypeValidator and EmailValidator. Then each of this class has a single responsibility. I selected these names because the name itself explains what is that class responsibility. 

But according to the dependency inversion principle no dependency can be created among concrete classes. Therefore I create an interface class named ‘ArgumentsValidator’ inside the package. I selected this name because interface names should not be specific and they should be generic. Now all the other classes can implement this interface and there won’t be any dependence on concrete classes. 

Now when we think about the extensibility it is clear and easy inside this argument validation package. If you want to validate another argument you can simply add it as a class to this package and implement it with the ArgumentsValidator interface.

For example, let's assume that we want to validate another argument as employeeID. Then the only thing that I have to do is create another class called ‘EmployeeIDValidator’  inside the argument-validator package and implement it with the ArgumentValidator interface. By that small step I can plug that particular task to the program. We don’t have to modify anywhere inside the code for that. We only have to plug the class to the code. By that we can assure that this code adheres to the Open-Close principle. 

At last, all the exceptions that are raised inside these codes are handled by the customized Exception which is named as InvalidInputException Class. The only responsibility it has is to handle the Exceptions that are raised in this argument validation process. 

Then finally, I created unit tests for each argument validation class to check when a wrong argument is provided whether we got an exception or not.As such I completed the argument-validation package.

#4. Report Generation - Abdullah

what I did is get the data  from  the database according to Inputs i get from input classes
I used 3 inputs which got by command line argument those are : type of report , Staring date and ending date ,

From their I created class called ReportQuery.java, it,s responsible to identify the quarry for our inputs )
After this my responsibility is get the result set data   and inset that into an array of array 
For that I separate responsibilities and create classes those are 

	DataCounter.java → it will count how many rows in result set ;
	reportFactory.java → will check type of report and return to interface  report 
	Report .java	 → interface class it has method for execute the report data into array
	OrderReport.java → it as method definition to input  Order report data into array
	UserLoginRepor.javat→it as method definition to input  userLogin report data into array
All the java classes i have contribute it depend on database except reportfactory.java
So I wrote unit test only for reportFactory.java  

#5. Saving File-Nipuni 

As we all know, Excel is the very popular file format created by Microsoft. Although it is not an open file format, Java applications can still read and write Excel files using the Apache POI - the Java API for Microsoft Documents, because the development team uses reverse-engineering to understand the Excel file format. Hence the name POI stands for Poor Obfuscation Implementation.So to Write Excel Files in Java I used the Apache POI library. 
There were two main prefixes which I found when working with Apache POI. First one is HSSF which denotes the API for working with Excel 2003 and earlier. And XSSF is the second one which denotes the API for working with Excel 2007 and later.So I thought to use both two, then no one will face an issue because of their older version of excel. Our application is compatible with any version that the users have. And to get started with the Apache POI API, I learnt about 4 interfaces.Namely they are Workbook, Sheet, Row & Cell. Workbook is the high level representation of an Excel workbook. Concrete implementations in the workbook are HSSFWorkbook and XSSFWorkbook. And talking about the sheet, it is the high level representation of an Excel worksheet. HSSFSheet and XSSFSheet are the typical implementing classes for sheets. Row is the high level representation of a row in a spreadsheet and HSSFRowand XSSFRow are two concrete classes used there. Cell is the high level representation of a cell in a row. HSSFCell and XSSFCellare the typical implementing classes.
As we were using maven I Added the required dependency to our project’s pom.xml file.First of all for my understanding I tried some sample projects.I used it to find whether my setup is good to go.This can be found in our git  repo as well. And then I started to do the implementation along with the needs of our project . Here I’ve managed a private codebase to test the following parts that I have been planning to use in my final code.

1. First, I created a blank excel sheet (xlsx file) and saved it at a particular location. After saving the excel file at a particular location, I closed the created excel file before executing the test script. 
2. As step 02 I created a blank workbook by using the below syntax:
XSSFWorkbook wb = new XSSFWorkbook();
3. And then I created a blank spreadsheet by using below syntax:
XSSFSheet sheet = wb.createSheet("Report");
4. After that I repeated the following steps a and b until all the data was processed.
a. Create a Row. 
A spreadsheet consists of rows and cells. It has a grid layout. The rows in the spreadsheet are identified with numbers. Use the following code snippet to create a row in the spreadsheet.
XSSFRow row = sheet.createRow(int arg);
b. Create cells in a row. A row is a collection of cells. When you enter data in the sheet, it is always stored in the cell. Therefore, you will have to create a cell after creating a row. Use the following syntax to create a cell.
XSSFCell cell = row.createCell(int columnindex);
5. Then I wrote to an OutputStream using the below code to write an output stream.
FileOutputStream fos = new FileOutputStream(filePath);
 wb.write(fos);
6. Finally I closed the output stream.
That’s how I could gain the basic understanding about the duty I was assigned by sample projects and then at the end the main code segment I contributed to the project is given below.

#6. Sending Mail-sachin
 
My part of our project Is to send the generated report via an email to the user. Sending emails is one of the common tasks in real life applications and that’s why Java provides a robust JavaMail API that we can use to send emails using SMTP server. JavaMail API supports both TLS and SSL authentication for sending emails.
JavaMail Example
I used JavaMail API to send emails using SMTP server with authentication, I used Gmail as my mail server.
JavaMail API is not part of standard JDK, so I have to download it from it’s official website. Download the latest version of the JavaMail reference implementation and include it in your project build path. The jar file name will be javax.mail.jar.
While I’m using a Maven based project, just added below dependency in my project.
<dependency>
        	<groupId>com.sun.mail</groupId>
        	<artifactId>javax.mail</artifactId>
        	<version>1.5.5</version>
</dependency>
 
Java Program to send email contains following steps:
 
      1. Get the session object 
Object that stores all the information of the host like host name, username, password etc.
·       Creating javax.mail.Session object
    2.     compose the message
Creating javax.mail.internet.MimeMessage object, we have to set different properties in this object such as recipient email address, Email Subject, Reply-To email, email body, attachments etc.
 
3. 	send the message
 Using javax.mail.Transport to send the email message.
The logic to create a session differs based on the type of SMTP server, for example if SMTP server doesn’t require any authentication we can create the Session object with some simple properties whereas if it requires TLS or SSL authentication, then logic to create will differ.
User Authentication Part
If it is required to provide user ID and Password to the e-mail server for authentication purpose
Main class to execute mailConnector and mailSender class.


The End

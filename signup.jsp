<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 String username       = request.getParameter("username");
    String f_name      = request.getParameter("first_name");
    String l_name = request.getParameter("last_name"");
    String email       = request.getParameter("email");
    String phone     = request.getParameter("phone");
    String password = request.getParameter("password");
    
    try{

    Class.forName("com.mysql.jdbc.Driver");// Driver to establish connection to the database
    Connection con1=DriverManager.getConnection("jdbc:mysql://database-1.c5ia68gw0bot.ap-southeast-2.rds.amazonaws.com:3306/Apuraj","Apuraj","apuraj123"); //Create connection using your ID and Password
    Statement st1=con1.createStatement();
    ResultSet rs1=st1.executeQuery("SELECT * FROM contact_messages");
    while(rs1.next()){

    //-----------------------------Then, Create an InsertQuery using a String:---------------------

    String InsertQuery = "insert into signup values('"+username+"','"+f_name+"','','"+l_name+"','"+email+"','"+phone+"','"+password+"');";

    //-----------------------------Finally, Execute your Insert Query:-----------------------------

    st1.executeUpdate(InsertQuery);}}

catch(Exception error){
    out.println(error);}

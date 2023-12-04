<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.SQLException" %>
<%@ contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport", http-equiv="contentType", content="width=device-width, initial-scale=1.0, contentType = "text/html">
    <title>Jsp page</title>
    <link href = "project_one.html">
</head>
<body>
    <h1>Hello welcome to Jarkata server pages</h1>
    <div>
    <%
        String firstname = request.getParameter("Firstnamevar");
        String Secondname = request.getParameter("Secondnamevar");
        String ursirname = request.getParameter("Sirnamevar");
        String uremail = request.getParameter("emailvar");
        String urpassword = request.getParameter("passwordvar");
        out.println("welcome"+ name)
        String mydatabase = "jdbc:mysql://localhost:3306/JSP-Database"
        String loginID = "phpmyadmin"
        String password = "bsitc01/"
        try {
            Connection connection = DriverManager.getConnection(mydatabase, loginID, password);
            Statement statement = connection.createStatement();
            String sqlQuery = "INSERT INTO users (firstname, secondname, ursirname, uremail, urpassword) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(firstname, Secondname, ursirname, uremail, urpassword);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finaly(){
            The firstname got from the user is <% put.println(firstname)%>(
            The secondname got from the user is <% put.println(secondname)%>
            The username got from the user is <% put.println(ursirname)%>
            The user email got of the user is <% put.println(uremail)%>
            The passwgot from the user is <% put.println(urpassword)%> 
            }
    %>
    </div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/6/7
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Get the username and password from the request
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Connect to the database
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver"); // Load the driver
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ssm_db", "root", "root"); // Connect to the database
        stmt = conn.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?"); // Prepare the query
        stmt.setString(1, username); // Set the username parameter
        stmt.setString(2, password); // Set the password parameter
        rs = stmt.executeQuery(); // Execute the query

        // Check if the query returned any result
        if (rs.next()) {
            // Login successful, redirect to the welcome page
            response.sendRedirect("welcome.jsp");
        } else {
            // Login failed, display an error message
            System.out.println("<p>Invalid username or password.</p>");
        }
    } catch (Exception e) {
        // Handle any exception
        e.printStackTrace();
    } finally {
        // Close the resources
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login</h1>
<form action="2.jsp" method="post">
    <p>Username: <input type="text" name="username" required></p>
    <p>Password: <input type="password" name="password" required></p>
    <p><input type="submit" value="Login"></p>
</form>

</body>
</html>

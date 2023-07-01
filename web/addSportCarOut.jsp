

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.Cars"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Add A Sport Car Output</title>
        
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <header><h1>Java MVC Project Using Servlets & JSP</h1></header>
         <section>
             <div>
                 <h1 class="head">Add A Sport Car Output</h1>
                 <% Cars c=(Cars) request.getAttribute("c"); %>
                 <table border="1">
                     <tr><th>Color</th><td><%= c.getColor()%></td>
                     <tr><th>Model</th><td><%= c.getModel()%></td>
                     <tr><th>Speed</th><td><%= c.getSpeed()%></td>
                  
                   
                  
                 </table>
                     <h3 class="message">Sport Car Of Model :: <%= c.getModel()%> is added successfully.</h3>
                     <h3><a class="back" href="addSportCar.jsp"> Back to Add Sport Car</a></h3>
                    <h3><a class="back" href="index.jsp"> Back to Main Menu</a></h3>
             </div>
         </section>
               <footer>&COPY; Eng.Mostafa Khaled , Java 205, <%= new java.util.Date() %></footer>

    </body>
</html>

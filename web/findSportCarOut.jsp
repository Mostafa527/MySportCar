

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.Cars"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Find Sport Car Output</title>
        
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <header><h1>Java MVC Project Using Servlets & JSP</h1></header>
         <section>
             <div>
                 <h1 class="head">Find Sport Car Output</h1>
                 <% int model = (int)request.getAttribute("model"); %>
                 
                 <% ArrayList<Cars> cAL = (ArrayList<Cars>) request.getAttribute("cAL"); %>
                 <% if(cAL.size() > 0) { %>
          
                <table border="1">
                        <tr><th>Color</th><th>Model</th><th>Speed</th></tr>
                    <% for (Cars c : cAL) { %>
                         <tr></td><td><%= c.getColor()%></td><td><%= c.getModel()%></td><td><%= c.getSpeed()%></tr>
                    <% } %>
                </table>
                <% } else { %>
                <h3 class="message"> Sport Car With Model :   <%=model %> is not Found.</h3>
                <% } %>
                 </table>

                     <h3><a class="back" href="findSportCar.jsp"> Back to Find Sport Car</a></h3>
                    <h3><a class="back" href="index.jsp"> Back to Main Menu</a></h3>
             </div>
         </section>
          <footer>&COPY; Eng.Mostafa Khaled , Java 205, <%= new java.util.Date() %></footer>

    </body>
</html>

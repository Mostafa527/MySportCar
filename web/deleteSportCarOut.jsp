

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Delete Sport Car Output</title>
        
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <header><h1>Java MVC Project Using Servlets & JSP</h1></header>
         <section>
             <div>
                 <h1 class="head">Delete Sport Car Output</h1>
                 <% int model = (Integer)request.getAttribute("model"); %>
                  <% int count = (Integer)request.getAttribute("count"); %>
                  
                  <% if (count>0) { %>
                    <h3 class="message">Sport Car of Model <%=model %> is deleted <%=count %> time(s) successfully.</h3>
                    
                   <% } else { %>
                    <h3 class="message">Sport Car of Model  <%=model %> is not found. </h3>
          
                    <% } %>
                     <h3><a class="back" href="deleteSportCar.jsp"> Back to Delete Sport Car</a></h3>
                    <h3><a class="back" href="index.jsp"> Back to Main Menu</a></h3>
             </div>
         </section>
                    <footer>&COPY; Eng.Mostafa Khaled , Java 205, <%= new java.util.Date() %></footer>

    </body>
</html>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Menu</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header><h1>Java MVC Project Using Servlets & JSP </h1></header>
        <section>
            <div>
                <h1 class="head">Main Menu</h1>
                <table>
                    <tr><th><a href="addSportCar.jsp">1- Add A Sport Car</a></th></tr>
                  <tr><th><a href="deleteSportCar.jsp">2- Delete All Matching</a></th></tr>
                     <tr><th><a href="findSportCar.jsp">3- Find All Matching</a></th></tr>
                     <tr><th><a href="MyController?opr=er">4- Erase All Data</a></th></tr>
                  <tr><th><a href="MyController?opr=list">5- List Sport Cars</a></th></tr>

                </table>
            </div>
        </section>
        <footer>&COPY; Eng.Mostafa Khaled , Java 205, <%= new java.util.Date() %></footer>
    </body>
</html>

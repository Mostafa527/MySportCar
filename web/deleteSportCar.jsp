

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Delete Sport Car</title>
    </head>
    <body>
        <header><h1>Java MVC Project Using Servlets & JSP</h1></header>
        <section>
            <div>
                <h1 class="head">Delete Sport Car</h1>
                <form action = "MyController">
                    <table>
                        <tr><th>Model</th><td><input type="text" name="model"></td></tr>
                    </table>
                    <br>
                    <input type = "hidden" name="opr" value="deleteAllMatch">
                    <input type = "submit" value = " Delete ">
                </form>
            </div>
            
            
        </section>
           <footer>&COPY; Eng.Mostafa Khaled , Java 205, <%= new java.util.Date() %></footer>
    </body>
</html>

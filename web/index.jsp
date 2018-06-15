<%-- 
    Document   : index
    Created on : 08-06-2018, 15:31:07
    Author     : abdon_g401
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body style="background-color: greenyellow ">
        <fieldset>
            <legend>Login</legend>
            <form action="servlet" method="post">
                 
                <table>
                    <tr>
                         <%
                            if(request.getAttribute("msg")!=null){
                            out.print(request.getAttribute("msg"));
                        }
                          
                            %>
                        
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td><input type="text" name="user"></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="pass"></td>                     
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Ingresar">
                        </td>
                    </tr>
                    <tr>
                        <td>
                           
                        </td>
                        
                    </tr>
                    
                </table> 
            </form>
    </body>
</html>

<%-- 
    Document   : Consultar
    Created on : 14-06-2018, 14:45:44
    Author     : abdon_g001
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: yellowgreen">
        <fieldset>Consultar Requerimiento
            <fieldset>
          <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Requerimiento","root","");
String query="SELECT * FROM Gerencia";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<p>Gerencia:<select>");

while(rs.next()){
    
    out.print("<option>"+rs.getString("nombre")+"</option>");
   
    
    
}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>

<%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Requerimiento","root","");
String query="SELECT * FROM Departamento";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<p>Departamento:<select>");

while(rs.next()){
    
    out.print("<option>"+rs.getString("nombre")+"</option>");
   
    
    
}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>

<%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Requerimiento","root","");
String query="SELECT * FROM Asignar_a";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<p>Asignar_a:<select>");

while(rs.next()){
    
    out.print("<option>"+rs.getString("nombre")+"</option>");
   
    
    
}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>
<p><input type="submit" value="Buscar"></p> 
<table border="1" class="table">
    <tr>
        <th>Gerencia</th>
        <th>Departamento</th>
        <th>Asignado</th>
        <th>Requerimiento</th>
    </tr>
    <tr>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
    </tr>
    <tr>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
    </tr>
    <tr>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
        <th><input type="value"></p></th>
    </tr>
    
</table>
        
         <p><a href="menu.jsp"><input type="submit" value="Volver al menú"></a></p>
            </fieldset>
        
        </fieldset>
    </body>
</html>
 
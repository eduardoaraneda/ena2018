<%-- 
    Document   : Ingresar
    Created on : 08-06-2018, 16:25:23
    Author     : abdon_g401
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: yellowgreen">
       
        
      
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

<%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Requerimiento","root","");
String query="SELECT * FROM Requerimientos";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<p>Requerimientos:<select>");

while(rs.next()){
    
    out.print("<option>"+rs.getString("nombre")+"</option>");
   
    
    
}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>

<p>Requerimiento: <input type="" value placeholder="Ingrese descripcion del requerimiento"></p>
<input type="submit" value="Guardar"></a></p>
<p><a href="menu.jsp"><input type="submit" value="Volver al menú"></a></p>
<p><a href="index.jsp"><input type="submit" value="Salir"></a></p>
        
    </body>
</html>

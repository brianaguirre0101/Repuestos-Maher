<%@page import="Entidad.Categorias"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<link rel="stylesheet" type="text/css" href="Stylesheet.css">
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <script type="text/javascript">
    $(document).ready( function () {
        $('#table_id').DataTable();
    } );
    </script>

<style>
body {
background-image: url("imagenes/3.jpg");
background-position:center;
}
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif;}
.w3-sidebar {
  z-index: 3;
  width: 250px;
  top: 43px;
  bottom: 0;
  height: inherit;
}

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #000000;
  text-align: left;
  padding: 8px;
}

tr{
  background-color:#1a53ff;
}
</style>
<body>
<body>
	<jsp:include page="Header.jsp"/>
	<jsp:include page="MenuLateral.jsp"/>
	<jsp:include page="Footer.jsp"/>
		<%
		List<Categorias> listaA = new ArrayList<Categorias>();
		if (request.getAttribute("listaCat") != null) {
			listaA = (List<Categorias>) request.getAttribute("listaCat");
		}
	%>


	
	<!--  -->
			<div style="position:absolute;right: 0; top: 40px; left: 250px; bottom: 0; right: 0;" class="container">
		<h2>Modificar Categorias</h2>
	
	<div id="contenedor">
<table   class="table table-striped table-dark">
    <thead>
	    <thead>
    
  <tr>
			<td><b>ID Categorias</b></td>
			<td><b>NOMBRE</b></td>
			<td><b>ESTADO</b></td>
			<td><b>boton</b></td>
			  </tr>
     </thead>
   
		<%
			for (Categorias a : listaA) {
		%>

		
			

       <form method="post" action="ServletCategorias?Param=<%=a.getId()%>">
			<tr><td><%=a.getId()%></td>
			<td><input type="text" name="nombre" value="<%=a.getNombre()%>" required pattern="^[a-z]*$"></td>
		
			<td>
			<%
		
			int numEntero2 = Integer.parseInt(a.getEstado());
			if(numEntero2==1){
				%><select name="estado">
				<option value="1">Activo</option>
				<option value="0">Inactivo</option>
			
			</select> <% 
			
			} 
			else if(numEntero2==0){
				
				%><select name="estado">
				<option value="0">Inactivo</option>
				<option value="1">Activo</option>
			
			</select> <% 
				
			}%>
			</td>
			<td> <input type="submit" name="btnActualizarcategorias" value="Actualizar"> </td>
			</tr>
		</form>

		

		<%
			}
		%>
		

	
  
</table>
</div>

<input type="submit" name="btnEliminar2" value="<<" onClick="location.href='ServletCategorias?Param=Modificar&pag=prev'" style="position:relative; top:60%; left:40% ; transform:translate(-50%,-50%)";>
<button style="position:relative; top:60%; left:42% ; transform:translate(-50%,-50%)"><%= request.getAttribute("pagina") %></button> 
<input type="submit" name="adelantar" value=">>" onClick="location.href='ServletCategorias?Param=Modificar&pag=next'" style="position:relative; top:60%; left:45% ; transform:translate(-50%,-50%)">
	
				<br><br><br><br><br>
<% 
	if(request.getAttribute("estadocategoria")!=null)
	{
			if(((Boolean)request.getAttribute("estadocategoria"))==true)
			{
				%>
				<h2 style="position: absolute; top:85%; left:35%" >Actualizacion correcta</h2>
				<%
				
			}
			else
			{
%>               <h2 style="position: absolute; top:85%; left:35%" >Actualizacion incorrecta</h2>
			
				<%
				
			}
	}
 %>
</body>
</html>
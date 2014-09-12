<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">


</script>
</head>
<body>
	<a href="./index.jsp">P�gina Inicial</a>
	<h3>Para unirte a la partida, elige una  silla libre y aguarda que se complete la mesa</h3>
	<a href="./refrescarMesa.html">Ver al resto de jugadores</a>
	<table>
		<tr>
			<td></td>
			<td>
				<c:if test="${mesa[0] == null}">
					<c:if test="${jugadorActual == null }">
						<a href="./sentarJugador.html?silla=0&nombre=${param.nombre}">
						<img src='imagenes/sillaIzq.jpg' width='100px' height='150px'/>
						</a>
					</c:if>
					<c:if test="${jugadorActual != null }">
						<img src='imagenes/sillaIzq.jpg' width='100px' height='150px'/>
					</c:if>
				</c:if>
				<c:if test="${mesa[0] != null}">
					<h3>${mesa[0].nombre}</h3>
				</c:if>
			</td>
			<td></td>
		</tr>
		<tr>
			<td>
				<c:if test="${mesa[3] == null}">
					<c:if test="${jugadorActual == null }">
						<a href="./sentarJugador.html?silla=3&nombre=${param.nombre}">
						<img src='./imagenes/sillaIzq.jpg' width='100px' height='150px'/>
						</a>
					</c:if>	
					<c:if test="${jugadorActual != null }">
						<img src='./imagenes/sillaIzq.jpg' width='100px' height='150px'/>
					</c:if>
				</c:if>
				<c:if test="${mesa[3] != null}">
					<h3>${mesa[3].nombre}</h3>
				</c:if>
			</td>
			
			<td><img id="imagen" alt="" src="imagenes/mesa.jpg" width="100px" height="150px"></td>
			
			<td>
				<c:if test="${mesa[1] == null}">
					<c:if test="${jugadorActual == null }">
						<a href="./sentarJugador.html?silla=1&nombre=${param.nombre}">
						<img src='imagenes/silla.jpg' width='100px' height='150px'/>
						</a>
					</c:if>	
					<c:if test="${jugadorActual != null }">
						<img src='imagenes/silla.jpg' width='100px' height='150px'/>
					</c:if>	
				</c:if>
				<c:if test="${mesa[1] != null}">
					<h3>${mesa[1].nombre}</h3>
				</c:if>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<c:if test="${mesa[2] == null}">
					<c:if test="${jugadorActual == null }">
						<a href="./sentarJugador.html?silla=2&nombre=${param.nombre}">
						<img src='imagenes/silla.jpg' width='100px' height='150px'/>
						</a>
					</c:if>	
					<c:if test="${jugadorActual != null }">
						<img src='imagenes/silla.jpg' width='100px' height='150px'/>
					</c:if>	
				</c:if>	
				<c:if test="${mesa[2] != null}">
					<h3>${mesa[2].nombre}</h3>
				</c:if>
			</td>
			<td></td>
		</tr>
	</table>
</body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="style-backend.css">
</head>
<body>
	<!--    <div class="sidebar">-->
	<div class="top-area">
		<center>
			<h2>Admin Panel</h2>
		</center>
		<a href="controller.jsp?page=logout" class="button"
			style="float: right; color: red">Logout</a>
	</div>

	<div class="sidebar-background">

		<%
		//background:crimson
		if (session.getAttribute("userStatus") != null) {
			if (session.getAttribute("userStatus").equals("1")) {
		%>

		<%
		//pgpart = pagepart, accounts=1,courses=2,questions=3 and profile is default
		if (request.getParameter("pgprt").equals("1")) {
		%>

		<jsp:include page="accounts.jsp" />

		<%
		} else if (request.getParameter("pgprt").equals("2")) {
		%>

		<jsp:include page="courses.jsp" />

		<%
		} else if (request.getParameter("pgprt").equals("3")) {
		%>

		<jsp:include page="questions.jsp" />
		<%
		} else if (request.getParameter("pgprt").equals("4")) {// if( 4 == 4 )
		%>

		<jsp:include page="showall.jsp" />
		<%
		} else if (request.getParameter("pgprt").equals("5")) {
		%>

		<jsp:include page="controller.jsp" />
		<%
		} else {
		%>

		<jsp:include page="profile.jsp" />

		<%
		}
		%>

		<%
		} else
		response.sendRedirect("login.jsp");
		} else
		response.sendRedirect("login.jsp");
		%>
	
</body>
</html>
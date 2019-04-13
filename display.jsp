<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>
<%	Connection con=null;
	Statement st=null;
	Statement st1=null;
	ResultSet rs=null;
	ResultSet rss=null;
	String username=request.getParameter("username");
	String pass=request.getParameter("pass");
	if (username.equals("shamendra@sukhdhamhospital.com"))
	{
		if (pass.equals("sukhdham@123"))
		{
			
		}
		else
		{
			response.sendRedirect("login.html");
		}
	}
	else{
		response.sendRedirect("login.html");
	}
%>
<html>
	<head>
	<title>Edit Options</title>
	<link rel='stylesheet' type='text/css' href='css/edit.css'>
	</head>
	<body>
		<div class='upper-space'>
		</div>
		<div class='middle-section'>
			<div class='table-container'>
				<div class='heading-table'>
					<i>Editing Options</i>
				</div>
				<form method='post' action='registration' name='registration-form' >
					<table cellpadding='10' cellspacing='20'>
						<tr><td colspan='2'><a href='appointd.jsp' ><input type='button' value="Appointment" /></a></td></tr>
						<tr><td colspan='2'><a href='contactd.jsp' ><input type='button' value="Contact section" /></a></td></tr>
						<tr><td colspan='2'><a href='bookd.jsp' ><input type='button' value="Book-a-test" /></a></td></tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>
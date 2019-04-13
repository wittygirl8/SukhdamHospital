<html>
	<head>
		<title>display Bookings</title>
	</head>
	<body>
		<table>
			<tr width="1200"><td width="100">Ticket ID</td><td width="150">NAME</td><td width="100">CONTACT</td><td width="100">GENDER</td><td width="100">AGE</td><td width="250">ADDRESS</td><td width="100">PIN</td><td width="100">TEST NAME</td></tr>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>
<%	
	Connection con=null;
	Statement st=null;
	Statement st1=null;
	ResultSet rs=null;
	ResultSet rss=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost/sukhdham","root","");
	}
	catch(ClassNotFoundException e)
	{
        out.println("Class Not Found Exception"+e);
	}
    catch(SQLException pe)
	{
        out.println("SQL Exception"+pe);
	}
	try{
		int idd=0;
		st=con.createStatement();
		st1=con.createStatement();
		rs=st.executeQuery("SELECT * FROM book");
		while(rs.next())
		{
			String tkt=rs.getString(1);
			String name=rs.getString(2);
			String phone=rs.getString(3);
			String gender=rs.getString(4);
			String age=rs.getString(5);
			String address=rs.getString(6);
			String pin=rs.getString(7);
			String testn=rs.getString(8);
%>
	<tr width="1200"><td width="100"><%=tkt%></td><td width="150"><%=name%></td><td width="100"><%=phone%></td><td width="100"><%=gender%></td><td width="100"><%=age%></td><td width="250"><%=address%></td><td width="100"><%=pin%></td><td width="100"><%=testn%></td></tr>
<%
		}
	}
	catch(SQLException p)
		{
			out.println("sql exception"+p);
		}
        catch(Exception e4)
		{
			out.println(" exception");
		}		
%>
		</table>
	</body>
</html>
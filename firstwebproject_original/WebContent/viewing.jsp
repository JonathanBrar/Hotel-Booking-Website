<%@page import="eHotel.entities.Room"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee view</title>
</head>
<body>

	<%
		String EmpName = (String) request.getAttribute("empName");
	%>
	<form method="post" action="roombook">
		<h4>
			Welcome,
			<%=EmpName%></h4>
				<h4>Here are all the rooms for sale</h4>
				<ul>
					<%
						Object obj1 = request.getAttribute("allRooms");
						
						ArrayList<Room> aroomList = null;
						if (obj1 instanceof ArrayList) {
							aroomList = (ArrayList<Room>) obj1;
						}
						
						if (aroomList != null) {
							for (Room room : aroomList) {
								String roominfo = room.getRoom_no() + "---" + room.getRoom_status();
					%>
					<li><%=roominfo%></li>
					<%
						}
						}
					%>
				</ul>
	</form>
</body>
</html>
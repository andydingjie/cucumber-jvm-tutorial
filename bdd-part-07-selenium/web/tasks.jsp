<%@ page import="java.util.*" %>
<%@ page import="ngpanwei.backlog.app.backlog.*" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Backlog</title>
<body>
<h1>Backlog Management</h1>
<hr/>
	New Task 
	<form action='/task' method='post'>
	     <input name='action' value='add' type='hidden' />
		 <input name='taskName' /><input type='submit' value='add'>
	</form>
	<div id='backlog'><%
		List<Task> tasks = (List<Task>)request.getAttribute("tasks");
	    if(tasks==null||tasks.size()<1) {
	        %>
				<h2>No Backlog Items</h2><hr/>
			<%
	    } else {
	        %>
				<h2>Backlog Items</h2><hr/>
				<table><tr><td>Task Name</td><td>Status</td></tr>
			<%
			int i = 0 ;
			for(Task task : tasks) {
			%>
				<tr>
					<td id='task-<%=i%>'><%=task.getName()%></td>
					<td id='taskStatus-<%=i%>'><%=task.getStatus()%></td>
				</tr>
			<%
			}
			%>
			</table>
			<%
		}
	%></div>
</body>
</html>

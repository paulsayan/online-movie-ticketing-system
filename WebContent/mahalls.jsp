<%--

    Online Movie Ticketing System
    Copyright (C) 2017 - Sayan Paul, Arjun Sengupta, Shubham Ghosh

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

--%>

<%@ include file = "header.jsp" %>
<body>
<div class="bootstrap_container">
            <nav class="navbar navbar-default w3_megamenu" role="navigation">
                <div class="navbar-header">
          			<button type="button" data-toggle="collapse" data-target="#defaultmenu" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="hahome.jsp" class="navbar-brand"><i class="fa fa-home"></i></a>
				</div><!-- end navbar-header -->
				<div id="defaultmenu" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="mahome.jsp">Home</a></li>
                    <li><a href="mahalls.jsp">View Halls</a></li>
                    <li><a href="addedithall.jsp">Add Hall</a></li>
                    <li><a href="mamovies.jsp">View Movies</a></li>
                    <li><a href="addeditmovie.jsp">Add Movie</a></li>
                    
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
					
				</ul><!-- end nav navbar-nav navbar-right -->
                    </div>
                    </nav>
   			
</div>

<%@ page import="com.movieticket.model.*" %>
<%@ page import="java.util.*" %>
<%!
ArrayList<Hall> hlist=null;
ArrayList<String> hlistnames=null;
Hall h=null;
User usr=null;
Movie m=null;
String form="";

String hallid="";
String hallname="";
String hallloc="";
String halladdr="";
String halladminid="";

%>
<%
u=(User)session.getAttribute("user");
if(u!=null)
{
h=new Hall();
hlist=h.viewHalls();
%>
<br><br>
<form action="addedithall.jsp" method=post align=center>
<center>
Choose Hall by Id: <select name="hall">
</center>
<% 
for(Hall ob:hlist)
{
	hallid=Long.toString(ob.getHallId());
%>
<option value="<%=hallid %>"><%=hallid %></option>
<%
}
%>
</select>
<input type=hidden name=form value=editdelete>
<input type=submit name=action value=edit>
<input type=submit name=action value=delete>
</form>
<table style="width:80%" align=center border=4>
<tr>
<th>Hall Id</th>
<th>Hall Name</th>
<th>Location</th>
<th>Address</th>
<th>Admin Id</th>
</tr>
<%

for(Hall ob:hlist)
{
	hallid=Long.toString(ob.getHallId());
	hallname=ob.getHallName();
	hallloc=ob.getLoc();
	halladdr=ob.getAddr();
	halladminid=Long.toString(ob.getAdminId());
	%>
	<tr>
	<td><%=hallid %></td>
	<td><%=hallname %></td>
	<td><%=hallloc %></td>
	<td><%=halladdr %></td>
	<td><%=halladminid %></td>
	</tr>
	<%
}
%>
</table>
<%
}
else
{
	out.println("Unauthenticated Access!!!");
}
%>
<%@ include file = "footer.jsp" %>
</body>
</html>
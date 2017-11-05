<%
u = (User) session.getAttribute("user");
if(u==null)
{
response.sendRedirect("index.jsp?msg=Please%20Login%20to%20book%20seats!!!");

}
%>

<%@ include file = "header.jsp"%>
<%@ include file = "menubar.jsp" %>
<%@ page import="java.util.*" %>

<body>

<center>
<form action=BookSeats method=post>

<%!
final String[] rowidset= {"A","B","C","D","E","F","G","H","J","K","L","N","P","Q","R"};
Seat st=null;
Show shw=null;
Movie mov=null;
Hall hall=null;

ArrayList<String> bookedSeats=null;
long showid;
String showdate="";
String moviename="";
double[] prices;

int i=0,j=0,k=0;
%>
<%
u=(User)session.getAttribute("user");
showid=Long.parseLong(request.getParameter("showid"));

st=new Seat();
shw=new Show();

shw=shw.getShowByShowId(showid);

moviename=shw.getMovieByShowId(showid);

hall=shw.getHallByShowId(showid);
prices=shw.getPriceByShowId(showid);

bookedSeats=st.getBookedSeats(showid);
showdate=shw.getStartTime().toString().split(" ")[0];



%>
<br>

<%
if(prices!=null)
{

%>
<table style="border-spacing: 100px;"> 
<thead>
<th bgcolor=#b2b4b7>
<center>All EYES THIS WAY PLEASE</center>
</th>
<th>
<center>&nbsp;</center>
</th>
</thead>
<tr>
<td style="padding: 50px;">

<table>

<tr>
<%
for(i=0;i<15;i++)
{
	%>
	
	<%
}
%>
</tr>
<%
for(i=0;i<=15;i++)
{
%>
	<tr>
	<%
	if(i==0){
	%>
	<td><b>&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
	<%
	}
	else{
	%>
	<td><b><%=rowidset[i-1] %>&nbsp;&nbsp;&nbsp;</b></td>
	<%
	}
	if(i==0){
		for(j=0;j<20;j++)
		{
		
		%>
			<td><font size=2><%=j+1 %></font></td>
		<%
			if(j==4||j==14)
			{
				%>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				
				<%
			}
		}
		
	}
	else
	{
	for(j=1;j<=20;j++)
	{
	
		if(bookedSeats!=null)
		{
			if(bookedSeats.contains(rowidset[i-1]+j))
			{
		
		%>
		<td><input type=checkbox name=seat value=<%=rowidset[i-1]+j %> disabled=disabled ></td>
		<%
			}
			else
			{
		%>
		<td><input type=checkbox name=seat value=<%=rowidset[i-1]+j %>></td>
		<%
			}
		}
		else
		{
		%>
			<td><input type=checkbox name=seat value=<%=rowidset[i-1]+j %>></td>
		<%		
		}
		if(j==5||j==15)
		{
			%>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
			
			<%
		}
	}
	}
	%>
	</tr>
	<%
	if(i==5||i==12)
	{
		%>
		<tr>
		<%
		for(k=0;k<15;k++){
		%>
		<td>&nbsp;</td>
		<%
		}
		%>
		</tr>
		<%
	}
}
%>

</table>

</td>
<td>
<table>

<tr><td><b>Movie Name : </b></td><td align="right"> <%=moviename %> </td></tr>
<tr><td><b>Hall : </b></td><td td align="right"> <%=hall.getHallName() %> </td></tr>
<tr><td><b>Show Date : </b></td><td td align="right"> <%=showdate %> </td></tr>
<tr><td><i>Prices (in Rupees):- </i></td></tr>
<tr><td><b>Normal (A-E) : </b></td><td td align="right"> <%=prices[0] %> </td></tr>
<tr><td><b>Executive (F-N) : </b></td><td td align="right"> <%=prices[1] %> </td></tr>
<tr><td><b>Premium (P-R) : </b></td><td td align="right"> <%=prices[2] %> </td></tr>

<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td></tr>
</table>
<input type=hidden name=showid value=<%=showid %>>
<input type=hidden name=showdate value=<%=showdate %>>
<input type=submit value="Book Now" class="btn btn-primary btn-sm">

</td>
</tr>
</table>

<%
}
else
{
	%>
	<center><h5>Sorry, booking for this show is currently suspended!!! Come back later.</h5>
	<h5>Apologies for the inconvenience.</h5>
	</center>
	<%
}

%>
</form>
</center>
</body>
<%@ include file = "footer.jsp" %>
</html>
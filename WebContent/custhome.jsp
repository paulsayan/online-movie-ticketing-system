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

<%@ include file = "header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "menubar.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.movieticket.model.*" %>
<%@ page import="java.io.*" %>


<%!
Movie mov=null;
ArrayList<Movie> movies=null;
Show sh=null;
String poster=null;

SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
Date now = new Date();
String today= sdfDate.format(now);
%>


<%
mov=new Movie();
movies=new ArrayList<Movie>();
sh=new Show();
movies=sh.getMoviesAvailableForBooking(today);



%>
<div class="container">
<div class="main-content">

<!-- General page of Customer Home-->
<br><br>
<div class="container">
	<div class="footer-top-grid">

	<div class="col-md-12 movies-now-playing">				
			<h3 class="m-head">Latest Movies</h3>
			
<%
for(Movie m:movies)
{
	poster="posters"+File.separator+m.getPoster();
	
%>

		<div class="col-md-3 movie-preview">
			
			<a href="" class="mask">
				
				<img src="<%=poster %>" class="img-responsive zoom-img" alt="" />
				
				<div class="m-movie-title">
				
					<a class="m-movie-link" href="" ><%=m.getMovieName() %></a>
					
					<div class="clearfix"></div>
					<div class="m-r-date">
						
						<p>Director : <%=m.getDirector() %></p>
						<p>Cast : <%=m.getCast() %></p>
						<p>Genre : <%=m.getGenre() %></p>
						
						<a href="selectshowdate.jsp?movieid=<%=m.getMovieId()%>">Book Now</a>
					</div>
					
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
	
<%

}

%>		
		
		
		
		
		
		
		<div class="clearfix"></div>
	
	</div>
		
		
			
			<div class="clearfix"></div>			
			</div>
		<div class="footer-top-strip">
			
		</div>
	</div>

</div>
</div>
</body>
<%@ include file = "footer.jsp" %>
</html>
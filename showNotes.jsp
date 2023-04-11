<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.NoteTaker"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<%@include file="WEB-INF/base.jsp"%>
</head>
<body>

	<%@include file="WEB-INF/navbar.jsp"%>
	<h2 class="m-3">All Notes :</h2>

	<div class="container">

		<div class="row">

			<div class="col-md-8 offset-md-2">


				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from NoteTaker");

				List<NoteTaker> list = q.list();

				for (NoteTaker nt : list) {
				%>


				<div class="card mb-2">
					<img class="card-img-top m-2 mx-auto" src="image/post-it.png"
						style="max-width: 100px;" alt="Card image cap" />
					<div class="card-body">
						<h5 class="card-title">
							<%=
							nt.getTitle()
							%>
						</h5>
						<p class="card-text">
							<%=
							nt.getContent()
							%>
						</p>
						<p class="card-text">
							<%=
							nt.getWriter()
							%>
						</p>
						<p style="text-align:right; color:blue;"><b >
							<%=
							nt.getAddedDate()
							%>
						</b>
						</p>

						<div class="text-center">
							<a href="DeleteServlet?id=<%=nt.getId()%>" class="btn btn-danger">Delete</a>
							<a href="editNotes.jsp?id=<%=nt.getId()%>"
								class="btn btn-primary">Update</a>
						</div>

					</div>
				</div>

				<%
				}

				s.close();
				%>

			</div>
		</div>
	</div>

	<%@include file="WEB-INF/footer.jsp"%>
</body>
</html>

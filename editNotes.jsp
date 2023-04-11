<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.NoteTaker" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Notes</title>
<%@include file="WEB-INF/base.jsp"%>
</head>
<body>
	<%@include file="WEB-INF/navbar.jsp"%>
	<h2 class="m-2">Edit Note : </h2>
	
	<%
	
	int id=Integer.parseInt(request.getParameter("id").trim());
	
	Session s=FactoryProvider.getFactory().openSession();
	
	NoteTaker nt=s.get(NoteTaker.class, id);
	
	
	
	
	%>
	 
	<div class="container mt-3">
		

		<form action="UpdateServlet" method="post">
		
		<input value="<%= nt.getId() %>" name="id" type="hidden" />
		
			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> <input
					name="title"
					type="text" 
					class="form-control" 
					id="title" required
					aria-describedby="emailHelp" 
					placeholder="Enter your Title here"
					value="<%= nt.getTitle() %>"
					>

			</div>
			<div class="form-group">
				<label for="content">Note Content</label>

				<textarea required="required" 
				name="content" 
				id="content" 
				placeholder="Enter your content here"
				class="form-control" 
				style="height: 235px" ><%= nt.getContent() %> </textarea>


			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Writer</label> 
				<input type="text" 
				name="writer"
					required class="form-control" 
					id="writer" aria-describedby="emailHelp"
					placeholder="Enter your Writer here" value="<%= nt.getWriter() %>" >

			</div>
			
			<p><b> <%= nt.getAddedDate() %> </b></p>
			
			<div class="text-center">
				<button type="submit" class="btn btn-success">Save your note</button>
			</div>

		</form>



	</div>
	
	
	

	<%@include file="WEB-INF/footer.jsp"%>
</body>
</html>

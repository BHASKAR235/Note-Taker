<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="WEB-INF/base.jsp"%>
</head>
<body>

	<%@include file="WEB-INF/navbar.jsp"%>

	<!-- add form -->
	<div class="container mt-3">
		<h2>Please fill your note detail</h2>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> <input
					name="title"
					type="text" class="form-control" id="title" required
					aria-describedby="emailHelp" placeholder="Enter your Title here">

			</div>
			<div class="form-group">
				<label for="content">Note Content</label>

				<textarea required="required" name="content" id="content" placeholder="Enter your content here"
					class="form-control" style="height: 235px"></textarea>


			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Writer</label> <input type="text" name="writer"
					required class="form-control" id="writer" aria-describedby="emailHelp"
					placeholder="Enter your Writer here">

			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>

		</form>



	</div>

	<%@include file="WEB-INF/footer.jsp"%>
</body>
</html>

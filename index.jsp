<!doctype html>
<html lang="en">
<head>

<title>Note Taker : Home Page</title>
<%@include file="WEB-INF/base.jsp"%>

</head>
<body>

	<%@include file="WEB-INF/navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide bg-dark mt-5" data-interval="1000"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block  img-fluid mx-auto" src="image/post-it.png" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block img-fluid mx-auto" src="image/notepad.png" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block img-fluid mx-auto" src="image/notes.png" alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
		
		
	</div>

	<div class="card py-3 ">
		<img alt="note icon" class="img-flud mx-auto" src="image/post-it.png"
			style="max-width: 400px;">

		<h2 class="text-center text-uppercase text-primary mt-3">Start
			taking your notes</h2>

		<div class="text-center mt-2 mb-2">
			<a href="addNotes.jsp" class="btn btn-outline-success">START HERE</a>
		
		</div>

	</div>



	<%@include file="WEB-INF/footer.jsp"%>

</body>
</html>

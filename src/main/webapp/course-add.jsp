<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course</title>
<jsp:include page="common/layout.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<div class="row mt-3">
			<div class="card col-6 offset-2">
				<div class="card-body">
					<h2 class="card-title">Add New Course</h2>
					<hr>
					<c:url var="save" value="/add-course"></c:url>
					<form action="${save }" class="form" method="get">
						<div class="form-group ">
						<label for="name">Name</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Enter Course Name">
						</div>
						<div class="form-group"> 
						<label for="level">Level</label>
						<select name="level" class="form-control">
							<option value="basic">Basic</option>
							<option value="intermediate">Intermediate</option>
							<option value="advance">Advance</option>
						</select>
					</div>
					<div class="form-group">
						<label for="fees">Fee</label>
						<input type="text" class="form-control" name="fees" placeholder="Enter Fees" required="required">
					</div>
						<button class="btn btn-danger" type="reset">Clear</button>
						<button class="btn btn-primary" type="submit">Add</button>
						
				</div>
			</div>
		</div>
	</div>
</body>
</html>
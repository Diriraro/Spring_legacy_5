<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
</head>
<body>
<c:import url="../template/header_sub.jsp"></c:import>
<h1>${board} Reply form</h1>


<form action="./${board}Reply" method="post">
	<input type="hidden" name="num" value="${num}">
	<div class="form-group">
	<label for="title">Title</label>
      <input type="text" class="form-control" id="title" name="title" >
    </div>
	<div class="form-group">
      <label for="writer">Writer:</label>
      <input type="text" class="form-control" id="writer" placeholder="Enter Subject" name="writer">
    </div>
		<div class="form-group">
			<label for="contents">Contents:</label>
			<textarea class="form-control" rows="20" id="contents"
				placeholder="Enter Contents" name="contents"></textarea>

			<button type="submit" class="btn btn-default">Submit</button>
		</div>
	</form>

</body>
</html>
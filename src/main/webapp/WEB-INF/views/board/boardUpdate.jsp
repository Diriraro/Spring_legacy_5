<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/boot.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header_sub.jsp"></c:import>
	<h1>${board} Update Form</h1>
	<form action="./${board}Update" method="post">
		<div class="form-group">
			<input type="hidden" class="form-control" id="num" name="num" value="${vo.num}">
		</div>
		<div class="form-group">
			<label for="title">Title</label> <input type="text"
				class="form-control" id="title" name="title" value="${vo.title}">
		</div>
		<div class="form-group">
			<label for="writer">Writer:</label> <input type="text"
				class="form-control" id="writer" name="writer" value="${vo.writer}"	disabled="disabled">
		</div>
		<div class="form-group">
			<label for="contents">Contents:</label>
			<textarea class="form-control" rows="20" id="contents" placeholder="Enter Contents" name="contents">${vo.contents}</textarea>

			<button type="submit" class="btn btn-default">Submit</button>
		</div>
	</form>

</body>
</html>
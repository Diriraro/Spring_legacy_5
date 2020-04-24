<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/summer.jsp"></c:import>
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>
</head>
<body>
<c:import url="../template/header_sub.jsp"></c:import>
	<div class="container">
		<h1>${board} Write Form</h1>
		
		
		<form action="./${board}Write" id="frm" method="post" enctype="multipart/form-data">
		  <div class="form-group">
		    <label for="title">Title:</label>
		    <input type="text" class="form-control" id="title" name="title">
		  </div>
		  <div class="form-group">
		    <label for="writer">Writer:</label>
		    <input type="text" class="form-control" id="writer" value="${member.id}" readonly="readonly" name="writer">
		  </div>
		 <div class="form-group" >
		    <label for="contents">Contents:</label>
		    <textarea rows="20" cols="" class="form-control" id="contents" name="contents"></textarea>
		  </div> 
		  
		  <input type="button" id="add" class="btn btn-info" value="AddFile">
		  <div id="file">
			  
		  </div>
 		<!-- contents Server null이 될때 
 		  <input type="hidden" name="contents" id="con">
 		--> 
		  
		  
		  <input type="button" id="btn" class="btn btn-default" value="Write">
		</form>
		
	</div>
<script type="text/javascript" >
$(document).ready(function() {
	  $('#contents').summernote({
		  height:400,
		  minHeight:400,
		  maxHeight:400,
		  focus : true
	  });
	});
</script>	
</body>
</html>
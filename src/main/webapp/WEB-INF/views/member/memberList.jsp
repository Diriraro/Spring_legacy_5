<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
</head>
<body>
<c:import url="../template/header_sub.jsp"></c:import>

<div class="container">
	<div class="row">
	<h1>${board} List</h1>
	
		<form class="form-inline" action="./memberList">
			 <div class="input-group input-group-sm col-xs-2">
				<select class="form-control" id="sel1" name="kind">
					<option value="bi">ID</option>
					<option value="bn">Name</option>
					<option value="bp">Phone</option>
					<option value="be">Email</option>
				</select>
			</div>
			  <div class="input-group input-group-sm col-xs-4">
				<input type="text" class="form-control" placeholder="Search" name="search">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
				</div>
			</div>
			
		</form>
		
		<table class="table table-hover">
			<tr>
				<td>ID</td>
				<td>NAME</td>
				<td>EMAIL</td>
				<td>PHONE</td>
				<td>AGE</td>
			</tr>
			<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.id}</td>
				<td>${vo.name}</td>
				<td>${vo.email}</td>
				<td>${vo.phone}</td>
				<td>${vo.age}</td>
			
			</c:forEach>
		</table>
		
		<h1>totalBlock : ${pager.totalBlock }</h1>
		<h1>totalPage : ${pager.totalPage }</h1>
		
		<div>
			<ul class="pagination">
			<c:if test="${pager.curBlock gt 1}">
			<li><a href="./memberList?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">이전</a></li>
			</c:if>			
			
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<li><a href="./memberList?curPage=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
			</c:forEach>
			
			<c:if test="${pager.curBlock lt pager.totalBlock}">
			<li><a href="./memberList?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">다음</a></li>
			</c:if>
			</ul>
		</div>
		

		
		 <div>
			<a href="./memberJoin" class="btn btn-danger">WRITE</a>
		</div> 
		
	</div>
</div>


</body>
</html>
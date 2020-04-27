<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<script type="text/javascript">
	$(function() {
		///////////////////////////////////// 전체 체크
		$("#result").on("click","#checkAll", function() {
			$(".check").prop("checked",$(this).prop("checked"));
			
		});
		
		/////////////////////////////////////
		///////////////////////////////////// 하나씩 체크되어있는지 확인
		$("#result").on("click",".check", function() {
			var result =true;
			$(".check").each(function() {
				if(!$(this).prop("checked")){
					result=false;
				};
			});
			$("#checkAll").prop("checked",result);
		});
				
		/////////////////////////////////////
		
		///////////////////////////////////// 버튼 누를시 버튼 누른 같은 라인의 ID+alert 창 띄우기
		$("#result").on("click","#del", function() {
			var ids = [];	// 빈 배열 생성
			$(".check").each(function() {
				if($(this).prop("checked")){
					//===1번방법 (title 사용)
					//var id = $(this).attr("title");
					//alert($("#"+id).text()); 
					
					//===2번방법 (button에 id 사용해서 미리 뿌려주기)
					//alert($(this).attr("id"));
				
					ids.push($(this).attr("id"));
				}
			});
			console.log(ids);
			//foreach 끝
			$.ajax({
				type:"get",
				url: "./memberDeletes",
				traditional : true,
				data: {
					ids: ids
				},
				success: function(data){
					$.get("./memberLists", function(data) {
						$("#result").html(data);
					});
				}
			});
			
		});
		/////////////////////////////////////

	});
</script>
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
		<div id="result">
			<table class="table table-hover">
				<tr>
					<td>ID</td>
					<td>NAME</td>
					<td>EMAIL</td>
					<td>PHONE</td>
					<td>AGE</td>
					<td> <input type="checkbox" id="checkAll"><button class="btn btn-danger" id="del">Delete</button> </td>
				</tr>
				<c:forEach items="${list}" var="vo" varStatus="i">
				<tr>
					<td id="id${i.index}">${vo.id}</td>
					<td>${vo.name}</td>
					<td>${vo.email}</td>
					<td>${vo.phone}</td>
					<td>${vo.age}</td>
					<td> <input type="checkbox" name="del" title="id${i.index}" id="${vo.id}" class="check"></td>
				
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
</div>

<!-- 
 <script type="text/javascript">
	/* 내가 한 망한거
	var check= $(".del").value;
	$.ajax({
		url: "./memberList",
		data : {			
			check : check
		},
		success: function(check){
			if(check){
				$("input").value=true;
			}
		},
		error: function(){
			
		}
	}); */
</script>
 -->


</body>
</html>
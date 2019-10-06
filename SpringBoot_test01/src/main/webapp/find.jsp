<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
			<center>
			<div class="panel panel-primary">
						<div class="panel-heading">
						<h1 class="panel-title">部门</h1>
						</div>
						</div>
			<a href="${pageContext.servletContext.contextPath }/dept/toInsert" class="btn btn-primary">增加</a>
				<table class="table table-striped">
					<tr>
					
						<th>id</th>
						<td>name</th>
						<th>loc</th>
						<th>image</th>
						<th>uname</th>
						<th>upass</th>
						<th>uid</th>
						<th>operation</th>
					</tr>
					<c:forEach items="${list }" var="e">
						<tr>
							<td>${e.deptno }</td>
							<td>${e.dname }</td>
							<td>${e.loc }</td>
							<td>${e.uid }</td>
							<td>${e.uname }</td>
							<td>${e.upass }</td>
							<td><img width="30px;" height="30px;"class="img-rounded" src="${pageContext.servletContext.contextPath }/upload/${e.url}"></td>
							<td>
							
		<a href="${pageContext.servletContext.contextPath }/dept/delete?deptno=${e.deptno}" class="btn btn-danger" >删除</a>
		<a href="${pageContext.servletContext.contextPath }/dept/toUpdate?deptno=${e.deptno}" class="btn btn-warning">修改</a>
								</td>
						</tr>
					</c:forEach>
				</table>
				<a href="javascript:void(0)" class="btn btn-info" onclick="toPage(1)">首页</a>
				<a href="javascript:void(0)" class="btn btn-info" onclick="toPage(${bean.nowPage-1})">上一页</a>
				<a href="javascript:void(0)" class="btn btn-info" onclick="toPage(${bean.nowPage+1})">下一页</a>
				<a href="javascript:void(0)" class="btn btn-info" onclick="toPage(${bean.totalPage})">尾页</a>
				跳转到:<select onchange="toPage(this.value)">
					<c:forEach begin="1" end="${bean.totalPage }" step="1" varStatus="i">
						<option ${bean.nowPage==i.index?'selected':'' } value="${i.index }">${i.index }</option>
					</c:forEach>
				</select>
				每页显示：<select onchange="pageSize(this.value)">
					<c:forEach begin="0" end="50" step="5" varStatus="i">
						<option value="${i.index }" ${bean.pageSize==i.index?'selected':'' }>${i.index }</option>
					</c:forEach>
				</select>
			</center>
</body>
<script type="text/javascript">
		function toPage(nowPage){
			if(nowPage<=0){
				nowPage=1;
			}
			if(nowPage>${bean.totalPage}){
				nowPage=${bean.totalPage};
			}
			window.location="findAll?nowPage="+nowPage;
		}
		function pageSize(pagesize){
			window.location="findAll?pageSize="+pagesize;
		}
</script>
</html>
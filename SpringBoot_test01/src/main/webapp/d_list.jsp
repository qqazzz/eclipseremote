<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<center>
		<h1>用户</h1>
			<table border="1" cellspacing="0" width="80%">
				<tr>
					<td>id</td>
					<td>uname</td>
					<td>upass</td>
					<td>ope</td>
					
				</tr>
				
				<c:forEach items="${u_list }" var="entity">
					<tr>
						<td>${entity.uid }</td>
						<td>${entity.uname }</td>
						<td>${entity.upass }</td>
						<td>
							<a href="${pageContext.servletContext.contextPath }/users/Check?uid=${entity.uid}">修改权限</a>
							<a href="${pageContext.servletContext.contextPath }/users/delete?uid=${entity.uid}">删除</a>
							<a href="${pageContext.servletContext.contextPath }/users/toUpdate?uid=${entity.uid}">修改</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--你好 版本冲突已解决！ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<center>
			<form action="${pageContext.servletContext.contextPath }/users/CheckDept" method="post">
					<h1>${entity.uname }</h1>
							<c:forEach items="${d_list }" var="entity">
							<input type="checkbox" name="deptno" value="${entity.deptno }">${entity.dname }			
					</c:forEach>
					</select>
					<input type="hidden" value="${entity.uid }" name="uid">
					<input type="submit" value="submit">
					</form>
			</center>
</body>
</html>

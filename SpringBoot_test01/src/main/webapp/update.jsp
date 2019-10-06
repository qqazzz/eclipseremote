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
			<form action="${pageContext.servletContext.contextPath }/dept/update" method="post" enctype="multipart/form-data">
			名称<input type="text" value="${entity.dname }" name="dname"><br/>
			工资:<input type="text" value="${entity.loc }" name="loc"><br/>
			用户:<select name="uid">
					<c:forEach items="${u_list }" var="entity">
						<option value="${entity.uid }">${entity.uname }</option>
					</c:forEach>
			</select><br/>
			图片：<input type="file" name="image"><br/>
			<input type="hidden" value="${entity.deptno }" name="deptno">
			<input type="submit" value="submit">
			</form>
			
</body>
</html>
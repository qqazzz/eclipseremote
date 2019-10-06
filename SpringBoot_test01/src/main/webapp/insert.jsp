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
        <h1 class="panel-title">添加部门</h1>
    </div>
    </div>
	<form action="${pageContext.servletContext.contextPath }/dept/insert" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="exampleInputEmail1">名称</label>
    <input type="name" class="form-control" id="exampleInputEmail1" placeholder="deptName">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">地址</label>
    <input type="loc" class="form-control" id="exampleInputPassword1" placeholder="loc">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">图片</label>
    <input type="file" name="image" class="btn btn-default">
用户:<select name="uid"  class="form-control">
			<c:forEach items="${u_list }" var="entity">
				<option value="${entity.uid }">${entity.uname }</option>
			</c:forEach>
		</select><br/>
    <p class="help-block">Example block-level help text here.</p>
  </div>

  <div class="checkbox">
    <label>
      <input type="checkbox"> Check me out
    </label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form> 

	</center>
</body>
</html>
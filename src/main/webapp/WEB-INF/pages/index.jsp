<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="common/base.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>豐隆</title>
    <link rel="stylesheet" type="text/css" href="${cssPath}/bootstrap.min.css">
</head>

<body>
	<ul>
		<c:forEach begin="0" var="unionStaffItem" items="${unionStaffList}">
			<li>${unionStaffItem.staffName}</li>
		</c:forEach>
	</ul>
	
<script src="${jsPath}/lib/jquery.min.js"></script>
<script src="${jsPath}/lib/bootstrap.min.js"></script>
</body>
</html>


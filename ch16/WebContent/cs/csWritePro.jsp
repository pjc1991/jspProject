<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- CSWriteProAction에서 c_idx, result, pageNum의 정보를 받아온다 -->
	<c:if test="${result >0 }">
		<script type="text/javascript">
		alert("전송완료");
		location.href="csList.do?pageNum=${pageNum}";
	</script>
	</c:if>
	<c:if test="${result ==0 }">
		<script type="text/javascript">
		alert("전송실패");
		window.history.go(-1);
	</script>
	</c:if>

</body>
</html>
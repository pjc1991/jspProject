<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result > 0 }">
		<script>
			alert("글이 정상적으로 수정되었습니다.")
			location.href = "surveyContent.do?s_idx=${s_idx }&pageNum=${pageNum }"
		</script>
	</c:if>
		<c:if test="${result <= 0 }">
		<script>
			alert("글 수정에 실패했습니다.")
			location.href = "surveyModify.do?s_idx=${s_idx }&pageNum=${pageNum }"
		</script>
	</c:if>
	
</body>
</html>
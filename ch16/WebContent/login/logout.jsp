<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	var id='${sessionScope.id}';
	if(id != null && id != ''){
		alert("로그아웃 실패");
		location.href="main.do";
	}else{
		alert("로그아웃 되었습니다.");
		location.href="main.do";
	}
</script>
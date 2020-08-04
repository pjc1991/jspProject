<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css">
<style type="text/css">
#cs2{
	width: 140px;
	float: left;
	
}

.form-control{
	width: 150px;
	float: light;
	
}
input[type=submit], input[type=reset] {
 background-color: #17a2b8;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
<%@ include file="/inc/top.jsp"%>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>
	
	
	<div class="container text-center">
	<div class="row justify-content-center">
	
		<!-- CSWriteFormAction에서 c_idx,pageNum, writer, ref, re_level, re_step 정보를 받아옴 -->
		<form action="csWritePro.do" method="get">
		<!-- hidden으로  c_idx,pageNum, writer, ref, re_level, re_step 정보를 csWritePro.do에 보내줌 -->
			<div class="form-group">
				<h2><strong>관리자에게 의견 보내기</strong></h2>
				<br/><img alt="csWritePhoto" src="./images/cs/cs.jpg" width="500">
				<p>

			<input type="hidden" name="c_idx" value="${c_idx }"> <input
				type="hidden" name="pageNum" value="${pageNum }"> <input
				type="hidden" name="ref" value="${ref }"> <input
				type="hidden" name="re_level" value="${re_level }"> <input
				type="hidden" name="re_step" value="${re_step }">
				
			<p>
				<br/>
					<label id="cs2" for="subject"><strong>제목</strong></label>
					<input type="text" style="text-align: center;" class="form-control" id="subject" name="subject" required="required">
			<p>
				<br/>
				
					<!-- 로그인 해서 저장되어있는 id를 writer로 넘겨줌 -->
					<input type="hidden" name="writer" value="${id }"
						required="required">
			<p>
				<br/>
					<label id="cs2" for="content"><strong>내용</strong></label>
					<input type="text" style="text-align: center;" class="form-control" id="content" name="content" required="required">
				</div>
			<br />				
					<input type="submit" value="전송">
					<input type="reset" value="다시작성">
			<p>
			<br />
			<br />
		</form>
	</div>
</div>
	<%@ include file="/inc/footer.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--
		1.form태그를 이용해서 post형식  이름, 국, 영 , 수 , 값을 입력 받습니다.(태그에서는 반드시 값을 입력 하도록)
		2.req_quiz_result.jsp로 전송
		3.해당 페이지에서는 평균, 합계를 구하고 , 80점 이상 = 고득점, 60이상 = 중간, 60 이하 = 저득점 출력

	  -->
	  
	  <form action="req_quiz_result.jsp" method = "post">
	  
	  	이름 : <input type = "text" name = "name" required="required"> <br>
	  	국어 : <input type = "text" name = "kor" pattern ="[0-9]{2,3}" required="required"> <br>
	  	영어 : <input type = "text" name = "eng" pattern ="[0-9]{2,3}" required="required"> <br>
	  	수학 : <input type = "text" name = "math" pattern ="[0-9]{2,3}" required="required"> <br>
	  	
	  	<input type="submit" value = "전송">

	  </form>
	  
	  

</body>
</html>
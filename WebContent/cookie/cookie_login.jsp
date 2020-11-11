y<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%  
	
	// input value 값은 쓰는값(기본값을 생성)
	//id_check 쿠키 확인하고, 아이디태그 value 옵션에  값을 넣으면 됩니다.
	
	
	String id = ""; //id를 저장할 변수
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(Cookie c : cookies){
			if(c.getName().equals("id_check")){
				id = c.getValue();
			}
		}
	}


%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>쿠키연습</h2>
	
	<form action ="cookie_login2.jsp" method = "post">
		아이디 : <input type = "text" name="id" value = "<%=id %>" required="required"><br>
		비밀번호 : <input type = "text" name="pw" required="required"><br>
		<input type = "submit" value = "로그인">
		<input type = "checkbox" name = "idCheck" value = "y">아이디 기억하기

	</form>

</body>
</html>
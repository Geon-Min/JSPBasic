<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

    //스크립트릿으로 가장 위쪽에서 필요한 정보를 받습니다.
    String path = request.getContextPath(); //톰캣이 프로젝트를 구분하는 경로
   
    StringBuffer url = request.getRequestURL();// 전체 주소
    
    String uri = request.getRequestURI(); //전체주소 -contextPath, URL에서 스키마, 서버이름, 포트번호를 제외한 나머지 주소와 파라미터
    
    String addr = request.getRemoteAddr();// 접속 ip
    
    String query = request.getQueryString(); // 주소 뒤에 전달되는 문자열
    
    String method = request.getMethod();// 요청방식
    
    String serverName = request.getServerName();//서버 이름
    
    int port = request.getServerPort();//포트 번호
    
    String scheme = request.getScheme();//스키마
    
    System.out.println("접속 주소 : "+ addr);
    

%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	contextPath:<%=path %><br/>
	url정보 : <%=url %><br/>
	uri정보(폴더경로) : <%=uri %><br>
	접속아이피주소 : <%=addr %><br>
	주소에담긴 문자열 값 : <%=query %><br>
	요청방식 : <%=method %><br/>
	서버이름 : <%=serverName %><br>
	포트번호 : <%=port %><br>
	스키마 : <%=scheme %>



</body>
</html>
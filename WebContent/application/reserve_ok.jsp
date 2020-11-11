<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	//1. 좌석정보를 받습니다.

	String[] seats = request.getParameterValues("seat");
	
	//2. 좌석정보를 저장할 List 생성
	ArrayList<String> list = new ArrayList<>();


	//3. application에서 좌석정보가 존재하면 2번리스트에 저장
	
	if(application.getAttribute("list") != null){
		list = (ArrayList<String>)application.getAttribute("list");
	
	}

	//4.좌석정보를 비교해서 중복이 없을때 하나씩 저장해놓을 사본리스트 생성
		ArrayList<String> temp = new ArrayList<>();
		
	//4. 좌석정보와 2번의 리스트를 비교해서 중복된 좌석이 아니라면, 사본리스트에 추가
		for(String s : seats){
			if(list.contains(s)){
				break;
			}else{
				temp.add(s);
			}
		}

	//5.사본리스트와 좌석정보가 길이가 같다면 중복이 없으므로, 2번의 리스트에 통째로 사본리스트를 추가
		if(temp.size() == seats.length){
			list.addAll(temp);//예약조석이 들어있는 temp를 원본리스트에 추가
		}
	
	//6. application에 같은 이름으로 저장
		 application.setAttribute("list", list);
	
	//7. 화면에 예약 성공실패의 결과를 출력해주세요.
		System.out.println(application.getAttribute("list"));

%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>예약 결과</h2>
	예약좌석:
	<% for(String s : seats) {%>
		[<%=s %>]
	<%} %>
	<%=temp.size() == seats.length ? "예약 성공" : "예약실패" %><br>
	
	<button type = "button" onclick = "location.href = 'reserve.jsp'">다시 예약하기</button>

</body>
</html>
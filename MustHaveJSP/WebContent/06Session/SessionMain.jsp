<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:SS"); //날짜 표시형식
	
	long creatingTime = session.getCreationTime(); //세션생성시간(최초시간)
	String creatingTimeStr = dateFormat.format(new Date(creatingTime)); //시간을 문자열화
	
	long lastTime = session.getLastAccessedTime(); //세션마지막 요청시간(최종시간)
	String lastTimeStr = dateFormat.format(new Date(lastTime)); //시간을 문자열화
%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>SessionMain.jsp</title></head>
<body>
	<h2> Session 설정 확인	</h2>
	<ul>
		<li>세션 유지 시간 : <%= session.getMaxInactiveInterval() %> </li>
		<li>세션 아이디 : <%= session.getId() %> </li>
		<li>최초 요청 시각 : <%= creatingTimeStr %> </li>
		<li>마지막 요청 시각 : <%= lastTimeStr %> </li>
	</ul>
</body>
</html>
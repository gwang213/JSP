<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<String> lists = new ArrayList<String>(); 
lists.add("리스트"); //String 객체 2개 저장
lists.add("컬렉션");
session.setAttribute("lists", lists);//컬랙션 통째로 세션영역에 저장
%>       
<html>
<head><title>session 영역</title></head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
    <a href="SessionLocation.jsp">SessionLocation.jsp 바로가기</a>
</body>
</html>
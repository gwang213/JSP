<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>session 영역</title></head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
    <%
    ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists"); 
    //세션을 통해서 ArrayList 객체의 lists 값이 넘어온다.
    for (String str : lists) //lists값을 향상된 for문을 이용하여 출력한다.
        out.print(str + "<br/>");
    %>    
</body>
</html>

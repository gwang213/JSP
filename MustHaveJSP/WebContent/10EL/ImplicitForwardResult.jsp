<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>ImplicitForwardResult.jsp</title></head><body>
	<H2> ImplicitForwardResult 페이지 </H2>
	<H3> 각 영역에 저장된 속성 읽기 </H3>
	<ul>
		<li> 페이지 영역 : ${ pageScope.scopeValue } </li>
		<li> 리퀘스트 영역 : ${ requestScope.scopeValue } </li>
		<li> 세션 영역 : ${ sessionScope.scopeValue } </li>
		<li> 애블리케이션 영역 : ${ applicationScope.scopeValue } </li>
	</ul>
	<H3> 영역 지정 없이 저장된 속성 읽기 </H3>
	<ul>
		<li> scopeValue : ${ scopeValue } </li>
	</ul>
</body>
</html>
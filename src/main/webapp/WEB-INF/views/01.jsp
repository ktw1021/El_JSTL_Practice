<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터형</title>
</head>
<body>
	<h1>데이터형</h1>
	<h3> JSP 방식 </h3><br>
	<%
		int iVal = (int)request.getAttribute("iValue");
		String sVal = (String)request.getAttribute("sValue"); 
		Object nullVal = request.getAttribute("nullValue");
	%>
	
	<p>iValue : <%= iVal %></p>
	<p>nullValue : <%= nullVal %></p>
	<!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
	<h3>EL</h3>
	<ul>
		<li>dVal: ${dValue }</li>
		<li>bVal: ${bValue }</li>
		<li>sVal: ${sValue }</li>
		<li>nullVal: ${nullValue }</li><!--  null 값은 출력 X -->
		
		<li>userVo: ${userVo }</li><!--  toString() 메서드 호출 결과  -->
		<li>객체 속성 접근: ${userVo.email }</li><!--  명명 규칙에 따라 getter 호출 -->
		
	</ul>
	
	

</body>
</html>
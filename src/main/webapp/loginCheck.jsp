<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<%
		String sid = (String)session.getAttribute("sessionId");
		
		if(sid == null) { // 참이면 비로그인 상태, 거짓이면 로그인 상태
	%>
		<h2><a href="login.jsp">[비로그인 상태]로그인 페이지로 이동</a></h2>
	<%
		} else {
			long start_time = session.getCreationTime(); // 세션의 생성된 시간
			long end_time = session.getLastAccessedTime(); // 세션의 마지막으로 접근한 시간
			out.println("start_time : " + start_time);
			out.println("end_time : " + end_time);
			out.println((end_time - start_time)/60000 + "분"); // 로그인인 접속시간
	%>
		<h2><%= sid %>님 로그인 성공하였습니다.</h2>
		<h2><a href="logout.jsp">[로그인 중인 상태]로그아웃</a></h2>		
	<%
		}
	%>
</body>
</html>
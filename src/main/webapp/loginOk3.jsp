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
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
		
		if(mid.equals("black") && mpw.equals("12345")) {
			session.setAttribute("sessionId", mid);
			response.sendRedirect("loginCheck.jsp");
			// 로그인 성공하면 loginCheck.jsp로 바로 이동
		} else {
			response.sendRedirect("login.jsp");
			// 로그인 실패하면 login.jsp로 바로이동
		}
	%>
</body>
</html>
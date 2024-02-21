<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>Insert title here</title></head>
<body>
<%
//response 내장객체를 통해 현재 상태를 얻어온다.
int status = response.getStatus();

if (status == 404) {
	out.print("404 에러가 발생하였습니다.");
	out.print("<br/>파일 경로를 확인해주세요.");
} else if(status == 405) {
	out.print("405 에러가 발생하였습니다.");
	out.print("<br/>요청 방식(method)을 확인해주세요.");
} else if(status == 500) {
	out.print("500 에러가 발생하였습니다.");
	out.print("<br/>소스 코드에 오류가 없는지 확인해주세요.");
}
%>
<br>
<img src="../images/naver_error.png"/>
</body>
</html>  
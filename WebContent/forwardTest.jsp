<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int age = Integer.parseInt(request.getParameter("age"));
	if (age <= 19) {
%>
	<script type="text/javascript">
		alert("19세 이하이므로 입장 불가능")
		history.go(-1)
		// 스크립틀릿 영역 안에서 사용할 수 없는 스크립트 문장을 중간에 삽입하여 사용
	</script>
<%
	} else {
		request.setAttribute("name", "성윤정");
		RequestDispatcher dispatcher = request.getRequestDispatcher("forwardResult.jsp");
		dispatcher.forward(request, response);
	}
%>
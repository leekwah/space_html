<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>today</title>
</head>
<body>
    <%!
        Date date = new Date();
    %>
    오늘은 <%= date.getYear() + 1900 %>년 <%= date.getMonth() + 1 %>월 <%= date.getDate() %>일 입니다.
    <%--  연도는 밀레니엄 버그 때문에 1900년을 더해줘야하고, Month는 1을 더 해야한다.  --%>
</body>
</html>

<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    Cookie lastDate = null;
    boolean found = false;
    String msg = "";
    String newValue = ""+ System.currentTimeMillis();

    Cookie[] cookies = request.getCookies();
    for(int i=0; i<cookies.length; i++){
        lastDate = cookies[i];

        if(lastDate.getName().equals("lastdateCookie")){
            found = true;
            break;
        }
    }

    if(!found){
        msg = "처음 방문입니다.";

        lastDate = new Cookie("lastdateCookie", newValue);
        lastDate.setMaxAge(365*24*60*60);
        lastDate.setPath("/");
        response.addCookie(lastDate);
    }else{
        long conv = Long.parseLong(lastDate.getValue());
        msg = "당신의 마지막 방문 : "+new Date(conv);
        lastDate.setValue(newValue);
        response.addCookie(lastDate);
    }
%>
<html>
<head>
    <meta charset="EUC-KR">
    <title>마지막 방문일을 출력하는 웹 페이지를 쿠키를 이용하여 작성</title>
</head>
<body>
<h2><%= msg %></h2>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset = "UTF-8">
  <title>Title</title>
</head>
<body bgcolor="red">
  <center><h3>[jsp:param 액션 태그에 대한 예제]</h3></center>
  <hr>
    이 파일은 red2.jsp 입니다.<br>
    웹 브라우저에 배경이 빨간색으로 나타날까요?<br>
    노란색으로 나타날까요?<hr>
    forward 액션 태그가 실행되면 이 페이지의 내용은 출력되지 않습니다.<br>
    <jsp:forward page="yellow2.jsp">
      <jsp:param name="url" value="red2.jsp"/>
      <jsp:param name="news" value="Happy New Year!"/>
    </jsp:forward>
  <br>
  <hr>
    웹 브라우저에 나타나는 URL과 전혀 상관없는 파일입니다.
</body>
</html>

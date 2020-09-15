<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
  <title>상세 조회 1</title>
</head>
<body>
<%String number= request.getParameter("number"); %> 
<c:set var="number" value="<%=number %>"/>

 <c:choose>
<c:when test="${number%2==0}">
<c:out value="${number}" />은 짝수 입니다.
</c:when>
<c:when test="${number%2==1}">
<c:out value="${number}" />은 홀수 입니다.
</c:when>
<c:otherwise>
숫자가 아닙니다.
</c:otherwise>
</c:choose> 
</body>
</html>
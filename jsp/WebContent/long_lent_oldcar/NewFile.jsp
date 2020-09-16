<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>


<%request.setCharacterEncoding("utf-8");
String id =request.getParameter("car");
String price =request.getParameter("price");
String lent1 =request.getParameter("cntrTermMm1");
String lent2 =request.getParameter("cntrTermMm2");
String lent3 =request.getParameter("cntrTermMm3");
String lent4 =request.getParameter("cntrTermMm4");

%>


<%=id%><%=price%><%=lent1%><%=lent2%><%=lent3%><%=lent4%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>중고차 장기 렌트</title>
</head>
<body>

<div class="jumbotron"><h2>장기 렌트</h2></div>

<div class="container">

 <sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.driver.OracleDriver"
			user="hr" password="hr"/>

	<sql:update dataSource="${dataSource}" var="resultSet">
	Insert into  lent(car_num,user_id,lent_term,insurance,lent_car,service,totalprice) values (?,'1',?,?,?,?,?)
	<sql:param value="${param.car }" />
	<sql:param value="${param.cntrTermMm1 }" />
	<sql:param value="${param.cntrTermMm2 }" />
	<sql:param value="${param.cntrTermMm3 }" />
	<sql:param value="${param.cntrTermMm4 }" />
	<sql:param value="${param.price }" />
</sql:update>
<c:import var="url" url="carLent.jsp"></c:import>
{url}

</div>


</body>
</html>

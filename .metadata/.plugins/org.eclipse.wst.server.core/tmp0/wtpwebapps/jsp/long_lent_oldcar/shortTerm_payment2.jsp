<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>    


<%request.setCharacterEncoding("utf-8");


String lent2 =request.getParameter("parpa2");
String lent3 =request.getParameter("parpa3");
String lent4 =request.getParameter("parpa4");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 정보</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

<!-- 단기렌트 제목틀-->
<div class="jumbotron bg-white">
  <div class="container col-sm-6">
  <h1>예약정보</h1>
<%=lent2%>
<%=lent3%>
<%=lent4%>

  <hr>
  </div>
</div>

<%-- <div class="container col-sm-6">
<div class="container">
<div class="container bg-light">
<br>
<div class="container text-center">
<h3>예약정보</h3>
<p>예약한 내용을 확인해주세요.</p>
</div>
<br>
<div class="card bg-white">
 <sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.driver.OracleDriver"
			user="hr" password="hr"/>
		<sql:update dataSource="${dataSource}" var="resultSet">
	Insert into  lent(car_num,user_id,lent_term,insurance,lent_car,service,totalprice,carn) values (?,'1',?,?,?,?,?,?)
	<sql:param value="${param.car }" />
	<sql:param value="${param.cntrTermMm1 }" />
	<sql:param value="${param.parpa }" />
	<sql:param value="${param.cntrTermMm3 }" />
	<sql:param value="${param.cntrTermMm4 }" />
	<sql:param value="${param.mprice }" />
	<sql:param value="${param.carn }" />
</sql:update>		
			
  <table class="table table-borderless">
      <tr>
        <th>예약번호</th>
        <td style="color: red;">결제 완료 후 예약이 확정됩니다.</td>
      </tr>
      <tr>
        <th>대여기간</th>
        <td>2020-04-30 10:00 ~ 2020-05-01 10:00</td>
      </tr>
      <tr>
        <th rowspan="2">지점 </th>
        <td>대여: [내륙] 경주지점<button class="btn btn-sm border">&nbsp;지도보기</button></td>
      </tr>
      <tr>
        <td>대여: [내륙] 경주지점<button class="btn btn-sm border">&nbsp;지도보기</button></td>
      </tr>
      <tr>
      <th>차량</th>
        <td>뉴 아반떼</td>
      </tr>
  </table>
  <hr>
  <table class="table table-borderless">
      <tr>
        <th rowspan="2">결제금액안내</th>
        <td style="border-bottom: 1px solid silver;">차량할인금액<br>(하나sk패밀리카드)<span class="float-right">38,150원</span></td>
      </tr>
      <tr>
        <td style="border-bottom: 1px solid silver;">자차손해면책제도<br>슈퍼자차<span class="float-right">12,000원</span></td>
      </tr>
      <tr style="color: red;">
    	 <th>최종결제 금액</th>
        <td class="float-right"><h3>50,150<span style="font-size: 15px;">원</span></h3></td>
      </tr>
  </table>
  <br>
  <br>
  </div>
  <br>
  <br>
  <div class="container" align="center">
  <div class="row" align="center">
  	<button class="col btn border btn-light">취소하기</button>&nbsp;<!-- 메인페이지로 -->
  	<button class="col btn border bg-warning" onclick="location.href='shortTerm_payment_completed.jsp'">결제하기</button>
  </div>
  </div>
  <br>
  <br>
  </div>
  </div><!-- table container -->
  </div> --%>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</body>
</html>
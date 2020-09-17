<%@page import="java.net.URLDecoder"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>
<% request.setCharacterEncoding("utf-8"); 
//URLEncoder.encode

String carname=request.getParameter("carname"); 
/* String carname = new String(request.getParameter("carname").getBytes("8859_1"), "EUC-KR"); */

%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ccc;
}

.accordion:after {
  content: '\002B';
  color: #777;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2212";
}

.panel {
  padding: 0 18px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
}

div.f{
border: 1px solid red;}
</style>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<meta charset="UTF-8" />
<title>장기 중고 상세</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<body>
<script type="text/javascript">

		function checkTest1() {

			let testValue = document.getElementById("cntrTermMm1").value;

			document.getElementById("result1").innerHTML = testValue;

		}
</script>

<script type="text/javascript">

		function checkTest2() {

			let testValue = document.getElementById("cntrTermMm2").value;

			document.getElementById("result2").innerHTML = testValue;

		}
</script>

<script type="text/javascript">

		function checkTest4() {
			let testValue = document.getElementById("cntrTermMm4").value;
			
			let a = document.getElementById("price").value;
			
			alert(a)
			;
			let d= a-(a* testValue);
			
			alert(d);
			
			document.getElementById("mprice").value = d;
			
			document.getElementById("result4").innerHTML=d+'원';
			let o=document.getElementById("mprice").value;
			
			alert(o);
			
		}
</script>	
	
<script>
function go(){
	let form= document.userinput;
	form.submit();
	
}
</script>
	
	
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장기 중고 렌트</h1>
		</div>
	</div>	
	
<div class="container">
<h4>다이렉트 견적조회</h4>
<hr style="border: solid 1px black " /> 

	<div class="row" style="border: 1px solid #eeeeee">
		<sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.driver.OracleDriver"
			user="hr" password="hr"/>
			<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where id=?
			 <sql:param value="${param.carname}"/>
			</sql:query>
			<c:forEach var="row" items="${resultSet.rows}">
			<div class="col-md-5" style="border-spacing: 5px;">
		
				<img src="../resources/images/${row.carname}.jpg" style="width: 100%;">
			</div>
			<div class="col-md-1">
			
			</div>
			<div class="col-md-6">
				<br><br>
			
				
				<h3>
				<c:out value="${row.carname}"/>
				</h3>
				
				<hr>
				<table>
					<tr>
						<td colspan="2"><span><strong>모델명</strong></span></td>
						<td><c:out value="${row.carname}"/></td>
					</tr>
					<tr>
						<td colspan="2"><span><strong>소비자 가</strong></span>  &nbsp; &nbsp; &nbsp;</td>
						<td><c:out value="${row.carprice}"/></td>
					</tr>
					<tr>
						<td colspan="2"><span><strong>계약 기간</strong></span></td>
						<td>최대<c:out value="${row.lent}"/>개월</td>
					</tr>
				</table>
				<hr>
				<p>
					표준렌탈료 &nbsp; &nbsp; &nbsp; <font size="5" color="red"> <c:out value="${row.monthprice }" /></font>원
				</p>
				
			</div>
			<c:set var="lentt" value="${row.lent}"/>
			
			</c:forEach>
		</div>



		<div>
		<br><br>
			<h4>차량 정보</h4>
			<hr style="border: solid 1px black " /> 
			<div>
			<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where id=?
			 <sql:param value="${param.carname}"/>
			</sql:query>
			<c:forEach var="row" items="${resultSet.rows}">
				<table class="table" id="table">
					<tr>
						<th class="bg-light text-dark">제조사</th>
						<td><c:out value="${row.facname}"></c:out></td>
						<th class="bg-light text-dark">차량번호</th>
						<td><c:out value="${row.id}"></c:out></td>
					</tr>
					<tr>
						<th class="bg-light text-dark">차종</th>
						<td><c:out value="${row.carnum}"></c:out></td>
						<th class="bg-light text-dark">최초 등록일</th>
						<td>2017-10-18</td>
					</tr>
					<tr>
						<th class="bg-light text-dark">모델명</th>
						<td colspan="3"><c:out value="${row.carname}"></c:out></td>
					</tr>
					<tr>
						<th class="bg-light text-dark">제조사차량옵션</th>
						<td colspan="3">4단자동변속기</td>
					</tr>
					<tr>
						<th class="bg-light text-dark" >제조사차량옵션2</th>
						<td colspan="3">-</td>
					</tr>
					<tr>
						<th class="bg-light text-dark">연료</th>
						<td><c:out value="${row.fuel}"/></td>
						<th class="bg-light text-dark">지점</th>
						<td><c:out value="${row.lentoffice}"/></td>
					</tr>
				
				</table>
				<c:set var="car_price" value="${row.monthprice }"> </c:set>
				<c:set var="car_name" value="${row.carname }"> </c:set>
				<c:set var="lent_office" value="${row.lentoffice }"> </c:set>
				<c:set var="prices" value="${row.carprice }"> </c:set>
				</c:forEach>
			</div> 
			
			
		</div>

<div>
<h4> 렌트 조건 선택 </h4>
<hr style="border: solid 1px black " /> 


<form method="post" action="shortTerm_payment_completed.jsp" name="userinput" >

<input type="hidden" id="car" name="car" value="${param.carname}">
<input type="hidden" id="carn" name="carn" value="${car_name}">
<input type="hidden" id="carof" name="carof" value="${lent_office}">

<button type="button" class="accordion">계약 기간: &nbsp;&nbsp;&nbsp;<span id="result1"></span></button>
<div class="panel"><span>차량 운행할수 있는 총 대여기간: &nbsp; &nbsp; &nbsp; &nbsp;</span>
<select name="cntrTermMm1" id="cntrTermMm1" class="option01" onchange="checkTest1()" >
<c:forEach var="i" begin="1" end="${lentt}">
<option value="<c:out value="${i}"/>개월"><c:out value="${i}"/>개월</option>	</c:forEach>

</select>
</div>

<button type="button" class="accordion">보험조건  <span id="result2"></span></button> 
<div class="panel"><span>계약기간 총 주행거리 초과 시 위약금 발생   </span>
<select  name="cntrTermMm2" id="cntrTermMm2"  class="option02" onchange="checkTest2()" >
<option value="월 2천 Km이하">월 2천 Km이하</option>	
<option value="월 3천 Km이하">월 3천 Km이하</option>	
<option value="월 4천 Km이하">월 4천 Km이하</option>
</select>
</div>

<button type="button" class="accordion">사고시 차량 대여  <span id="result3"></span></button> 
<div class="panel"><span>사고 시 차량 대여 서비스  </span>
<select  name="cntrTermMm3" id="cntrTermMm3"  class="option03"  >
<option value="yes">포함</option>	
<option value="no">불 포함</option>	
</select>
</div>

<button type="button" class="accordion">초기 납부 조건 </button> 
<div class="panel"><span>할인 조건  </span>
<select  name="cntrTermMm4" id="cntrTermMm4"  class="option04" onchange="checkTest4()" >

<option value="0.05">5% 할인</option>	
<option value="0.1">10%할인</option>	

</select>
<input type="hidden" id="price" name="price" value="${car_price}">
<input type="hidden" id="mprice" name="mprice">
</div>



</form>

</div>




<table class="table talbe-hover">
<tr><td>보험 조건</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>운전자 범위</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>사고 시 차량 대여</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>정비 서비스</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
<tr><td>초기 납부 조건</td><td>연령: 만 21세 이상, 대물:2천, 자손:1.5천 무보험: 2억</td></tr>
</table>

<div class="f">
<ul>
<li>차량 이미지는 고객님의 이해를 돕기 위한 이미지로 실제 차량과 다를 수 있습니다.</li>
<li>현재 재고 기준의 견적으로 바로 구매하시지 않는 경우 재고 소진으로 구매가 불가할 수 있습니다.</li>
<li>상담신청 및 다이렉트 계약을 클릭하시면 <span class="cl-point2">MY렌터카 &gt; 장기CAR &gt; 견적정보</span>에서 견적비교를 하실 수 있습니다.</li>
<li>지역 이동이 필요할 경우 탁송료가 발생할 수 있습니다.</li>
<li>약정 주행거리 초과 위약금: 1600CC미만(60원/km) , 2000CC미만(80원/km) , 2000CC이상(100원/km) , 수입차(200원/km)</li>
</ul>

</div>




</div>



 <br><br><br><br><br>
<div class="container col-sm-8 fixed-bottom ">

  <div class="row d-flex p-3 bg-warning text-white ">  
    <div class="col-sm-4 p-2 bg-warning">월 렌탈료<br> (총 차량 소비자가)</div>
    <div class="col-sm-4 p-2 bg-warning"><span id="result4"><c:out value="${car_price}" />원</span><br><c:out value="${prices}" /></div>
    <div class="col-sm-4 p-2 bg-warning"><button class="bg-primary text-white" onclick="go()">예약하기</button></div>
  </div>
  
  
  <c:remove var="car_price"/>
<c:remove var="lentt"/>
<c:remove var="car_name"/>
<c:remove var="lent_office"/>
</div>






<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>

</body>
</html>

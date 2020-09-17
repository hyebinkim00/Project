<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">

<script>
function discount_window(){
 	var discount_window1 = window.open("../payment/shortTerm_payment1.jsp","", "left=500, top=100, width=900, height=500,toolbar=no, scrollbars=no, status=no, resizable=no");
}
</script>
</head>
<body>
<div class="container col-sm-6 fixed-bottom" style="border:1px solid orange;">
    <div class="row card" style="background-color: orange;">
        <!-- <a class="card-link" data-toggle="collapse" href="#collapsebar"> -->
       		   <nav class="container navbar navbar-expand-sm navbar-dark bottom" style="height: 70px;">
  			
				<div class="col-sm-8" style="color: white;">
				<div class="row">
				<h4 class="col">총 결제금액</h4><h4 class="float-right">0원</h4>
				</div>
				</div>
				<div class="col-sm-3">
				<div class="row">
		  		 <div class="col-sm-2"></div>
		  		 &nbsp;&nbsp;
				<button type="button" class="row btn col-sm-5 border" id="reset" style="color: white;font-size: 15px;">초기화</button>
				 &nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn col-sm-5 border float-right" id="calc" style="color: white; font-size: 15px;"onclick="location.href='../payment/shortTerm_payment2.jsp'" >예약하기</button>
				</div>
				</div>
				</nav>
      </div>
      
      
        <div class="card-body" id="more_open" style="background-color: white;">
           <!-- <div class="container col-sm-6"> -->
			<div class="row">
			<div class="col-sm-4">
			<table style="width: 90%;">
				<tr class="row" style="border-bottom: 1px solid black;"><td class="container"><h5>대여현황</h5></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>대여일시<span class="float-right">2020-09-16 11:42</span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>반납일시<span class="float-right">2020-09-16 11:42</span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>대여지점<span class="float-right">제주지점</span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>반납지점<span class="float-right">제주지점</span></b></td></tr>		
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>대여차량<span class="float-right">스포티지</span></b></td></tr>
			</table>
			</div>
			<div class="col-sm-4">
			<table style="width: 90%;">
				<tr class="row" style="border-bottom: 1px solid black;"><td class="container"><h5>계약자 정보</h5></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>이름<span class="float-right">홍길동</span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>휴대폰<span class="float-right">0101234567</span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>생년월일<span class="float-right">19990101</span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>이메일<span class="float-right">hong@naver.com</span></b></td></tr>
			</table>
			</div>
			<div class="col-sm-4">
			<table style="width: 90%;">
				<tr class="row" style="border-bottom: 1px solid black;"><td class="col-sm-12"><h5>예약금액<button class="row btn btn-sm border float-right" onclick="discount_window()">할인적용</button></h5></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>표준요금<span class="float-right">54000<span>원</span></span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>편도수수료<span class="float-right">2000<span>원</span></span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>차량손해면책제도<span class="float-right">0<span>원</span></span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>총 할인금액<span class="float-right">52000<span>원</span></span></b></td></tr>
				<tr class="row border-bottom"style="height: 50px;"><td class="col-sm-12"><b>이벤트추가할인<span class="float-right">0<span>원</span></span></b></td></tr>
			</table>
			<p class="row">* 차량손해면책제도는 할인 적용 제외</p>
			</div>
		</div>
		</div>
        </div>



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


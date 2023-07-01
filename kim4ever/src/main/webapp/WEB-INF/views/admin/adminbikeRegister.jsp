<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자전거-등록</title>
		<style>
		/*리셋코드*/
		
		*{margin:0;padding:0;}
		li{list-style:none;}
		
		@font-face {
		    font-family: 'GangwonEdu_OTFBoldA';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face {
		    font-family: 'omyu_pretty';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face {
		    font-family: 'KCC-Ganpan';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		
		#main{width:1440px; margin:35px auto 70px; text-align:center;}
		#main #content{width:1440px; }
		#main #bottom{width:1440px; height:100px; }
		/*로그인 외각선*/
		#login_out{border: 1px solid #bbb;margin: 40px auto;width: 50%;padding: 20px;background-color: #f1f1f1;border-radius: 10px;}
		/*알림*/
		.alarm{color: #f00;text-align: left;line-height: 0px;padding-left: 5px;padding-top: 15px;} 
		
		h2{text-align: center; margin-top:0px;margin-bottom: 20px;}   
		#content table {width:60%;border-collapse:collapse;  margin:10px auto 0; text-align:center;  line-height:0px; font-family:'omyu_pretty'; font-size:21px;}
		#content table th{width:150px; text-align:center;  padding:8px;}   
		#content table td{padding:8px;text-align:left;line-height: 30px;}  
		#content table td:nth-child(1){width:120px;text-align:center;}
		#content table td:nth-child(2){width:400px; text-align:left;}
		#content table td:nth-child(3){width:100px; border:0;}
		#content table tr:last-child td{text-align:center;}
		#content table tr:last-child td input{display:inline-block; width:120px; height:50px;}
		#content table th{width:150px;text-align:center;}
		#content table #adminIdCheck {padding:5px 10px; font-size:21px; width:120px; height:50px; }
		#content table 
		input{
		  font-family: 'omyu_pretty';
		  font-size:24px;
		  box-sizing: border-box;
		  width: 200px;
		  height: 40px;
		  padding: 10px;
		  margin: 2px 0;
		  border: 1px solid #bbb;
		  border-radius: 20px;
		  text-align: center;
		}
		
		#content table button{width:200px; height:40px; text-align:center; font-family: 'omyu_pretty'; font-size:24px; cursor:pointer; border-radius:20px; border:0px solid #ff9933; background:#ff9933;}
		#content table button:active {background:#ffcc66; box-shadow:0 2px 2px rgba(0,0,0,0.1); transform:translateY(2px);}
		
		#main #findbutton{width:100%; height:40px; text-align:center; font-family: 'omyu_pretty'; font-size:21px; cursor:pointer; border-radius:10px; border:0px solid #ff9933; background:#ff9933;}
		#main #findbutton:active {background:#ffcc66; box-shadow:0 2px 2px rgba(0,0,0,0.1); transform:translateY(2px);}
		select{
					width:200px;
					height: 40px;
				    font-size: 24px;
				    font-family: 'omyu_pretty';
				    vertical-align: top;
				    border-radius: 20px;
				    text-align: center;
				    padding: 0px 10px;
				    border: 1px solid #bbb;
				}
		input{
			
			}
		</style>
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
		<script type="text/javascript">


 				/// 자전거  등록 ///
				function Signup() {

				
			
					
					$('#frm').attr('action', 'adminbikeRegisterAction.do').submit();
					return;

					
				}
		</script>
		
		

		
	</head>
	<body>
		<%@include file="../header4.jsp" %>
		<main id="main">
			<div id="content">
	
			<form name="frm" id="frm" method="post">
			<div id="login_out">
			
				<table>
					<tbody> 
					  	<tr>
	    					<th colspan="3"><h2>자전거 등록</h2></th>
	  					</tr>
	  					<tr>
							<td>
								<select name="bikeCode">
									<c:forEach var="b" items="${blist}">
										<option value="${b.bikeCode}">${b.bikeCode}</option>
									</c:forEach>	
								</select>
							</td>
						</tr>
						
						<tr>
							<td>
								<select name="bikeType">
									<c:forEach var="b" items="${blist}">
										<option value="${b.bikeType}">${b.bikeType}</option>
									</c:forEach>	
								</select>
							</td>
						</tr>
						
						
						<tr>
							<td>
								<select name="bikeLocation">
								<c:forEach var="s" items="${slist}">
									<option value="${s.rentalshopName}">${s.rentalshopName}</option>	
								</c:forEach>		
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<input type="number" name="cnt">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="button" onclick="Signup();">등록하기</button>
							</td>
						</tr>
					</tbody>
				</table>
				
			</div> 
		</form>
		</div>
		<div id="bottom"></div>
	</main>
	</body>
	<%@include file="../footer.jsp" %>
</html>
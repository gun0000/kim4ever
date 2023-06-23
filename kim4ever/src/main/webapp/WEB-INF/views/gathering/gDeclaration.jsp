<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>모임 신고하기</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_gathering.css">
		<link rel="stylesheet" media="(min-width: 300px) and (max-width: 940px)" href="${pageContext.request.contextPath}/css/style_gathering_mo.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">		
		 <style type="text/css">
		 	/*헤더영역 메뉴*/
			header #menu{display: none;}
		 	/*수정하기 부분*/
			#main section h1{display:inline-block;font-size: 37px; margin-bottom:20px; }
			#main section h3{display:inline-block; font-weight:bold; font-size: 27px; margin-top:20px; }
			#main section p{font-family: 'omyu_pretty'; display:inline-block; font-size:21px; }
			#main section>div:nth-child(1){margin: 20px 0px 20px 100px;}
			#main section>div:nth-child(2){text-align: center;}
			#main section>div>div{margin: 20px 0px 20px 0px;}
			#main section input {display: block;}
			#main section textarea {display: block; width:500px ;height:200px; font-size:23px; margin-top:20px; }
			#main section button{text-align: center; margin-top:20px; }  
			#main section img{width: 100px;height: 100px;}  
				/*************************모바일****************************************/
				/*****모바일 넓이***/
				@media (min-width: 300px) and (max-width: 940px)  {
					/*헤더영역 메뉴*/
			header #menu{display: none;}
		 	/*수정하기 부분*/
			#main section h1{display:inline-block;font-size: 25px; margin-bottom:10px; margin-top:10px; margin-left:35px; }
			#main section h3{display:inline-block; font-weight:bold; font-size: 18px; margin-top:20px; margin-left:15px;}
			#main section p{font-family: 'omyu_pretty'; display:inline-block; font-size:18px; }
			#main section>div:nth-child(1){margin: 20px 0px 20px 100px;}
			#main section>div:nth-child(2){text-align: center;}
			#main section>div>div{margin: 20px 0px 20px 0px;}
			#main section input {display: block;}
			#main section textarea {display: block; width:100% ;height:200px; font-size:18px; margin-top:20px; }
			#main section button{text-align: center; margin-top:20px; float:right; margin-left:5px;}   
			#main section img{width: 100px;height: 100px;}  
				}
		
		 </style>
	</head>
	<body>
		<%@include file="../header2.jsp" %>
		<%@include file="header3.jsp" %>
		<main id="main">
			<section class="gContainer gSetContainer">
				<form name="frm" id="frm" action="${pageContext.request.contextPath}/gathering/gDeclarationAction.do" method="POST">
				<div>
						<div>
							<h1>모임 신고하기</h1>
						</div>

						<div>
							<h3>모임명</h3> : <p>${gjvlist[0].gInfoName}</p>	
						</div>
						
						<div>
							<h3>지역</h3> : <p>${gjvlist[0].gInfoArea}</p>	
						</div>
						<div>
							<h3>모임장</h3> : <p>${gjvlist[0].memberName}</p>	
						</div>
						
						<div>
							<h3>신고 내용</h3>
							<textarea id="gatheringReportContent" name="gatheringReportContent" rows="5" cols="5" placeholder="글자제한:500자이내"></textarea>		
						</div>
					
				</div>
				<div>
					<button type="submit"class="gBtn2">신고하기</button>				 
					<button class="gBtn2" onclick="history.back()">돌아가기</button>				 
				</div>
				</form>
			</section>
		</main>
	</body>
</html>
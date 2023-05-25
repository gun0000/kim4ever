<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.myezen.myapp.domain.BikeVo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QR코드</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_bikeRent.css">  
	</head>
	<body>
		<%@include file="../header.jsp" %>
		<main id="main">
			<section id="content">
			<h2 class="QRTitle">자전거QR</h2>
				<div class="container">
					<div class="containerFlex">
						 
                        <div class="QRcard">
                            <a href="<%=request.getContextPath()%>/bikeRent/bikeRentDetail.do?bkidx=1"><img class="QRImg" src="../resources/QRcode/Qrcode4.png" alt=""></a>
                            <p>NOR1</p>
                        </div>
                        
                         <div class="QRcard">
                            <a href="<%=request.getContextPath()%>/bikeRent/bikeRentDetail.do?bkidx=2"><img class="QRImg" src="../resources/QRcode/Qrcode5.png" alt=""></a>
                            <p>ELE1</p>
                        </div>
                        
                         <div class="QRcard">
                            <a href="<%=request.getContextPath()%>/bikeRent/bikeRentDetail.do?bkidx=3"><img class="QRImg" src="../resources/QRcode/Qrcode6.png" alt=""></a>
                            <p>ELE2</p>
                        </div>
                     
                   		
						
						
					</div>
				</div>
			<h2 class="QRTitle">대여소QR</h2>	
					<div class="containerFlex">
						<div class="QRcard">
						<a href="bikeRentReturn.do"><img class="QRImg"src="../resources/QRcode/Qrcode1.png" alt=""></a>
						<p>덕진대여소</p>
						</div>
						<div class="QRcard">
						<img class="QRImg" src="../resources/bikeimg/bike2.jpg" alt="">
						<p>오목대여소</p>
						</div>
						<div class="QRcard">
						<img class="QRImg" src="../resources/bikeimg/bike.jpg" alt="">
						<p>송천대여소</p>
						</div>
					</div>
				
			
			
			</section>
		</main>
		<%@include file="../footer.jsp" %>
	</body>
</html>
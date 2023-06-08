<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.myezen.myapp.domain.BikeJoinVo" %>
<%@page import = "java.util.*" %>      
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><!-- 날짜태그 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
#main #content{width:1440px; height:2400px; text-align:center;}
#main #bottom{width:1440px; height:300px; }
#main #content h2{text-align:left; margin-top:50px; margin-left:150px;font-family: 'GangwonEdu_OTFBoldA'; font-size:30px;}
#content table {width:80%; border-collapse:collapse; margin:60px auto 0; line-height:60px; font-size:20px;font-family:'omyu_pretty'; font-size:24px;}
#content table th{width:100px;padding: 10px;text-align: center; border-top:3px solid #000 ;border-bottom:3px solid #000;}
#content table td{padding: 10px; text-align:center;border-bottom:1px solid #CCCCCC;}
#content table tr th:nth-child(1){width:70px;}
#content table tr th:nth-child(2){width:180px;}
#content table tr th:nth-child(3){width:70px;}
#content table tr th:nth-child(4){width:120px;}
#content table button{width:100px; height:40px; text-align:center; font-family: 'omyu_pretty'; font-size:21px; border-radius:10px; border:0px solid #ff9933; background:#ff9933;}
#content table button:active {background:#ffcc66; box-shadow:0 2px 2px rgba(0,0,0,0.1); transform:translateY(2px);}
#content #bikeError{color: #ddd; margin-right:10px;} 
#content #bikeRepair{color: #000;} 
#content .search {text-align:right; margin-right:150px;}
#content .search select {width:120px;height:30px;font-size:14px;padding:5px;}
#content .search input[type="text"] {width:200px;height:17px;font-size:14px;padding:5px;}
#content .search button {width:80px;height:30px;font-size:14px;padding:5px;}

</style>
</head>
<body>
<%@include file="../header4.jsp" %>
<div id="main">
	<div id="content">
		<form action="${pageContext.request.contextPath }/admin/adminbikeRepairList.do" method="get">
		<h2><a id="bikeError" href="${pageContext.request.contextPath}/admin/adminbikeError.do">신고 내역</a>  <a id="bikeRepair" href="${pageContext.request.contextPath}/admin/adminbikeRepairList.do">수리 내역</a></h2>
		<div class="search">
			<select id="searchType" name="searchType">
				<option value="">검색조건</option>
				<option value="bikeType">자전거종류</option> 
				<option value="bikeCode">자전거번호</option>
				<option value="errorContent">내용</option>
				<option value="bikeState">상태</option>
			</select>
			<input type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요"/>
			<button type="submit" id="searchBtn">검색</button>
		</div>	
		</form>
		<table>
				<tr>
					<th>자전거종류</th>
					<th>자전거번호</th>		
					<th>내용</th>
					<th>상태</th>					
				</tr>
			<c:forEach var="ejv" items="${elist}">
					<tr>						
						<td>${ejv.bikeType}</td>
						<td>${ejv.bikeCode}</td>  
						<td>${ejv.errorContent}</td>
						<td>${ejv.bikeState}</td>				
					</tr>
			</c:forEach>
		</table>
	
		
	
		
	
	
	
	
	
	</div>
	
	<div id="bottom">
	</div>
</div>
</body>

<%@include file="../footer.jsp" %>
</html>
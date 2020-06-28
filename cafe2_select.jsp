<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cafe.H</title>
	<style>
	  .nav {
	    height: 50px;
	    border-bottom: 3px solid black;
	    display: flex;
	    align-items: center;
	    }

	  .nav-item {
	    margin-left: 10px;
	    border-radius: 4px;
	    }

	  .title {
	    text-align: center;
	    font-size: 3.5rem;
	    font-weight: bold;
	    color: #88C8FF;
	    }

	  .subtitle {
	    text-align: center;
	    font-size: 1.25rem;
	    font-weight: 300;
	    margin-top: 30px;
	    }

	  .main {
	    width: 1300px;
	    margin: 0 auto;
	    margin-top: 20px;
	    }

	  form {
	  text-align: center;
	  margin-top: 30px;
	  }
</style>
	<%
		request.setCharacterEncoding("UTF-8");
		session.setAttribute("username", request.getParameter("username"));
	%>

</head>

<body>
		  <div class="nav">
		    <div class="company-name">
		    실무프로젝트1 20204339 조한슬
		    </div>
		  </div>

		  <div class="main">
		    <div class="title">
		      Order Page
		    </div>
		   </div>
		  
	<center>
		<h2>주문하실 메뉴를 선택해주세요.</h2>

		<hr />
			<%= session.getAttribute("username") %> 님 어서오세요!<br />
			<hr />

		<div>
		<form name="selProductForm" method="POST" action="cafe2_add.jsp">
			<h3>COFFEE</h3>
			<select name="product">
				<option>아메리카노</option>
				<option>아인슈페너</option>
				<option>녹차라떼</option>
				<option>초코라떼</option>
			</select>
			<input type="submit" value="추가" />
		</form>
		<form name="selProductForm" method="POST" action="cafe2_add.jsp">
			<h3>TEA</h3>
			<select name="product">
				<option>녹차</option>
				<option>캐모마일</option>
				<option>귤차</option>
				<option>히비스커스</option>
			</select>
			<input type="submit" value="추가" />
		</form>
		<form name="selProductForm" method="POST" action="cafe2_add.jsp">
			<h3>ADE</h3>
			<select name="product">
				<option>체리에이드</option>
				<option>레몬에이드</option>
				<option>청포도에이드</option>
				<option>자몽에이드</option>
			</select>
			<input type="submit" value="추가" />
		</form>
		<form name="selProductForm" method="POST" action="cafe2_add.jsp">
			<h3>FOOD</h3>
			<select name="product">
				<option>스콘</option>
				<option>마카롱</option>
				<option>녹차파운드</option>
				<option>감자샌드위치</option>
			</select>
			<input type="submit" value="추가" />
		</form>
		<br>
	<a href="cafe2_checkout.jsp">장바구니 보기</a><br />
	</div>
	</center>
</body>
</html>

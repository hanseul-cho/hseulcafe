<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
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

</head>

<body>

	  <div class="nav">
	    <div class="company-name">
	    실무프로젝트1 20204339 조한슬
	    </div>
	  </div>
	
	  <div class="main">
	    <div class="title">
	      Order List
	    </div>
	    <div class="subtitle">
	      주문확인 페이지입니다.
	    </div>
	  </div>
	  <center>
	<hr />
	<%= session.getAttribute("username") %>님의 장바구니 목록<br />
	<hr />
	<%
		ArrayList<String> list = (ArrayList<String>) session.getAttribute("productList");
		if (list == null) {
			out.println("선택한 상품이 없습니다!");
		}
		else {
			for (String item : list)
				out.println(item + "<br />");
		}
	%>
	<input type="button" value="주문하기" onclick="alert('주문이 전송되었습니다.')" />
</center>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" ; charset="utf-8" />
<mata http-equiv="Content-Style=type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="iamgetoolbar" content="no" />
<meta name="discription" content="" />
<meta name="keywords" content= />
<title>Home画面</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ======= ecsite LAYOUT =======*/
#top {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}

#text-center {
	display: inline-block;
	text-align: center;
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>

	<div>
		<div id="top">
			<p>Home</p>
		</div>

		<div id="text-center">
			<s:form action="商品購入">
				<s:submit value="商品購入" />
			</s:form>

			<s:if test="#session.login_user_id != null">
				<p>
					ログアウトする場合は<a href='<s:url action="LogoutAction"/>'>こちら</a>
				</p>
			</s:if>
		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>
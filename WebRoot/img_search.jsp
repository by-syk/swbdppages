<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta content="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<!-- (for Bootstrap) 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

<base href="<%= basePath %>">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SWBDP - StilWell 大数据平台</title>

<!-- ICON -->
<link rel="icon" type="image/png" href="imgs/favicon-32.png" sizes="32x32">
<link rel="icon" type="image/png" href="imgs/favicon-96.png" sizes="96x96">

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap-3.3.7.min.css">
<!-- Font Aswsome http://fontawesome.io -->
<link rel="stylesheet" href="css/font-awesome-4.7.0.min.css">
<link rel="stylesheet" href="css/swbdp.css">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap-3.3.7.min.js"></script>

<style type="text/css">

</style>

<script type="text/javascript">
$(document).ready(function() {
  $("#navSearch").addClass("active");
});
</script>
</head>

<body>
<jsp:include page="nav.jsp"></jsp:include>

<div class="container">

</div>

<jsp:include page="login.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
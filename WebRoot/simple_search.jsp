<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<%
// 根据用户权限控制内容展示
boolean admin = true;
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
.vertical-center {
  min-height: 60%;  /* Fallback for browsers do NOT support vh unit */
  min-height: 60vh; /* These two lines are counted as one :-)       */
  display: flex;
  align-items: center;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
  $("#navSearch").addClass("active");
  $("#btSearch").click(function() {
    window.location = "simple_search_result.jsp";
  });
});
</script>
</head>

<body>
<jsp:include page="nav.jsp">
  <jsp:param name="admin" value="<%= admin %>" />
</jsp:include>

<div class="vertical-center">
<div class="container">
  <div class="text-center">
    <img src="imgs/logo.gif">
  </div>
  <br />
  <div class="row"><div class="col-xs-8 col-xs-offset-2">
    <div class="input-group input-group-lg">
    <span class="input-group-btn">
        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">基础科学 <span class="caret"></span></button>
        <ul class="dropdown-menu dropdown-menu-right">
          <li><a href="#">基础科学</a></li>
          <li><a href="#">工程科技</a></li>
          <li><a href="#">农业科技</a></li>
          <li><a href="#">信息科学</a></li>
        </ul>
      </span>
      <input type="text" class="form-control">
      <span class="input-group-btn">
        <button id="btSearch" class="btn btn-primary" type="button">&nbsp;&nbsp;<i class="fa fa-search" aria-hidden="true"></i>&nbsp;&nbsp;</button>
      </span>
    </div>
  </div></div>
  <br />
  <div class="text-center">
    <a class="btn btn-xs btn-info" href="full_search.jsp">高级检索</a>
    &nbsp;|&nbsp;
    <a class="btn btn-xs btn-info" href="img_search.jsp">图检索</a>
  </div>
</div>
</div>

<jsp:include page="login.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
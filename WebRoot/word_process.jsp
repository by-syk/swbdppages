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

</style>

<script type="text/javascript">
$(document).ready(function() {
  $("#navWord").addClass("active");
  $("#inputFile").fileinput({
    language: "zh",
    showPreview: true,
    uploadUrl: "upload.do",
    uploadAsync: true,
    dropZoneEnabled: true,
  });
});
</script>
</head>

<body>
<jsp:include page="nav.jsp">
  <jsp:param name="admin" value="<%= admin %>" />
</jsp:include>

<div class="container">
  <div class="form-group">
    <label for="inputFile" class="control-label">上传文件</label>
    <input id="inputFile" type="file" class="file">
  </div>
  <hr />
  <div class="rows">
  <div class="col-xs-6">
  <div class="form-group">
    <label for="inputFile" class="control-label">分词</label>
    <textarea class="form-control" rows="6" style="resize: none;"></textarea>
  </div>
  </div>
  <div class="col-xs-6">
  <div class="form-group">
    <label for="inputFile" class="control-label">关键词提取</label>
    <textarea class="form-control" rows="6" style="resize: none;"></textarea>
  </div>
  </div>
  <div class="col-xs-6">
  <div class="form-group">
    <label for="inputFile" class="control-label">自动摘要生成</label>
    <textarea class="form-control" rows="6" style="resize: none;"></textarea>
  </div>
  </div>
  <div class="col-xs-6">
  <div class="form-group">
    <label for="inputFile" class="control-label">短语提取</label>
    <textarea class="form-control" rows="6" style="resize: none;"></textarea>
  </div>
  </div>
  </div>
</div>

<jsp:include page="login.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>
</body>

<!-- bootstrap-fileinput -->
<!-- 放在头部存在BUG -->
<link rel="stylesheet" href="css/fileinput-4.4.2.min.css">
<script src="js/fileinput-4.4.2.min.js"></script>
<script src="js/fileinput-4.4.2-zh.js"></script>
</html>
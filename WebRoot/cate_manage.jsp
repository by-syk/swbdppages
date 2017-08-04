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
  $("#navCate").addClass("active");
});
</script>
</head>

<body>
<jsp:include page="nav.jsp">
  <jsp:param name="admin" value="<%= admin %>" />
</jsp:include>

<div class="container">
  <table class="table table-bordered table-hover">
    <thead><tr class="info">
      <th>分类</th>
      <th>操作</th>
    </tr></thead>
    <tbody>
      <tr>
        <td>基础科学</td>
        <td>
          <a class="btn btn-link btn-default" href="javascript:void(0);"><i class="fa fa-pencil fa-fw"></i> 修改</a>
          <a class="btn btn-link btn-default" href="javascript:void(0);"><i class="fa fa-trash fa-fw"></i> 删除</a>
        </td>
      </tr>
      <tr>
        <td>工程科技</td>
        <td>
          <a class="btn btn-link btn-default" href="javascript:void(0);"><i class="fa fa-pencil fa-fw"></i> 修改</a>
          <a class="btn btn-link btn-default" href="javascript:void(0);"><i class="fa fa-trash fa-fw"></i> 删除</a>
        </td>
      </tr>
      <tr>
        <td>农业科技</td>
        <td>
          <a class="btn btn-link btn-default" href="javascript:void(0);"><i class="fa fa-pencil fa-fw"></i> 修改</a>
          <a class="btn btn-link btn-default" href="javascript:void(0);"><i class="fa fa-trash fa-fw"></i> 删除</a>
        </td>
      </tr>
      <tr>
        <td>信息科学</td>
        <td>
          <a class="btn btn-link btn-default" href="javascript:void(0);"><i class="fa fa-pencil fa-fw"></i> 修改</a>
          <a class="btn btn-link btn-default" href="javascript:void(0);"><i class="fa fa-trash fa-fw"></i> 删除</a>
        </td>
      </tr>
    </tbody>
  </table>
  <div class="text-right">
    <button type="button" class="btn btn-primary"><i class="fa fa-plus fa-fw"></i> 添加分类</button>
  </div>
</div>

<jsp:include page="login.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
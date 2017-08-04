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
.vcenter {
  display: block;
  vertical-align: middle;
  float: none;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
  $("#navSearch").addClass("active");
});
</script>
</head>

<body>
<jsp:include page="nav.jsp"></jsp:include>

<div class="vertical-center">
<div class="container">
  <div class="row">
    <div class="col-xs-10">
    <div class="input-group">
      <span class="input-group-btn">
        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">基础科学 <span class="caret"></span></button>
        <ul class="dropdown-menu dropdown-menu-right">
          <li><a href="#">基础科学</a></li>
          <li><a href="#">工程科技</a></li>
          <li><a href="#">农业科技</a></li>
          <li><a href="#">信息科学</a></li>
        </ul>
      </span>
      <input type="text" class="form-control" value="安全">
      <span class="input-group-btn">
        <button class="btn btn-primary" type="button">&nbsp;&nbsp;<i class="fa fa-search" aria-hidden="true"></i>&nbsp;&nbsp;</button>
      </span>
    </div>
  </div>
  <div class="col-xs-2 text-right">
    <a href="full_search.jsp">高级检索</a>&nbsp;|&nbsp;<a href="img_search.jsp">图检索</a>
  </div>
  </div>
  <hr />
  <div class="text-right">
    排序：
    <div class="btn-group btn-group-sm" role="group">
      <button type="button" class="btn btn-primary">题名 <i class="fa fa-sort-alpha-asc fa-fw"></i></button>
      <button type="button" class="btn btn-default">时间</button>
      <button type="button" class="btn btn-default">下载</button>
    </div>
  </div>
  <br />
  <table class="table table-bordered table-hover">
    <thead><tr class="info">
      <th><input type="checkbox"></th>
      <th>题名</th>
      <th>作者</th>
      <th>时间</th>
      <th>下载</th>
    </tr></thead>
    <tbody>
      <tr>
        <td><input type="checkbox"></td>
        <td>我国食品<font color="red">安全</font>的政府监管研究</td>
        <td>李伟</td>
        <td>2005-03-01</td>
        <td><i class="fa fa-download fa-fw"></i> 1254</td>
      </tr>
      <tr>
        <td><input type="checkbox"></td>
        <td>企业<font color="red">安全</font>文化评价指标体系研究</td>
        <td>宋晓燕</td>
        <td>2005-03-01</td>
        <td><i class="fa fa-download fa-fw"></i> 124</td>
      </tr>
      <tr>
        <td><input type="checkbox"></td>
        <td>云数据<font color="red">安全</font>存储技术</td>
        <td>冯朝胜; 秦志光; 袁丁</td>
        <td>2014-09-05</td>
        <td><i class="fa fa-download fa-fw"></i> 2254</td>
      </tr>
      <tr>
        <td><input type="checkbox"></td>
        <td>我国食品<font color="red">安全</font>的政府监管研究</td>
        <td>李伟</td>
        <td>2005-03-01</td>
        <td><i class="fa fa-download fa-fw"></i> 1254</td>
      </tr>
      <tr>
        <td><input type="checkbox"></td>
        <td>企业<font color="red">安全</font>文化评价指标体系研究</td>
        <td>宋晓燕</td>
        <td>2005-03-01</td>
        <td><i class="fa fa-download fa-fw"></i> 124</td>
      </tr>
      <tr>
        <td><input type="checkbox"></td>
        <td>云数据<font color="red">安全</font>存储技术</td>
        <td>冯朝胜; 秦志光; 袁丁</td>
        <td>2014-09-05</td>
        <td><i class="fa fa-download fa-fw"></i> 2254</td>
      </tr>
    </tbody>
  </table>
  <div class="text-center">
    <nav><ul class="pagination">
      <li class="disabled"><a href="#">
        <span aria-hidden="true">&laquo;</span>
      </a></li>
      <li class="active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">
        <span aria-hidden="true">&raquo;</span>
      </a></li>
    </ul></nav>
  </div>
</div>
</div>

<jsp:include page="login.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
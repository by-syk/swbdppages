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

<div class="container">
  <div class="row">
    <div class="col-xs-3">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title"><i class="fa fa-tags fa-fw"></i> 分类</h3>
        </div>
        <ul class="list-group">
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 基础科学</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate" checked="checked"> 工程科技Ⅰ辑</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 工程科技Ⅱ辑</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 农业科技</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 医药卫生科技</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 哲学与人文科学</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 社会科学Ⅰ辑</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 社会科学Ⅱ辑</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 信息科技</label></li>
          <li class="list-group-item"><label><input type="checkbox" name="cate"> 经济与管理科学</label></li>
        </ul>
      </div>
    </div>
    <div class="col-xs-9">
      <div class="panel panel-default">
        <div class="panel-heading">高级检索</div>
        <div class="panel-body">
          <form class="form-horizontal">
            <div class="form-group">
              <label for="inputKeyword" class="col-xs-2 control-label">关键词</label>
              <div class="col-xs-10">
                <input type="text" class="form-control" id="inputKeyword" value="安全">
              </div>
            </div>
            <div class="form-group">
              <label for="inputType" class="col-xs-2 control-label">检索类型</label>
              <div class="col-xs-10">
                <select class="form-control">
                  <option>题名</option>
                  <option>摘要</option>
                  <option>作者</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label for="inputDate" class="col-xs-2 control-label">上传日期</label>
              <div class="col-xs-5">
                <div class="input-group">
                  <div class="input-group-addon">起</div>
                  <input type="date" class="form-control" id="inputDateStart" value="2017-08-01">
                </div>
              </div>
              <div class="col-xs-5">
                <div class="input-group">
                  <div class="input-group-addon">止</div>
                  <input type="date" class="form-control" id="inputDateEnd" value="2017-08-03">
                </div>
              </div>
            </div>
            <div class="text-right">
              <a class="btn btn-link btn-default" href="simple_search.jsp">&nbsp;返回简单搜索&nbsp;</a>
              <button id="btConfig" type="button" class="btn btn-primary">&nbsp;检索&nbsp;</button>
            </div>
         </form>
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
</div>

<jsp:include page="login.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
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
<!-- http://www.bootcss.com/p/buttons/ -->
<link rel="stylesheet" href="css/buttons.css">
<link rel="stylesheet" href="css/swbdp.css">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap-3.3.7.min.js"></script>
<!-- JavaScript Cookie https://github.com/js-cookie/js-cookie -->
<script src="js/js.cookie.js"></script>

<style type="text/css">
body {
  padding-top: 40px;
}
/*a.module-btn {
  height: 192px;
  background: #eeeeee;
  /*background: lightgray url(imgs/big_data.jpg);*
  border-radius: 8px;
  text-decoration : none;
}
a.module-btn:hover {
  background: #dddddd;
  text-decoration : none;
}
span.module-font {
  font-size: 36px;
}*/
a.module {
  border-radius: 8px;
  text-decoration : none;
}
a.module:hover {
  text-decoration : none;
  background: #eeeeee;
}
span.module-font {
  font-size: 18px;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
  $(".carousel").carousel({
    interval: 2000, // 图片切换周期
    pause: "hover" // 鼠标悬停
  });
});
</script>
</head>

<body>
<jsp:include page="nav.jsp">
  <jsp:param name="admin" value="<%= admin %>" />
</jsp:include>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to=""></li>
  </ol>
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="imgs/big_data_0.jpg" style="width:100%;">
      <div class="carousel-caption">
        <h1>SWBDP</h1>
        <p>StilWell 大数据平台，基于大数据的检索与自然语言处理平台设计</p>
      </div>
    </div>
    <div class="item">
      <img src="imgs/big_data_1.jpg" style="width:100%;">
      <div class="carousel-caption">
        <h1>SWBDP</h1>
        <p>StilWell 大数据平台，基于大数据的检索与自然语言处理平台设计</p>
      </div>
    </div>
    <div class="item">
      <img src="imgs/big_data_2.jpg" style="width:100%;">
      <div class="carousel-caption">
        <h1>SWBDP</h1>
        <p>StilWell 大数据平台，基于大数据的检索与自然语言处理平台设计</p>
      </div>
    </div>
  </div>
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
  </a>
</div>

<div class="container">
  <!--<div class="jumbotron">
    <div class="container">
      <h1>SWBDP</h1>
      <p>StilWell 大数据平台，基于大数据的检索与自然语言处理平台设计</p>
    </div>
  </div>-->

  <!--<div class="row">
    <div class="col-xs-6">
      <a href="simple_search.html" class="center-block module-btn">
        <table border="0" align="center"><tr><td height="192px" valign="middle">
            <span class="module-font"><i class="fa fa-search fa-fw"></i> 检索</span>
        </td></tr></table>
      </a>
    </div>
    <div class="col-xs-6">
      <a href="#" class="center-block module-btn">
        <table border="0" align="center"><tr><td height="192px" valign="middle">
            <span class="module-font"><i class="fa fa-balance-scale fa-fw"></i> 自然语言处理</span>
        </td></tr></table>
      </a>
    </div>
  </div>
  <br />
  <div class="row">
    <div class="col-xs-6">
      <a href="#" class="center-block module-btn">
        <table border="0" align="center"><tr><td height="192px" valign="middle">
            <span class="module-font"><i class="fa fa-cog fa-fw"></i> 索引管理</span>
        </td></tr></table>
      </a>
    </div>
    <div class="col-xs-6">
      <a href="#" class="center-block module-btn">
        <table border="0" align="center"><tr><td height="192px" valign="middle">
            <span class="module-font"><i class="fa fa-cog fa-fw"></i> 系统管理</span>
        </td></tr></table>
      </a>
    </div>
  </div>-->

  <br /><br />
  <%
  String code1 = "col-xs-4";
  String code2 = "col-xs-2 hidden";
  if (admin) {
    code1 = "col-xs-2";
    code2 = "col-xs-2";
  }
  %>
  <div class="rows">
    <div id="moduleSearch" class="<%= code1 %> col-xs-offset-2 text-center">
      <a href="simple_search.jsp" class="center-block module">
        <br />
        <button class="button button-primary button-circle button-giant"><i class="fa fa-search"></i></button>
        <br /><br />
        <span class="text-primary module-font">检索</span>
        <br /><br />
      </a>
    </div>
    <div id="moduleWord" class="<%= code1 %> text-center">
      <a href="word_process.jsp" class="center-block module">
        <br />
        <button class="button button-primary button-circle button-giant"><i class="fa fa-balance-scale"></i></button>
        <br /><br />
        <span class="text-primary module-font">自然语言处理</span>
        <br /><br />
      </a>
    </div>
    <div id="moduleCate" class="<%= code2 %> text-center">
      <a href="cate_manage.jsp" class="center-block module">
        <br />
        <button class="button button-primary button-circle button-giant"><i class="fa fa-server"></i></button>
        <br /><br />
        <span class="text-primary module-font">索引管理</span>
        <br /><br />
      </a>
    </div>
    <div id="moduleSys" class="<%= code2 %> text-center">
      <a href="sys_manage.jsp" class="center-block module">
        <br />
        <button class="button button-primary button-circle button-giant"><i class="fa fa-cog"></i></button>
        <br /><br />
        <span class="text-primary module-font">系统管理</span>
        <br /><br />
      </a>
    </div>
    </div>
  </div>
</div>

<jsp:include page="login.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
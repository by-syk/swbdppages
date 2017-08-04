<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SWBDP</title>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navBarMenu">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="index.jsp">SWBDP</a>
  </div>
  <%
  boolean admin = "true".equals(request.getParameter("admin"));
  String code = admin ? "" : "hidden";
  %>
  <div id="navBarMenu" class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      <li id="navSearch"><a href="simple_search.jsp"><i class="fa fa-search fa-fw"></i> 检索</a></li>
      <li id="navWord"><a href="word_process.jsp"><i class="fa fa-balance-scale fa-fw"></i> 自然语言处理</a></li>
      <li id="navCate" class="<%= code %>"><a href="cate_manage.jsp"><i class="fa fa-server fa-fw"></i> 索引管理</a></li>
      <li id="navSys" class="<%= code %>"><a href="sys_manage.jsp"><i class="fa fa-cog fa-fw"></i> 系统管理</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="javascript:void(0);" onclick="$('#loginDlg').modal('show')">登录</a></li>
    </ul>
  </div>
</div>
</nav>
</body>
</html>

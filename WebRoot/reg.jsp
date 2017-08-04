<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SWBDP</title>
</head>
<body>
<div id="regDlg" class="modal fade">
<div class="modal-dialog modal-sm">
<div class="modal-content">
  <!--<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">
      <span aria-hidden="true">&times;</span>
    </button>
    <h4 class="modal-title">注册</h4>
  </div>-->
  <div class="modal-body">
    <br />
    <div class="row"><div class="col-xs-10 col-xs-offset-1">
    <img class="img-responsive img-circle center-block" src="imgs/avatar.png" width="100px" height="100px">
    <br />
    <form action="reg.do">
      <div class="form-group">
        <div class="input-group">
          <div class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></div>
          <input id="inputUser" name="username" type="text" class="form-control" placeholder="用户名">
        </div>
      </div>
      <div class="form-group">
        <div class="input-group">
          <div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
          <input id="inputPwd" name="pws" type="password" class="form-control" placeholder="密码">
        </div>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-success btn-block">注册</button>
      </div>
    </form>
    </div></div>
  </div>
  <!--<div class="modal-footer">
    <button type="button" class="btn btn-primary" data-dismiss="modal">登录</button>
  </div>-->
</div>
</div>
</div>
</body>
</html>

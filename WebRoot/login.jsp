<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SWBDP</title>
<script type="text/javascript">
$(document).ready(function() {
  $("#loginDlg").on("show.bs.modal", function (e) {
    $("#divLoginUser").removeClass("has-warning");
    $("#hintLoginUser").addClass("hidden");
    $("#divLoginPwd").removeClass("has-warning");
    $("#hintLoginPwd").addClass("hidden");
    var username = Cookies.get("username");
    if (username) {
      $("#inputLoginUser").val(username);
    }
  });
  $("#regDlg").on("show.bs.modal", function (e) {
    $("#divRegUser").removeClass("has-warning");
    $("#hintRegUser").addClass("hidden");
    $("#divRegPwd").removeClass("has-warning");
    $("#hintRegPwd").addClass("hidden");
  });
});
function checkLogin() {
  var user = $("#inputLoginUser").val().trim();
  var pwd = $("#inputLoginPwd").val().trim();
  if (!user) {
    $("#hintLoginUser").removeClass("hidden");
    $("#divLoginUser").addClass("has-warning");
    $("#inputLoginUser").focus();
    return false;
  }
  if (!pwd) {
    $("#hintLoginPwd").removeClass("hidden");
    $("#divLoginPwd").addClass("has-warning");
    $("#inputLoginPwd").focus();
    return false;
  }
  if ($("#cbRem").is(":checked")) { // 记住用户名
    Cookies.set("username", user, {expires: 365});
  }
  return true;
}
function checkReg() {
  var user = $("#inputRegUser").val().trim();
  var pwd = $("#inputRegPwd").val().trim();
  if (!user) {
    $("#hintRegUser").removeClass("hidden");
    $("#divRegUser").addClass("has-warning");
    $("#inputRegUser").focus();
    return false;
  }
  if (!pwd) {
    $("#hintRegPwd").removeClass("hidden");
    $("#divRegPwd").addClass("has-warning");
    $("#inputRegPwd").focus();
    return false;
  }
  return true;
}
</script>
</head>
<body>
<div id="loginDlg" class="modal fade">
<div class="modal-dialog modal-sm">
<div class="modal-content">
  <!--<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">
      <span aria-hidden="true">&times;</span>
    </button>
    <h4 class="modal-title">登录</h4>
  </div>-->
  <div class="modal-body">
    <br />
    <div class="row"><div class="col-xs-10 col-xs-offset-1">
    <img class="img-responsive img-circle center-block" src="imgs/avatar.png" width="100px" height="100px">
    <br />
    <form action="login.do" method="post" onsubmit="return checkLogin()">
      <div id="divLoginUser" class="form-group">
        <div class="input-group">
          <div class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></div>
          <input id="inputLoginUser" name="username" type="text" class="form-control" placeholder="用户名">
        </div>
        <p id="hintLoginUser" class="help-block hidden">请输入有效的用户名</p>
      </div>
      <div id="divLoginPwd" class="form-group">
        <div class="input-group">
          <div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
          <input id="inputLoginPwd" name="pws" type="password" class="form-control" placeholder="密码">
        </div>
        <p id="hintLoginPwd" class="help-block hidden">请输入有效的密码</p>
      </div>
      <div class="checkbox">
        <label>
          <input id="cbRem" type="checkbox"> 记住我
        </label>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-success btn-block">登录</button>
      </div>
    </form>
    <p><a href="javascript:void(0);" onclick="$('#regDlg').modal('show');" data-dismiss="modal">还没有帐号？去注册</a></p>
    </div></div>
  </div>
  <!--<div class="modal-footer">
    <button type="button" class="btn btn-primary" data-dismiss="modal">登录</button>
  </div>-->
</div>
</div>
</div>
<div id="regDlg" class="modal fade">
<div class="modal-dialog modal-sm">
<div class="modal-content">
  <div class="modal-body">
    <br />
    <div class="row"><div class="col-xs-10 col-xs-offset-1">
    <img class="img-responsive img-circle center-block" src="imgs/avatar.png" width="100px" height="100px">
    <br />
    <form action="reg.do" method="post" onsubmit="return checkReg()">
      <div id="divRegUser" class="form-group">
        <div class="input-group">
          <div class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></div>
          <input id="inputRegUser" name="username" type="text" class="form-control" placeholder="用户名">
        </div>
        <p id="hintRegUser" class="help-block hidden">请输入有效的用户名</p>
      </div>
      <div id="divRegPwd" class="form-group">
        <div class="input-group">
          <div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
          <input id="inputRegPwd" name="pws" type="password" class="form-control" placeholder="密码">
        </div>
        <p id="hintRegPwd" class="help-block hidden">请输入有效的密码</p>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-success btn-block">注册</button>
      </div>
    </form>
    </div></div>
  </div>
</div>
</div>
</div>
</body>
</html>

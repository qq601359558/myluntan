<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../css/indexStyle.css">
</head>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../js/base/indexJs.js"></script>
<body>
<form id="loginForm"  action="login.so">
    <span class="titles">USERNAME:</span><input id="username" class="in" type="text" value="用户名"/><br/><br/><br/>
    <span class="titles">PASSWORD:</span><input id="password" class="in" type="password" value="请输入密码"/><br/><br/><br/>
    <button type="submit" >LOGIN</button>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="reset">RESET</button>
</form>
</body>
<script type="text/javascript">
$(document).ready(function () {
    inputStyle();
})

</script>
</html>
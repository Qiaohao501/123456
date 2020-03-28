<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <style type="text/css">
        *{padding: 0;margin: 0}
        table{margin:0  auto;margin-top: 200px}
    </style>
</head>
<body>
<form name="form1" method="post" action=""><!--这里用js实现跳转-->
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td height="50" colspan="2" bgcolor="#eeeeee" align="center">管理员登录</td>
        </tr>
        <tr>
            <td width="70" height="50">用户名：</td>
            <td><input name="user" type="text" id="user" maxlength="8"><!--8指的是8个汉字，8个字符--></td>
        </tr>
        <tr>
            <td width="70" height="50">密&nbsp;码：</td>
            <td><input name="pwd" type="password" id="pwd" maxlength="16"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input name="reset" type="reset" value="重置">
                <input name="button" type="button" value="登录" onclick="check()">
           </td>
        </tr>
    </table>
</form>
<script language="JavaScript" type="text/javascript" src="js/demo.js"></script>
</body>
</html>

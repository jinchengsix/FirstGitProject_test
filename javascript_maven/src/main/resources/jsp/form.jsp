<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/17
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <title>Easy-Demo</title>

    <meta name="description" content="">
    <meta http-equiv="cleartype" content="on">
    <link rel="stylesheet" href="static/css/platform-1.css">
    <script src="static/js/jquery-2.1.0.min.js"></script>
    <script src="static/js/easyform.js"></script>

</head>
<body>

<script type="text/javascript">

    var WIDTH = $(window).innerWidth();
    var HEIGHT = $(window).innerHeight();

    $(document).ready(function () {

        $(".page").css("height", HEIGHT + "px");

    });

</script>

<div class="page">
    <div class="form-div">
        <form id="reg-form" action="/web/getInfo" method="post">

            <table>
                <tr>
                    <td>用户名</td>
                    <td><input name="uid" type="text" id="uid" easyform="length:4-16;char-normal;real-time;"
                               message="用户名必须为4—16位的英文字母或数字" easytip="disappear:lost-focus;theme:blue;"
                               ajax-message="用户名已存在!">
                    </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td><input name="psw1" type="password" id="psw1" easyform="length:6-16;" message="密码必须为6—16位"
                               easytip="disappear:lost-focus;theme:blue;"></td>
                </tr>
                <tr>
                    <td>确认密码</td>
                    <td><input name="psw2" type="password" id="psw2" easyform="length:6-16;equal:#psw1;"
                               message="两次密码输入要一致" easytip="disappear:lost-focus;theme:blue;"></td>
                </tr>
                <tr>
                    <td>email</td>
                    <td><input name="email" type="text" id="email" easyform="email;real-time;" message="Email格式要正确，例如：shuaib@163.com"
                               easytip="disappear:lost-focus;theme:blue;" ajax-message="这个Email地址已经被注册过，请换一个吧!"></td>
                </tr>
                <tr>
                    <td>昵称</td>
                    <td><input name="nickname" type="text" id="nickname" easyform="length:2-16" message="昵称必须为2—16位"
                               easytip="disappear:lost-focus;theme:blue;"></td>
                </tr>
            </table>

            <div class="buttons">
                <input value="注 册" type="submit" style="margin-right:20px; margin-top:20px;">
                <input value="我有账号，我要登录" type="button" style="margin-right:45px; margin-top:20px;">
            </div>

            <br class="clear">
        </form>
    </div>


</div>

<script>


    $(document).ready(function () {
        $('#reg-form').easyform();
    });


</script>
</body>
</html>

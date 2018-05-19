<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/17
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE HTML>
<html style="padding-bottom: 54px;">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">

    <title>JQUERY form表单验证</title>
    <meta name="description" content="easy将是一个系列的库 目前只有一个文件easyform，包含3个类，easytip : tooltip控件，支持灵活的配置。easyinput ： 单个input验证控件easyform ：表单验证控件" />
    <meta name="keywords" content="表单验证控件,验证,表单,jquery插件,jquery" />
    <link rel="Shortcut icon" href="http://www.jq22.com/favicon.ico" />
    <link href="css/demo.css" rel="stylesheet" media="all" />
    <!--[if IE]>

    <style type="text/css">
        li.purchase a {
            padding-top: 5px;
            background-position: 0px -4px;
        }

        li.remove_frame a {
            padding-top: 5px;
            background-position: 0px -3px;
        }
    </style>

    <![endif]-->

    <style>
        .fdad a {
            color: #000;
            display: inline-block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .fdad {
            top: 66px;
        }

        .xgcj li {
            font-size: 14px;
            line-height: 20px;
            list-style-type: none;
            transition: all 1s ease 0s;
            border-radius: 5px;
        }

        .xgcj li:hover {
            background-color: #e4e4e4;
        }

        .xgcj {
            background-color: rgba(255,255,255,.3);
            overflow-x: hidden;
        }

        .xgcj ul {
            padding: 10px
        }

        .xgcj h3 {
            line-height: 30px;
        }

        .xgcj p {
            padding-left: 20px;
            font-size: 13px;
            display: none;
        }

        .xgcj span {
            font-family: "宋体";
        }

        .xgcj li:hover p {
            display: block;
        }
    </style>
    <script type="text/javascript">
        var txt = "form.jsp";
        window.g1 = txt.substr(0, 3);
        window.g2 = txt.substr(0, 19);
    </script>
    <script src="js/pace.min.js" charset="gbk"></script>
    <link href="css/pace-theme-barber-shop.css" rel="stylesheet" />
    <script src="http://libs.baidu.com/jquery/1.7.0/jquery.min.js"></script>
    <script src="js/jquery.qrcode.min.js"></script>
    <script type="text/javascript">

        var theme_list_open = false;

        $(document).ready(function () {
            function fixHeight() {
                var headerHeight = $("#switcher").height();
                $("#iframe").attr("height", $(window).height() - 54 + "px");
            }
            $(window).resize(function () {
                fixHeight();
            }).resize();

            $('.icon-monitor').addClass('active');

            $(".icon-mobile-3").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-3');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-mobile-2").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-2');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-mobile-1").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width');
                $('.icon-tablet,.icon-mobile,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-tablet").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('tablet-width');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-monitor").click(function () {
                $("#by").css("overflow-y", "hidden");
                $('#iframe-wrap').removeClass().addClass('full-width');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });
        });
    </script>
    <script type="text/javascript">
        function Responsive($a) {
            if ($a == true) $("#Device").css("opacity", "100");
            if ($a == false) $("#Device").css("opacity", "0");
            $('#iframe-wrap').removeClass().addClass('full-width');
            $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
            $(this).addClass('active');
            return false;
        };
    </script>
</head>
<body id="by" style="overflow-y: hidden">
<div id="switcher">
    <div class="center">
        <ul>
            <li class="logoTop" id="sj2"><a href="http://www.jq22.com/jquery-info994">JQUERY form表单验证</a></li>
            <div id="Device">
                <li class="device-monitor"><a href="javascript:">
                    <div class="icon-monitor">
                    </div>
                </a></li>
                <li class="device-mobile"><a href="javascript:">
                    <div class="icon-tablet">
                    </div>
                </a></li>
                <li class="device-mobile"><a href="javascript:">
                    <div class="icon-mobile-1">
                    </div>
                </a></li>
                <li class="device-mobile-2"><a href="javascript:">
                    <div class="icon-mobile-2">
                    </div>
                </a></li>
                <li class="device-mobile-3"><a href="javascript:">
                    <div class="icon-mobile-3">
                    </div>
                </a></li>
            </div>
            <li class="top2" id="sj"><a href="#">手机二维码预览</a><div class="vm">
                <div id="output"></div>
                <p style="color: #808080">扫一扫，直接在手机上打开</p>
            </div>
            </li>


            <script>
                jQuery('#output').qrcode({ width: 150, height: 150, text: window.location.href });
            </script>
            <li class="remove_frame" style="display:n"><a href="form.jsp" title="移除框架"></a></li>

        </ul>
    </div>
</div>
<div id="iframe-wrap">
    <iframe id="iframe" src="form.jsp" frameborder="0" width="100%"></iframe>
</div>

<div class="fdad">
    <div class="fdl">Advertisement</div>
    <div class="fdr">x</div>
    <div class="fdadnr">
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
        <!-- 336x280 -->
        <ins class="adsbygoogle"
             style="display:inline-block;width:336px;height:280px"
             data-ad-client="ca-pub-2935286260943234"
             data-ad-slot="6063645905"></ins>
        <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
        </script>
        <div class="xgcj">
            <ul>
                <div style="width:100%">
                    <div style="float:left"><h3>相关插件</h3></div>
                    <div style="clear: left;"></div>
                </div>

                <li>
                    <a href="http://www.jq22.com/jquery-info1119"><span>&gt;</span> 级联依赖/验证</a>
                    <p>用于angularjs实现</p>
                </li>

                <li>
                    <a href="http://www.jq22.com/jquery-info4418"><span>&gt;</span> jQueryCSS3分步骤注册表单切换动画在线演示</a>
                    <p>jQueryCSS3分步骤注册表单切换动画在线演示</p>
                </li>

                <li>
                    <a href="http://www.jq22.com/jquery-info18704"><span>&gt;</span> canvas随机生成图片验证码</a>
                    <p>html5 canvas随机生成图片验证码,代码注释全，使用方便。</p>
                </li>

                <li>
                    <a href="http://www.jq22.com/jquery-info994"><span>&gt;</span> JQUERY form表单验证</a>
                    <p>easy将是一个系列的库 目前只有一个文件easyform，包含3个类，easytip : tooltip控件，支持灵活的配置。easyinput ： 单个input验证控件easyform ：表单验证控件</p>
                </li>

                <li>
                    <a href="http://www.jq22.com/jquery-info18819"><span>&gt;</span> jQuery canvas验证码</a>
                    <p>jQuery canvas验证码,简单实用注释全</p>
                </li>

            </ul>
        </div>
    </div>


    <script type="text/javascript">
        $(document).ready(function () {
            $(".fdr").click(function () {
                $(".fdad").hide();
            });
        });
    </script>

    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?b3a3fc356d0af38b811a0ef8d50716b8";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

</body>
</html>

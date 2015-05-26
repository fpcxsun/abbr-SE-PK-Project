<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%--标题--%>
    <title>活动主页</title>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.KinSlideshow-1.2.1.min.js"></script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }
        body{
            /*背景颜色*/
            background-color:rgb(255,255,0);
            width:1200px;
            margin:0 auto;
        }

        a {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 9pt;
            text-decoration: none;
            /*尾部连接颜色*/
            color: #FF6600;
            font-family: 'Microsoft YaHei';
        }
        
        li {
            list-style-type: none;
        }

        a:hover {
            text-decoration: none;
            /*尾部鼠标悬停连接颜色*/
            color: #CC0000;
            cursor:pointer;
        }

        a:active {
            /*尾部鼠标点击连接颜色*/
            color: #FF6600;
            text-decoration: none;
        }

        .TitlePicture {
            width: 100%;
            height: 300px;
            background-color: #351264;
        }

            .TitlePicture img {
                width: 100%;
                height: 300px;
            }

        #menu {
            width: 100%;
            height: 30px;
            margin: 0 auto;
            background-color: red;
        }

            #menu ul {
                width: 1200px;
                margin: 0 auto;           
            }

                #menu ul li {
                    padding-right: 2px;
                    height: 30px;
                    float: left;
                }

                #menu ul li a{
                    /*顶部菜单字体样式*/
                    font-family:楷体;
                    font-size:18px;
                    line-height:30px;
                    color:white;
                }
        #mid_pic {
            width: 1000px;
            height: 300px;
            margin: 20px auto;
            position: relative;
        }

        #Picture {
            float: left;
            width: 600px;
            height: 300px;
            background-color: #123123;
            overflow: hidden;
        }

            #Picture a {
                width: 600px;
                height: 300px;
            }

                #Picture a img {
                    width: 600px;
                    height: 300px;
                }

        #mid_new {
            width: 1000px;
            height: 300px;
            margin:  50px auto;
        }

        .news {
            float: left;
            width: 298px;
            height: 298px;
            margin-right: 33px;
            background: url('images/NewsTitle.jpg') no-repeat;
            border: 2px solid #f00;
            border-top: none;
            border-right: none;
            position: relative;
        }

            .news span {
                /*小板块标题字体样式*/
                font-size: 30px;
                font-family: 'Microsoft YaHei';
                line-height: 50px;
                text-indent: 10px;
                margin-left: 10px;
                color: white;
            }

            .news ul {
                width: 296px;
            }

                .news ul li {
                    width: 296px;
                    height: 40px;
                    border-bottom: 1px dashed red;
                }

                    .news ul li a {
                        width: 296px;
                        height: 40px;
                        display: block;
                        font-size: 25px;
                        font-family: 'Microsoft YaHei';
                        text-indent: 20px;
                        line-height: 40px;
                    }

        .border_right {
            height: 250px;
            position: absolute;
            right: 0;
            bottom: 0;
            width: 2px;
            background-color: #f00;
        }

        .Activity {
            margin-left: 50px;
            width: 314px;
        }

            .Activity ul li {
                width: 312px;
            }

                .Activity ul li a {
                    width: 312px;
                }

        #bottom {
            height: 50px;
            padding: 5px;
        }

        .hyperlink {
            width: 1000px;
            margin: 10px auto;
            font-size: 15px;
            text-align: center;
        }

            .hyperlink a {
                padding: 0px 3px;
            }

        .btn {
            height: 35px;
            width: 65px;
            /*border:1px solid #999999;*/
            float: right;
            font-size: 16px;
            margin: 12px 20px;
            text-align: center;
        }

        #back {
            position: absolute;
            top: 0;
            left: 0;
            height: 1431px;
            width: 100%;
            z-index: 100;
            background-color: rgba(210,210,210,0.9);
            display: none;
        }

        #more_news {
            margin: 200px auto;
            min-width: 300px;
            height: auto;
            width: 30%;
            display: none;
            background: url('images/NewsTitle.jpg') no-repeat;
            border: 2px solid #f00;
            border-top: none;
            border-right: none;
            position: relative;
            background-color: white;
        }

            #more_news span {
                font-size: 30px;
                font-family: 'Microsoft YaHei';
                line-height: 50px;
                text-indent: 10px;
                margin-left: 10px;
                color: white;
            }

            #more_news ul {
                width: 100%;
            }

                #more_news ul li {
                    width: 100%;
                    height: 40px;
                    border-bottom: 1px dashed #CC0000;
                }

                    #more_news ul li a {
                        width: 100%;
                        height: 40px;
                        display: block;
                        font-size: 25px;
                        font-family: 'Microsoft YaHei';
                        text-indent: 20px;
                        line-height: 40px;
                    }

        .btn_back {
            z-index: 500;
        }

        .btn_design {
            display: none;
        }

        #des_box {
            margin: 200px auto;
            min-width: 300px;
            background-color: rgb(240,0,2);
            height: auto;
            width: 30%;
            display: none;
            color:white
        }

            #des_box span {
                font-size: 30px;
                font-family: 'Microsoft YaHei';
                line-height: 50px;
                text-indent: 10px;
                margin-left: 10px;
            }

            #des_box ul {
                width: 100%;
            }

                #des_box ul li {
                    width: 100%;
                    height: 40px;
                    border-bottom: 1px dashed #CC0000;
                }

            #des_box input {
                width: 40%;
                height: 36px;
                display: block;
                font-size: 25px;
                font-family: 'Microsoft YaHei';
                text-indent: 20px;
                line-height: 40px;
                float: left;
            }

            #des_box button {
                width: 50px;
                height: 30px;
            }

            #des_box ul li input[type=checkbox] {
                width: 10%;
                height: 36px;
                float: left;
            }
            #des_box a{
                color:white;
            }

        #login {
            width: 200px;
            height: 100px;
            margin: 200px auto;
            display: none;
        }

        .top_pic_de {
            position: absolute;
            top: 50px;
            right: 100px;
        }

        .mid_pic_de {
            position: absolute;
            top: 20px;
            left: 50px;
        }

        .news_de {
        }

        #top_pic_des {
            width: 200px;
            height: 100px;
            margin: 200px auto;
            display: none;
        }

        .all {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="TitlePicture"><img src="images/2014-12-11.jpg" /></div>
    <a class="btn_design btn top_pic_de">编辑>></a>
    <div id="menu">
        <ul class="first_menu">
            <li>|<a href="#">政工网首页</a></li>
            <li>|<a href="#">新闻中心</a></li>
            <li>|<a href="#">政工园地</a></li>
            <li>|<a href="#">读书频道</a></li>
            <li>|<a href="#">影视剧场</a></li>
            <li>|<a href="#">音乐驿站</a></li>
            <li>|<a href="#">电教中心</a></li>
            <li>|<a href="#">摄友之家</a></li>
            <li>|<a href="#">瑞思论坛</a></li>
            <li>|<a href="#">乐彩博客</a></li>
            <li>|<a href="#">领导信箱</a></li>
            <li>|<a href="#">在线咨询</a></li>
            <li>|<a href="#">资料中转站(ftp服务)</a>|</li>
        </ul>
    </div>
    <div id="mid_pic">
        <div id="Picture">
        </div>
        <a class="btn_design btn mid_pic_de">编辑>></a>
        <div class="Activity news">
            <span class="News1Name">活动动态</span>
            <a class="btn_design btn news_de">编辑>></a>
            <ul></ul>
            <div class="border_right"></div>
            <a class="btn_more btn">更多>></a>
        </div>
    </div>
    <div id="mid_new">
        <div class="news News1">
            <span class="News2Name">活动动态</span>
            <a class="btn_design btn news_de">编辑>></a>
            <ul></ul>
            <div class="border_right"></div>
            <a class="btn_more btn">更多>></a>
        </div>
        <div class="News2 news">
            <span class="News3Name">活动动态</span>
            <a class="btn_design btn news_de">编辑>></a>
            <ul></ul>
            <div class="border_right"></div>
            <a class="btn_more btn">更多>></a>
        </div>
        <div class="News3 news">
            <span class="News4Name">活动动态</span>
            <a class="btn_design btn news_de">编辑>></a>
            <ul></ul>
            <div class="border_right"></div>
            <a class="btn_more btn">更多>></a>
        </div>
    </div>
    <div id="bottom">
        <div class="hyperlink">
            <a href="/index2.aspx">新闻中心</a>|<a href="/zhgong/">政工园地</a>|<a href="/book/">读书频道</a>|<a href="/film/">影视剧场</a>|<a href="/music/">音乐驿站</a>|<a href="/soft/">电教中心</a>|<a href="/photo/">摄友之家</a>|<a href="/bbs/">锐思论坛</a>|<a href="/boke/">乐彩博客</a>|<a href="/guestbook/">领导信箱</a>|<a href="/consult/">在线咨询</a>|<a href="ftp://25.150.32.106">FTP服务</a>|<a name="1">管理员入口</a>
            <p>版权所有 威海军分区政治部</p>
        </div>
    </div>
    <div id="back">
        <div id="more_news"></div>
        <div id="login">
            <p>请输入口令</p>
            <input type="text" />
            <input type="button" value="登陆" />
            <a class='btn_back btn'>返回>></a>
        </div>
        <div id="top_pic_des">
            <p>URL</p>
            <input type="text" />
            <input type="button" value="确定" />
            <a class='btn_back btn'>返回>></a>
        </div>
        <div id="des_box">
            <div class="thing"></div>
            <input class="all" style="width:36px;" type="checkbox" value="all" /><span>全选</span>
            <a class="del">删除</a>
            <a class="mod">保存</a>
            <a class="add">添加</a>
        </div>
    </div>
    <script type="text/javascript">
        function more() {
            $(".btn_more").each(function () {
                ($(this).parent().find('li').length > 5) ? $(this).show(function () {
                    for (var i = 5; i <= $(this).parent().find('li').length; i++) {
                        $(this).parent().find('li').eq(i).hide();
                    }
                }) : $(this).hide();
            })
        }
        $(".btn_more").click(function () {
            $("#back").show();
            $("#more_news").show();
            $("#back").height("auto");
            $("#more_news").height("auto")
            $("#more_news").html("<span id='News1Name'>" + $(this).parent().find("span").text() + "</span><ul>" + $(this).parent().find("ul").html() + "</ul><a class='btn_back btn'>返回>></a><div class='border_right'>");
            $("#more_news").height($("#more_news").height() + $("#more_news").find("li:hidden").length * 40 + 60);
            $("#more_news").find("li").show();
            $("#more_news").css("margin-bottom", $("body").height() - $("#more_news").height() - 200)
            $("#more_news").find(".border_right").height($("#more_news").height() - 50);
        })
        $(".btn_back").live("click", function () {
            $("#back").hide();
            $("#more_news").hide();
            $("#login").hide();
            $("#des_box").hide();
            $("#top_pic_des").hide();
        })
        $(window).scroll(function () {
            var ScrollVal = getScroll();
            $("#login").css("margin-top", 200 + ScrollVal);
            $("#top_pic_de").css("margin-top", 200 + ScrollVal);
            if (($("#more_news").height() + 200) < $(window).height())
                $("#more_news").css("margin-top", 200 + ScrollVal);
            else $("#more_news").css("margin-top", 200);
        })
        function getScroll() {
            var bodyTop = 0;
            if (typeof window.pageYOffset != 'undefined') {
                bodyTop = window.pageYOffset;
            } else if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
                bodyTop = document.documentElement.scrollTop;
            }
            else if (typeof document.body != 'undefined') {
                bodyTop = document.body.scrollTop;
            }
            return bodyTop
        }
        $(".hyperlink a:last").click(function () {
            if ($(this).prop("name") == 1) {
                $("#back").show();
                $("#back").height($("body").height())
                $("#login").show();
                $(this).prop("name", "2");
            } else {
                $(".btn_design").hide();
                $("#login :text").val('')
                $(this).html("管理员入口");
                $(this).prop("name", "1");
            }
        })
        $(".top_pic_de").click(function () {
            $("#back").show();
            $("#top_pic_des").show();
            $("#top_pic_des :text").val($(".TitlePicture img").attr("src"));
        })
        var lableName;
        $(".news_de").click(function () {
            if ($(".hyperlink a:last").prop("name") == 2) {
                $("#back").show();
                $("#des_box").show();
                $("#back").height("auto");
                $("#des_box").height("auto")
                lableName = $(this).parent().find("span").attr("class")
                $("#des_box div.thing").html("<input type='text' class='lableTitle' value='" + $(this).parent().find("span").text() + "'/><span>标题</span>    <span>URL</span><ul>" + $(this).parent().find("ul").html() + "</ul><a class='btn_back btn news_back'>返回>></a>");
                $("#des_box").height($("#des_box").height() + $("#des_box").find("li:hidden").length * 40 + 60);
                $("#des_box").find("li").show();
                $("#des_box").css("margin-bottom", $(window).height() - $("#des_box").height() - 200)
                $("#des_box").find("li").each(function () {
                    var change;
                    change = "<input type='checkbox' value='" + $(this).find("a").attr("name") + "'/>" +
                        "<input type='text' class='title' value='" + $(this).find("a").html() + "'/>" +
                        "<input type='text' class='url' value='" + $(this).find("a").attr("href") + "'/>"
                    $(this).html(change);
                })
                $("#des_box").css("margin-bottom", $("body").height() - $("#des_box").height() - 200)
            } else {
                alert("没有权限")
            }
        })
        $(".all").click(function () {
            $(this).prop("checked") == true ? $(this).parent().find(":checkbox").each(function () {
                $(this).attr("checked", "true");
            }) : $(this).parent().find(":checkbox").each(function () {
                $(this).removeAttr("checked");
            });
        })
        $("#des_box").find(":checkbox").live("click", function () {
            if ($(this).prop("checked") == false) {
                $(".all").removeAttr("checked");
            }
            if ($(this).parent().parent().find(":checkbox[checked]").length == ($(this).parent().parent().find(":checkbox").length)) {
                $(".all").attr("checked", "true");
            }
        })
        $(".del").click(function () {
            var num = parseInt(lableName.replace(/[^0-9]/ig, ""));
            var DATA = new String()
            $(this).parent().find(":checkbox[checked]").each(function () {
                if ($(this).val() != 'all')
                    DATA += $(this).val() + ',';
            })
            DATA = DATA.substr(0, DATA.length - 1)
            //传值到后台
            if (num == 0) {
                $.ajax(
                                {
                                    type: "post",
                                    url: "DeletePic.ashx",
                                    data: {
                                        classid: num,
                                        id: DATA
                                    },

                                    success: function (data) {
                                        alert("修改成功，请刷新页面查看")
                                    }
                                })
            } else {
                if ((num < 5) && (num > 0)) {
                    $.ajax(
                               {
                                   type: "post",
                                   url: "DeleteNews.ashx",
                                   data: {
                                       classid: num,
                                       id: DATA
                                   },

                                   success: function (data) {
                                       alert("success")
                                       for (index in DATA.split(',')) {
                                           $(".news").eq(num - 1).find("a").each(function () {
                                               if ($(this).prop("name") == DATA.split(',')[index])
                                                   $(this).parent().remove();
                                           })
                                       }
                                       for (var i = 0; i < 5; i++) {
                                           $(".news").eq(num - 1).find("li").eq(i).show();
                                       }
                                   }
                               })
                }
            }
            $(this).parent().find(":checkbox[checked]").each(function () {
                if ($(this).val() != $(".all").val()) {
                    //页面修改
                    $("#des_box").height($("#des_box").height() - 40);
                    $(this).parent().remove();
                    $(".all").removeAttr("checked");
                }
            })
        })
        $(".add").click(function () {
            var change;
            change = "<li><input type='checkbox' value='' />" +
                "<input type='text' class='title' value='' />" +
                "<input type='text' class='url' value='' /></li>"
            $(change).appendTo($("#des_box").find("ul"));
            $("#des_box").height($("#des_box").height() + 40);
        })
        $(".mod").click(function () {
            var num = parseInt(lableName.replace(/[^0-9]/ig, ""));
            var DATAID = new String()
            var DATATitle = new String()
            var DATAUrl = new String()
            var DATAName = new String()
            DATAName = $(this).parent().find(".lableTitle").val()
            $(this).parent().find(":checkbox").each(function () {
                DATAID += $(this).val() + ',';
            })
            $(this).parent().find(".title").each(function () {
                DATATitle += $(this).val() + ',';
            })
            $(this).parent().find(".url").each(function () {
                DATAUrl += $(this).val() + ',';
            })
            DATAID = DATAID.substr(0, DATAID.length - 5)
            DATATitle = DATATitle.substr(0, DATATitle.length - 1)
            DATAUrl = DATAUrl.substr(0, DATAUrl.length - 1)
            //传值到后台
            if (num == 0) {
                $.ajax(
                                {
                                    type: "post",
                                    url: "SavePic.ashx",
                                    data: {
                                        title: DATATitle,
                                        url: DATAUrl,
                                        id: DATAID
                                    },

                                    success: function (data) {
                                        updata(data, 1);
                                        alert("修改成功")
                                        $("#back").hide();
                                    }
                                })
            } else {
                if ((num < 5) && (num > 0)) {
                    $.ajax(
                               {
                                   type: "post",
                                   url: "SaveNews.ashx",
                                   data: {
                                       classid: num,
                                       title: DATATitle,
                                       name: DATAName,
                                       url: DATAUrl
                                   },

                                   success: function (data) {
                                       updata(data, 0);
                                       alert("修改成功")
                                       $("#back").hide();
                                   }
                               })
                }
            }

            $(this).parent().find(":checkbox[checked]").each(function () {
                if ($(this).val() != $(".all").val()) {
                    //页面修改
                    $("#des_box").height($("#des_box").height() - 40);
                    $(this).parent().remove();
                    $(".all").removeAttr("checked");
                }
            })
        })
        function updata(data, type) {
            if (type == 0) {
                var p = data.split(";");
                var q = new Array();
                for (index in p) {
                    var m = p[index].split(",")
                    q.push(m)
                }
                var news = new String();
                for (var index = 0; index < q.length - 1; index++) {
                    if (index == 0) {
                        $(".News" + q[index][0] + "Name").html(q[index][1])
                    } else {
                        news += "<li><a href='" + q[index][2] + "' name='" + q[index][0] + "'>" + q[index][1] + "</a></li>"
                    }
                }
                $(".News" + q[0][0] + "Name").parent().find("ul").html(news);
                more()
            }
            if (type == 1) {
                var p = data.split(";");
                var q = new Array();
                for (index in p) {
                    var m = p[index].split(",")
                    q.push(m)
                }
                $("#Picture").remove();
                var pics = "<div id='Picture'>";
                for (var index = 0; index < q.length - 1; index++) {
                    if (q[index][0] == 0) $(".TitlePicture").find("img").attr("src", q[index][2]);
                    else
                        pics += "<a><img name='" + q[index][0] + "' src='" + q[index][2] + "' alt='" + q[index][1] + "' /></a>"
                }
                pics += "</div>"
                $("#mid_pic").prepend(pics)
                $("#Picture").KinSlideshow();
            }
            if (type == 2) {
            }
            if (type == 3) {
            }

        }

        $(".mid_pic_de").click(function () {
            lableName = "0"
            $("#back").show();
            $("#des_box").show();
            $("#back").height("auto");
            $("#des_box").height("auto")
            var change = new String();
            $("#des_box div.thing").html("<span>标题</span><span>URL</span><ul>");
            $("#KSS_content").find("img").each(function () {
                change = "<li><input type='checkbox' value='" + $(this).attr("name") + "' />" +
                    "<input type='text' class='title' value='" + $(this).attr("alt") + "' />" +
                "<input type='text' class='url' value='" + $(this).attr("src") + "' /></li>"
                $("#des_box ul").append(change);
            })
            $("#des_box div.thing").append("</ul><a class='btn_back btn news_back'>返回>></a>");
            $("#des_box").css("margin-bottom", $("body").height() - $("#des_box").height() - 200)
        })
        $(document).ready(function () {
            $.ajax(
                           {
                               type: "post",
                               url: "SavePic.ashx",
                               data: {
                                   name: 'null'
                               },

                               success: function (data) {
                                   updata(data, 1);
                               }
                           })
            getNews(4);


        });
        function getNews(i) {
            $.ajax(
                   {
                       type: "post",
                       url: "SaveNews.ashx",
                       data: {
                           classid: i,
                           name: 'null'
                       },
                       success: function (data) {
                           updata(data, 0);
                           if (i) getNews(i - 1)
                       }
                   })
        }

        $("#top_pic_des :button").click(function () {
            var DATAurl = $("#top_pic_des").find("input:text").val();
            $.ajax({
                type: 'post',
                datatype: 'json',
                url: "SavePic.ashx",
                data: {
                    id: 0,
                    title: 0,
                    url: DATAurl
                },
                success: function (data) {
                    $("#back").hide();
                    updata(data, 1);
                }
            })
        })
        $("#login :button").click(function () {
            var password = $("#login :text").val();
            $.ajax({
                type: 'post',
                datatype: 'json',
                url: "Login.ashx",
                data: {
                    password: password
                },
                success: function (data) {
                    if (data == 'true') {
                        $("#back").hide();
                        $("#login").hide();
                        $(".btn_design").show();
                        $(".hyperlink a:last").html("Login out");
                        $("#login").hide();
                    } else {
                        alert("输入错误")
                    }
                }
            })
        })
    </script>
    <script type="text/javascript" src="js/design.js"></script>
</body>
</html>


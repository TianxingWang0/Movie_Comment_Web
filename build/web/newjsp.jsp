<%-- 
    Document   : newjsp
    Created on : 2018-5-31, 17:42:02
    Author     : 28347
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Bootstrap 实例 - 倒置的导航栏</title>
        <link rel="stylesheet" href="./searchTab.css">
    </head>
    <body>
        <div class="Ts spe">
                            <select name="choice">
                    <option value="title">电影名称</option>
                    <option value="director">导演</option>
                    <option value="actors">相关主演</option>
                </select>
            <div class="dp" onmouseout="this.parentNode.className = 'Ts spe'" onmouseover="this.parentNode.className = 'Ts spe hover'">

            </div>
            <form action="/s.php" method="get" name="sform">
                <input size="30" name="q" id="keyword" type="text" class="si grey" value="影片名/ 明星/ 导演/ 地区/ 年代/ imdb" onclick="if (this.value === '影片名/ 明星/ 导演/ 地区/ 年代/ imdb')
                            this.value = '';
                        this.className = 'si'"><input value="搜 索" class="sbt" type="submit" onclick="return ckSearch();">
            </form>
        </div>
    </body>
</html>

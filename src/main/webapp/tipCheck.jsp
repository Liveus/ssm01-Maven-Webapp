<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
      + path + "/";
%>
<html lang="en">

<head>
  <title>后台-举报信息审核</title>
  <meta charset="UTF-8">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
</head>

<body>
  <div class="templatemo-flex-row">
    <div class="templatemo-sidebar">
      <header class="templatemo-site-header">
        <div class="square"></div>
        <h1>LOGO</h1>
      </header>
      <div class="profile-photo-container">
        <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">
        <div class="profile-photo-overlay"></div>
      </div>
      <!-- <div class="templatemo-search-number">
        本站访问量为 222
      </div> -->
      <!-- Search box -->
      <form class="templatemo-search-form" role="search">
        <div class="input-group">
          <button type="submit" class="fa fa-search"></button>
          <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
        </div>
      </form>
      <div class="mobile-menu-icon">
        <i class="fa fa-bars"></i>
      </div>
      <nav class="templatemo-left-nav">
        <ul>
          <li><a href="home.jsp"><i class="fa fa-home fa-fw"></i>主页</a></li>
          <li><a href="countrysides.jsp"><i class="fa fa-map-marker fa-fw"></i>乡村分析</a></li>
          <li><a href="users.jsp"><i class="fa fa-users fa-fw"></i>用户分析</a></li>
          <li><a href="addCheck.jsp"><i class="fa fa-database fa-fw"></i>添加审核</a></li>
          <li><a href="tipCheck.jsp" class="active"><i class="fa fa-sliders fa-fw"></i>举报信息审核</a></li>
          <li><a href="loginOut.jsp"><i class="fa fa-eject fa-fw"></i>登入/登出</a></li>
        </ul>
      </nav>
    </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
      <div class="templatemo-content-container">
        <!-- 举报列表 -->
        <div class="templatemo-content-widget no-padding">
          <div class="panel panel-default table-responsive">
            <table class="table table-striped table-bordered templatemo-user-table">
              <thead>
                <tr>
                  <td style="width:15%;">举报网址</td>
                  <td style="width:15%;">BY</td>
                  <td style="width:13%;">问题类型</td>
                  <td style="width:15%;">举报时间</td>
                  <td style="width:26%;">操作</td>
                  <td style="width:15%;">状态</td>
                </tr>
              </thead>
              <tbody id="jb_list">
                <!-- <tr>
                  <td>http://fncoh?cnqieocbqefopbefbefxacqw</td>
                  <td>Silence12344</td>
                  <td>部分内容表述有误</td>
                  <td>2017-08-14</td>
                  <td>
                    <input type="button" name="" class="table-input-view" value="查看原因">
                    <input type="button" name="" class="table-input-view" value="提交审查结果">
                  </td>
                  <td>
                    <select class="table-select">
                      <option value="0">未处理</option>
                      <option value="1">未通过</option>
                      <option value="2">通过</option>
                    </select>
                  </td>
                </tr> -->
              </tbody>
            </table>
          </div>
        </div>
        <!-- 翻页 -->
        <div class="pagination-wrap">
          <ul class="pagination">
            <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
              <a href="#" aria-label="Next">
                  <span aria-hidden="true"><i class="fa fa-play"></i></span>
                </a>
            </li>
          </ul>
        </div>
        <!-- 原因 -->
        <div class="templatemo-content-widget white-bg">
          <!-- <h2 class="margin-bottom-10">报错原因详情</h2> -->
          <div class="panel panel-default no-border">
            <div class="panel-heading border-radius-10">
              <h2 class="table-font-family">问题类型</h2>
            </div>
            <div class="panel-body">
              <div class="templatemo-flex-row flex-content-row ">
                <div class="col-1">
                  <div id="timeline_div" class="templatemo-chart table-font-family">
                    图片描述不清，引用不当
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="panel panel-default no-border">
            <div class="panel-heading border-radius-10">
              <h2 class="table-font-family">图片描述</h2>
            </div>
            <div class="panel-body">
              <div class="templatemo-flex-row flex-content-row">
                <div class="col-1">
                  <div id="gauge_div" class="templatemo-chart">
                    <img src="images/map.png" style="height:100%;">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="panel panel-default no-border">
            <div class="panel-heading border-radius-10">
              <h2 class="table-font-family">问题详述</h2>
            </div>
            <div class="panel-body">
              <div class="templatemo-flex-row flex-content-row">
                <div class="col-1">
                  <div id="area_chart_div" class="templatemo-chart table-font-family">在景点介绍处，这一点写的不符合实际，完全是骗人的</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="js/jquery-1.11.2.min.js"></script>
  <!-- jQuery -->
  <script type="text/javascript" src="js/templatemo-script.js"></script>
  <script type="text/javascript">
    $(function(){ 
      $.ajax({
        url : 'showSCw',
        type : 'GET',
        data : {
          pageNo : 1 //表示第一页
        },
        success : function(data){
          var jsonArray = JSON.parse(data).list;
          var outStr = "";
          var outStr1 = "";
          var outStr2 = "";
          var outStr3 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            var select1 = "";
            var select2 = "";
            var select0 = "";
            if(i == 0){
              outStr1 = jsonCell.jbquestion;
              outStr2 = "<img src=" + jsonCell.jbImg + " style='height:100%;'>";
              outStr3 = jsonCell.jbContext;
            }
            if(jsonCell.jbstate == "0"){
              select0 = "selected";
            } else if(jsonCell.jbstate == "1"){
              select1 = "selected";
            } else {
              select2 = "selected";
            }
            outStr += "<tr><td class='jb_adress'>" + jsonCell.jbAdress + "</td><td>" + jsonCell.byUser + "</td><td>" + jsonCell.jbquestion + "</td><td>" + jsonCell.jbTime + "</td><td><input type='button' class='table-input-view jb-infor-view' value='查看原因' style='outline:none;margin-right:10px;'><input type='button' class='table-input-view jb-result-sub' value='提交审查结果' style='outline:none;'></td><td><select class='table-select jb-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
          });
          $("#jb_list").html(outStr);
          $("#timeline_div").html(outStr1);
          $("#gauge_div").html(outStr2);
          $("#area_chart_div").html(outStr3);
        },
        error : function(){
          console.log("服务器被天狗吃掉了,获取数据失败~");
          // 0 未处理  1 未通过  2 通过
          var data = '{"list":[{"jbAdress":"1http://fncoh?cnqieocbqefopvewgevwgqegw","byUser":"某某某","jbTime":"2017-08-14","jbstate":"0","jbquestion":" 部分内容表述有误","jbImg":" images/map.png","jbContext":" 部分分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表内容表述有误"},{"jbAdress":"2http://fncoh?cnqieocbqefopvewgevwgqegw","byUser":"某某某","jbTime":"2017-08-14","jbstate":"0","jbquestion":" 部分内容表述有误"},{"jbAdress":"3http://fncoh?cnqieocbqefopvewgevwgqegw","byUser":"某某某","jbTime":"2017-08-14","jbstate":"0","jbquestion":" 部分内容表述有误"},{"jbAdress":"4http://fncoh?cnqieocbqefopvewgevwgqegw","byUser":"某某某","jbTime":"2017-08-14","jbstate":"0","jbquestion":" 部分内容表述有误"},{"jbAdress":"5http://fncoh?cnqieocbqefopvewgevwgqegw","byUser":"某某某","jbTime":"2017-08-14","jbstate":"0","jbquestion":" 部分内容表述有误"}]}';
          var jsonArray = JSON.parse(data).list;
          var outStr = "";
          var outStr1 = "";
          var outStr2 = "";
          var outStr3 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            var select1 = "";
            var select2 = "";
            var select0 = "";
            if(i == 0){
              outStr1 = jsonCell.jbquestion;
              outStr2 = "<img src=" + jsonCell.jbImg + " style='height:100%;'>";
              outStr3 = jsonCell.jbContext;
            }
            if(jsonCell.jbstate == "0"){
              select0 = "selected";
            } else if(jsonCell.jbstate == "1"){
              select1 = "selected";
            } else {
              select2 = "selected";
            }
            outStr += "<tr><td class='jb_adress'>" + jsonCell.jbAdress + "</td><td>" + jsonCell.byUser + "</td><td>" + jsonCell.jbquestion + "</td><td>" + jsonCell.jbTime + "</td><td><input type='button' class='table-input-view jb-infor-view' value='查看原因' style='outline:none;margin-right:10px;'><input type='button' class='table-input-view jb-result-sub' value='提交审查结果' style='outline:none;'></td><td><select class='table-select jb-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
          });
          $("#jb_list").html(outStr);
          $("#timeline_div").html(outStr1);
          $("#gauge_div").html(outStr2);
          $("#area_chart_div").html(outStr3);
        }
      });
    });

    // 查看举报信息
    $("body").on("click",".jb-infor-view",function(){
      x = $(this).index(".jb-infor-view");
      // console.log(x);
      var thisAdress = $(".jb_adress").eq(x).html();
      // console.log(thisAdress);
      $.ajax({
        url : 'showSCw',
        type : 'GET',
        data : {
          jbAdress : thisAdress
        },
        success : function(data){
          var jsonArray = JSON.parse(data).list;
          var outStr1 = "";
          var outStr2 = "";
          var outStr3 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            outStr1 = jsonCell.jbquestion;
            outStr2 = "<img src=" + jsonCell.jbImg + " style='height:100%;'>";
            outStr3 = jsonCell.jbContext;
          });
          $("#timeline_div").html(outStr1);
          $("#gauge_div").html(outStr2);
          $("#area_chart_div").html(outStr3);
        },
        error : function(){
          console.log("服务器被天狗吃掉了,获取数据失败~");
          // 0 未处理  1 未通过  2 通过
          var data = '{"list":[{"jbquestion":"1部分内容表述有误","jbImg":" images/map.png","jbContext":" 部分分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表分内容表内容表述有误"}]}';
          var jsonArray = JSON.parse(data).list;
          var outStr1 = "";
          var outStr2 = "";
          var outStr3 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            outStr1 = jsonCell.jbquestion;
            outStr2 = "<img src=" + jsonCell.jbImg + " style='height:100%;'>";
            outStr3 = jsonCell.jbContext;
          });
          $("#timeline_div").html(outStr1);
          $("#gauge_div").html(outStr2);
          $("#area_chart_div").html(outStr3);
        }
      });
    });

    // 提交审核
    $("body").on("click",".jb-result-sub",function() {
      x = $(this).index(".jb-result-sub");
      $(this).val("已提交");
      var thisAdress = $(".jb_adress").eq(x).html();
      var thisState = $(".jb-select").eq(x).val();
      // console.log(thisAdress);
      // console.log(thisState);
      $.ajax({
        url : 'aaa',
        type : 'GET',
        data : {
          jbAdress : thisAdress,
          jbState : thisState
        },
        success : function(){
          console.log("成功更新数据~")
        },
        error : function(){
          console.log("服务器连接失败，数据更新失败")
        }
      })
    });
  </script>
</body>

</html>
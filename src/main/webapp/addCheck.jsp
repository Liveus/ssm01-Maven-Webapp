<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en">

<head>
  <title>后台-添加审核</title>
  <meta charset="UTF-8">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
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
          <li><a href="addCheck.jsp" class="active"><i class="fa fa-database fa-fw"></i>添加审核</a></li>
          <li><a href="tipCheck.jsp"><i class="fa fa-sliders fa-fw"></i>举报信息审核</a></li>
          <li><a href="loginOut.jsp"><i class="fa fa-eject fa-fw"></i>登入/登出</a></li>
        </ul>
      </nav>
    </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
      <!-- choose -->
      <div class="templatemo-top-nav-container">
        <div class="row">
          <nav class="templatemo-top-nav col-lg-12 col-md-12">
            <ul class="text-uppercase">
              <li class="active">乡村添加</li>
              <li>景点添加<!-- <span class="add-news-num">1</span> --></li>
              <li>餐馆添加</li>
              <li>住宿添加</li>
            </ul>
          </nav>
        </div>
      </div>
      <!-- 乡村添加 -->
      <div class="templatemo-content-container add-message-tab" style="display:block;">
        <div class="templatemo-content-widget no-padding">
          <div class="panel panel-default table-responsive">
            <table class="table table-striped table-bordered templatemo-user-table">
              <thead>
                <tr>
                  <td style="width:25%;">名称</td>
                  <td style="width:22%;">BY</td>
                  <td style="width:15%;">添加时间</td>
                  <td style="width:23%;">操作</td>
                  <td style="width:15%;">状态</td>
                </tr>
              </thead>
              <tbody id="country_add">
                <!-- <tr>
                  <td>乡村添加</td>
                  <td>Silence12344</td>
                  <td>2017-08-14</td>
                  <td>
                    <input type="button" name="" class="table-input-view country-infor-view" value="查看">
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
      </div>
      <div class="templatemo-content-container infor-of-table" style="display:none;">
        <div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden">
            <div class="col-1 templatemo-overflow-hidden">
              <div class="templatemo-content-widget white-bg templatemo-overflow-hidden">
                <div class="templatemo-flex-row flex-content-row">
                  <div class="col-1 col-md-12" id="add_country_infor">
                    <!-- <h2 class="text-center table-font-family"><span class="back-icon fa fa-arrow-circle-left fa-fw"></span>添加的村</h2>
                    <div id="pie_chart_div" class="templatemo-chart">
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">简&emsp;&emsp;介：</li>
                        <li class="ul-right-context table-font-family">车位 位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后</li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">隶&emsp;&emsp;属：</li>
                        <li class="ul-right-context table-font-family">浙江省 湖州市 安吉县 <span  class="table-font-family">高家堂村</span></li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">封&emsp;&emsp;面：</li>
                        <li class="ul-right-context">
                          <div class="li-context-img-box">
                            <img src="images/sunset.jpg" class="img-auto">
                          </div>
                        </li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">特&emsp;&emsp;产：</li>
                        <li class="ul-right-context table-font-family">
                          <div class="country-special-box">
                            <img src="images/person.jpg">
                            <span>安吉白茶</span>
                          </div>
                          <div class="country-special-box">
                            <img src="images/person.jpg">
                            <span>安吉白茶</span>
                          </div>
                          <div class="country-special-box">
                            <img src="images/person.jpg">
                            <span>安吉白茶</span>
                          </div>
                          <div class="country-special-box">
                            <img src="images/person.jpg">
                            <span>安吉白茶</span>
                          </div>
                          <div class="country-special-box">
                            <img src="images/person.jpg">
                            <span>安吉白茶</span>
                          </div>
                        </li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">照&ensp;片&ensp;集：</li>
                        <li class="ul-right-context">
                          <div class="li-context-imgs-box">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                          </div>
                        </li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">视&emsp;&emsp;频：</li>
                        <li class="ul-right-context">
                          <div class="li-context-video-box" style="margin-bottom:25px;">
                            <video width="100%" height="100%" controls>
                              <source src="mp4_video.mp4"  type="video/mp4">
                            </video>
                          </div>
                          <div class="li-context-video-box" style="margin-bottom:25px;">
                            <video width="100%" height="100%" controls>
                              <source src="mp4_video.mp4"  type="video/mp4">
                            </video>
                          </div>
                        </li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">文&emsp;&emsp;化：</li>
                        <li class="ul-right-context table-font-family">车位 位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后</li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">活&emsp;&emsp;动：</li>
                        <li class="ul-right-context table-font-family">
                          <div class="country-activity-infor">
                            <h2 class="table-font-family">活动一</h2>
                            <p class="table-font-family">和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更</p>
                          </div>
                          <div class="country-activity-infor">
                            <h2 class="table-font-family">活动一</h2>
                            <p class="table-font-family">和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更</p>
                          </div>
                        </li>
                      </ul>
                    </div> -->
                  </div>
                </div>                
              </div>
            </div>
        </div>
      </div>
      <!-- 景点添加 -->
      <div class="templatemo-content-container add-message-tab" style="display:none;">
        <div class="templatemo-content-widget no-padding">
          <div class="panel panel-default table-responsive">
            <table class="table table-striped table-bordered templatemo-user-table">
              <thead>
                <tr>
                  <td style="width:25%;">名称</td>
                  <td style="width:22%;">BY</td>
                  <td style="width:15%;">添加时间</td>
                  <td style="width:23%;">操作</td>
                  <td style="width:15%;">状态</td>
                </tr>
              </thead>
              <tbody id="spot_add">
                <!-- <tr>
                  <td>添加景点</td>
                  <td>Silence12344</td>
                  <td>2017-08-14</td>
                  <td>
                    <input type="button" name="" class="table-input-view" value="查看">
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
      </div>
      <div class="templatemo-content-container infor-of-table" style="display:none;">
        <div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden">
            <div class="col-1 templatemo-overflow-hidden">
              <div class="templatemo-content-widget white-bg templatemo-overflow-hidden">
                <div class="templatemo-flex-row flex-content-row">
                  <div class="col-1 col-md-12" id="add_spot_infor">
                    <!-- <h2 class="text-center table-font-family"><span class="back-icon fa fa-arrow-circle-left fa-fw"></span>就这个景点</h2>
                    <div id="pie_chart_div" class="templatemo-chart">
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">简&emsp;&emsp;介：</li>
                        <li class="ul-right-context table-font-family">车位 位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后</li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">隶&emsp;&emsp;属：</li>
                        <li class="ul-right-context table-font-family">浙江省 湖州市 安吉县 <span  class="table-font-family">高家堂村</span></li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">门&emsp;&emsp;票：</li>
                        <li class="ul-right-context table-font-family"><span  class="table-font-family">89</span> RMB/人</li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">联系方式：</li>
                        <li class="ul-right-context table-font-family">159********</li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">详细地址：</li>
                        <li class="ul-right-context table-font-family">浙江省湖州市安吉县什么村真没路35号</li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">封&emsp;&emsp;面：</li>
                        <li class="ul-right-context">
                          <div class="li-context-img-box">
                            <img src="images/sunset.jpg" class="img-auto">
                          </div>
                        </li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">照&ensp;片&ensp;集：</li>
                        <li class="ul-right-context">
                          <div class="li-context-imgs-box">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                            <img src="images/sunset.jpg">
                          </div>
                        </li>
                      </ul>
                      <ul class="infor-ul clear">
                        <li class="ul-left-title table-font-family">视&emsp;&emsp;频：</li>
                        <li class="ul-right-context">
                          <div class="li-context-video-box">
                            <video width="100%" height="100%" controls>
                              <source src="mp4_video.mp4"  type="video/mp4">
                            </video>
                          </div>
                        </li>
                      </ul>
                    </div> -->
                  </div>
                </div>                
              </div>
            </div>
        </div>
      </div>  
      <!-- 餐馆添加 -->
      <div class="templatemo-content-container add-message-tab" style="display:none;">
        <div class="templatemo-content-widget no-padding">
          <div class="panel panel-default table-responsive">
            <table class="table table-striped table-bordered templatemo-user-table">
              <thead>
                <tr>
                  <td style="width:25%;">名称</td>
                  <td style="width:22%;">BY</td>
                  <td style="width:15%;">添加时间</td>
                  <td style="width:23%;">操作</td>
                  <td style="width:15%;">状态</td>
                </tr>
              </thead>
              <tbody id="restaurant_add">
                <!-- <tr>
                  <td>餐馆添加</td>
                  <td>Silence12344</td>
                  <td>2017-08-14</td>
                  <td>
                    <input type="button" name="" class="table-input-view" value="查看">
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
      </div>
      <div class="templatemo-content-container infor-of-table" style="display:none;">
        <div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden">
            <div class="col-1 templatemo-overflow-hidden">
              <div class="templatemo-content-widget white-bg templatemo-overflow-hidden">
                <div class="templatemo-flex-row flex-content-row">
                  <div class="col-1 col-md-12" id="add_restaurant_infor">
                  </div>
                </div>                
              </div>
            </div>
        </div>
      </div>  
      <!-- 住宿添加 -->
      <div class="templatemo-content-container add-message-tab" style="display:none;">
        <div class="templatemo-content-widget no-padding">
          <div class="panel panel-default table-responsive">
            <table class="table table-striped table-bordered templatemo-user-table">
              <thead>
                <tr>
                  <td style="width:25%;">名称</td>
                  <td style="width:22%;">BY</td>
                  <td style="width:15%;">添加时间</td>
                  <td style="width:23%;">操作</td>
                  <td style="width:15%;">状态</td>
                </tr>
              </thead>
              <tbody id="hotel_add">
                <!-- <tr>
                  <td>住宿添加</td>
                  <td>Silence12344</td>
                  <td>2017-08-14</td>
                  <td>
                    <input type="button" name="" class="table-input-view" value="查看">
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
      </div>
      <div class="templatemo-content-container infor-of-table" style="display:none;">
        <div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden">
            <div class="col-1 templatemo-overflow-hidden">
              <div class="templatemo-content-widget white-bg templatemo-overflow-hidden">
                <div class="templatemo-flex-row flex-content-row">
                  <div class="col-1 col-md-12" id="add_hotel_infor">
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

    function dateFormat (time) {
      var date = new Date(time);
      var year = date.getFullYear();
      var month = date.getMonth() + 1;
      var day = date.getDate();
      month = (String(month).length < 2) ? '0' + month : month;
      day = (String(day).length < 2) ? '0' + day : day;
      return year + '-' + month + '-' + day;
    }

    $(".text-uppercase li").click(function () {
      x = $(this).index();
      $(this).siblings(".text-uppercase li").removeClass("active");
      $(this).addClass("active");
      $(".add-message-tab").eq(x).siblings(".add-message-tab").css("display", "none");
      $(".add-message-tab").eq(x).css("display", "block");
      if(x == 0){
        $.ajax({
          url : 'AddExamine/showExamine',
          type : 'GET',
          data : {
            pageNo : 1 //表示第一页
          },
          success : function(data){
            var jsonArray = JSON.parse(data).list;
            var outStr1 = "";
            var outStr2 = "";
            var outStr3 = "";
            $.each(jsonArray,function(i,value){
              var jsonCell = value;
              var select1 = "";
              var select2 = "";
              var select0 = "";
              var timeFormate = dateFormat(jsonCell.addtime);
              if(jsonCell.examine == "0"){
                select0 = "selected";
              } else if(jsonCell.examine == "1"){
                select1 = "selected";
              } else {
                select2 = "selected";
              }
              outStr1 += "<tr><td class='addCName'>" + jsonCell.name + "</td><td>" + jsonCell.username + "</td><td>" + timeFormate + "</td><td><input type='button' name='' class='table-input-view country-infor-view' value='查看'><input type='button' name='' class='table-input-view country-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select country-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
            });
            $("#country_add").html(outStr1);
          },
          error : function(){
            console.log("服务器被天狗吃掉了,获取数据失败~");
            // 0 未处理  1 未通过  2 通过
            var data = '{"list":[{"name":"长林垓村1","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"长林垓村2","username":"某某某","addtime":"2017-08-14","examine":"1"},{"name":"长林垓村3","username":"某某某","addtime":"2017-08-14","examine":"2"},{"name":"长林垓村4","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"长林垓村5","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"长林垓村6","username":"某某某","addtime":"2017-08-14","examine":"0"}]}';
            var jsonArray = JSON.parse(data).list;
            var outStr1 = "";
            var outStr2 = "";
            var outStr3 = "";
            $.each(jsonArray,function(i,value){
              var jsonCell = value;
              var select1 = "";
              var select2 = "";
              var select0 = "";
              if(jsonCell.examine == "0"){
                select0 = "selected";
              } else if(jsonCell.examine == "1"){
                select1 = "selected";
              } else {
                select2 = "selected";
              }
              outStr1 += "<tr><td class='addCName'>" + jsonCell.name + "</td><td>" + jsonCell.username + "</td><td>" + jsonCell.addtime + "</td><td><input type='button' name='' class='table-input-view country-infor-view' value='查看'><input type='button' name='' class='table-input-view country-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select country-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
            });
            $("#country_add").html(outStr1);
          }
        });
      } else if(x == 1){
        $.ajax({
          url : 'AddExamine/showExamines',
          type : 'GET',
          data : {
            pageNo : 1 //表示第一页
          },
          success : function(data){
            var jsonArray = JSON.parse(data).list;
            var outStr1 = "";
            var outStr2 = "";
            var outStr3 = "";
            $.each(jsonArray,function(i,value){
              var jsonCell = value;
              var select1 = "";
              var select2 = "";
              var select0 = "";
              var timeFormate = dateFormat(jsonCell.addtime);
              if(jsonCell.examine == "0"){
                select0 = "selected";
              } else if(jsonCell.examine == "1"){
                select1 = "selected";
              } else {
                select2 = "selected";
              }
              outStr1 += "<tr><td class='addSName'>" + jsonCell.name + "</td><td>" + jsonCell.username + "</td><td>" + timeFormate + "</td><td><input type='button' name='' class='table-input-view spot-infor-view' value='查看'><input type='button' name='' class='table-input-view spot-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select spot-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
            });
            $("#spot_add").html(outStr1);
          },
          error : function(){
            console.log("服务器被天狗吃掉了,获取数据失败~");
            
          }
        });
      } else if(x == 2){
        $.ajax({
          url : 'AddExamine/showExaminer',
          type : 'GET',
          data : {
            pageNo : 1 //表示第一页
          },
          success : function(data){
            var jsonArray = JSON.parse(data).list;
            var outStr1 = "";
            var outStr2 = "";
            var outStr3 = "";
            $.each(jsonArray,function(i,value){
              var jsonCell = value;
              var select1 = "";
              var select2 = "";
              var select0 = "";
              var timeFormate = dateFormat(jsonCell.addtime);
              if(jsonCell.examine == "0"){
                select0 = "selected";
              } else if(jsonCell.examine == "1"){
                select1 = "selected";
              } else {
                select2 = "selected";
              }
              outStr1 += "<tr><td class='addRName'>" + jsonCell.name + "</td><td>" + jsonCell.username + "</td><td>" + timeFormate + "</td><td><input type='button' name='' class='table-input-view restaurant-infor-view' value='查看'><input type='button' name='' class='table-input-view restaurant-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select restaurant-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
            });
            $("#restaurant_add").html(outStr1);
          },
          error : function(){
            console.log("服务器被天狗吃掉了,获取数据失败~");
            // 0 未处理  1 未通过  2 通过
            var data = '{"list":[{"name":"餐馆","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"餐馆","username":"某某某","addtime":"2017-08-14","examine":"1"},{"name":"餐馆","username":"某某某","addtime":"2017-08-14","examine":"2"},{"name":"餐馆","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"餐馆","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"餐馆","username":"某某某","addtime":"2017-08-14","examine":"0"}]}';
            var jsonArray = JSON.parse(data).list;
            var outStr1 = "";
            var outStr2 = "";
            var outStr3 = "";
            $.each(jsonArray,function(i,value){
              var jsonCell = value;
              var select1 = "";
              var select2 = "";
              var select0 = "";
              if(jsonCell.examine == "0"){
                select0 = "selected";
              } else if(jsonCell.examine == "1"){
                select1 = "selected";
              } else {
                select2 = "selected";
              }
              outStr1 += "<tr><td class='addRName'>" + jsonCell.name + "</td><td>" + jsonCell.username + "</td><td>" + jsonCell.addtime + "</td><td><input type='button' name='' class='table-input-view restaurant-infor-view' value='查看'><input type='button' name='' class='table-input-view restaurant-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select restaurant-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
            });
            $("#restaurant_add").html(outStr1);
          }
        });
      } else {
        $.ajax({
          url : 'AddExamine/showExamineh',
          type : 'GET',
          data : {
            pageNo : 1 //表示第一页
          },
          success : function(data){
            var jsonArray = JSON.parse(data).list;
            var outStr1 = "";
            var outStr2 = "";
            var outStr3 = "";
            $.each(jsonArray,function(i,value){
              var jsonCell = value;
              var select1 = "";
              var select2 = "";
              var select0 = "";
              var timeFormate = dateFormat(jsonCell.addtime);
              if(jsonCell.examine == "0"){
                select0 = "selected";
              } else if(jsonCell.examine == "1"){
                select1 = "selected";
              } else {
                select2 = "selected";
              }
              outStr1 += "<tr><td class='addHName'>" + jsonCell.hotelname + "</td><td>" + jsonCell.username + "</td><td>" + timeFormate + "</td><td><input type='button' name='' class='table-input-view hotel-infor-view' value='查看'><input type='button' name='' class='table-input-view hotel-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select hotel-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
            });
            $("#hotel_add").html(outStr1);
          },
          error : function(){
            console.log("服务器被天狗吃掉了,获取数据失败~");
            // 0 未处理  1 未通过  2 通过
            var data = '{"list":[{"name":"住宿","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"住宿","username":"某某某","addtime":"2017-08-14","examine":"1"},{"name":"住宿","username":"某某某","addtime":"2017-08-14","examine":"2"},{"name":"住宿","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"住宿","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"住宿","username":"某某某","addtime":"2017-08-14","examine":"0"}]}';
            var jsonArray = JSON.parse(data).list;
            var outStr1 = "";
            var outStr2 = "";
            var outStr3 = "";
            $.each(jsonArray,function(i,value){
              var jsonCell = value;
              var select1 = "";
              var select2 = "";
              var select0 = "";
              if(jsonCell.examine == "0"){
                select0 = "selected";
              } else if(jsonCell.examine == "1"){
                select1 = "selected";
              } else {
                select2 = "selected";
              }
              outStr1 += "<tr><td class='addHName'>" + jsonCell.name + "</td><td>" + jsonCell.username + "</td><td>" + jsonCell.addtime + "</td><td><input type='button' name='' class='table-input-view hotel-infor-view' value='查看'><input type='button' name='' class='table-input-view hotel-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select hotel-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
            });
            $("#hotel_add").html(outStr1);
          }
        });
      }
    });
    // 回退
    $("body").on("click",".back-icon",function() {
      $(".infor-of-table").eq(0).css("display", "none");
      $(".add-message-tab").eq(0).css("display", "block");
    });
    $("body").on("click",".back-icon-spot",function() {
      $(".infor-of-table").eq(1).css("display", "none");
      $(".add-message-tab").eq(1).css("display", "block");
    });
    $("body").on("click",".back-icon-res",function() {
      $(".infor-of-table").eq(2).css("display", "none");
      $(".add-message-tab").eq(2).css("display", "block");
    });
    $("body").on("click",".back-icon-hotel",function() {
      $(".infor-of-table").eq(3).css("display", "none");
      $(".add-message-tab").eq(3).css("display", "block");
    });

    // 提交审核
    $("body").on("click",".country-result-sub",function() {
      x = $(this).index(".country-result-sub");
      $(this).val("已提交");
      var thisCN = $(".addCName").eq(x).html();
      var thisState = $(".country-select").eq(x).val();
      $.ajax({
        url : 'aaa',
        type : 'GET',
        data : {
          name : thisCN,
          examine : thisState
        },
        success : function(){
          console.log("成功更新数据~")
        },
        error : function(){
          console.log("服务器连接失败，数据更新失败")
        }
      })
    });
    $("body").on("click",".spot-result-sub",function() {
      x = $(this).index(".spot-result-sub");
      $(this).val("已提交");
      var thisSN = $(".addSName").eq(x).html();
      var thisState = $(".spot-select").eq(x).val();
      $.ajax({
        url : 'aaa',
        type : 'GET',
        data : {
          name : thisSN,
          examine : thisState
        },
        success : function(){
          console.log("成功更新数据~")
        },
        error : function(){
          console.log("服务器连接失败，数据更新失败")
        }
      })
    });
    $("body").on("click",".restaurant-result-sub",function() {
      x = $(this).index(".restaurant-result-sub");
      $(this).val("已提交");
      var thisRN = $(".addRName").eq(x).html();
      var thisState = $(".restaurant-select").eq(x).val();
      $.ajax({
        url : 'aaa',
        type : 'GET',
        data : {
          name : thisRN,
          examine : thisState
        },
        success : function(){
          console.log("成功更新数据~")
        },
        error : function(){
          console.log("服务器连接失败，数据更新失败")
        }
      })
    });
    $("body").on("click",".hotel-result-sub",function() {
      x = $(this).index(".hotel-result-sub");
      $(this).val("已提交");
      var thisHN = $(".addHName").eq(x).html();
      var thisState = $(".hotel-select").eq(x).val();
      $.ajax({
        url : 'aaa',
        type : 'GET',
        data : {
          name : thisHN,
          examine : thisState
        },
        success : function(){
          console.log("成功更新数据~")
        },
        error : function(){
          console.log("服务器连接失败，数据更新失败")
        }
      })
    });

    // 查看添加的乡村
    $("body").on("click",".country-infor-view",function(){
      x = $(this).index(".country-infor-view");
      // console.log(x);
      var thisCN = $(".addCName").eq(x).html();
      // console.log(thisCN);
      $(".add-message-tab").eq(0).css("display", "none");
      $(".infor-of-table").eq(0).css("display", "block");
      $.ajax({
        url : 'AddExamine/showsExamine',
        type : 'GET',
        data : {
          name : thisCN
        },
        success : function(data){
          var jsonArray = JSON.parse(data).list;
          var jsonArray1 = JSON.parse(data).list1;
          var jsonArray2 = JSON.parse(data).list2;
          var jsonArray3 = JSON.parse(data).list3;
          var outStr = "";
          var outStr1 = "";
          var outStr2 = "";
          var outStr3 = "";
          $.each(jsonArray3,function(i,value){
            var oneTC = value;
            outStr1 += "<div class='country-special-box'><img src='" + oneTC.src + "'><span>" + oneTC.name + "</span></div>"
          });
          $.each(jsonArray1,function(i,value){
            var oneZP = value;
            outStr2 += "<img src='" + oneZP + "'>";
          });
          $.each(jsonArray2,function(i,value){
            var oneSP = value;
            outStr3 += "<div class='li-context-video-box' style='margin-bottom:25px;'><video width='100%' height='100%' controls><source src='" + oneSP + "'  type='video/mp4'></video></div>";
          });
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            outStr = "<h2 class='text-center table-font-family'><span class='back-icon fa fa-arrow-circle-left fa-fw'></span>" + jsonCell.name + "</h2><div id='pie_chart_div' class='templatemo-chart'><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>简&emsp;&emsp;介：</li><li class='ul-right-context table-font-family'>" + jsonCell.introduce + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>隶&emsp;&emsp;属：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.location + "</span></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>封&emsp;&emsp;面：</li><li class='ul-right-context'><div class='li-context-img-box'><img src='" + jsonCell.mianPic + "' class='img-auto'></div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>特&emsp;&emsp;产：</li><li class='ul-right-context table-font-family'>" + outStr1 + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>照&ensp;片&ensp;集：</li><li class='ul-right-context'><div class='li-context-imgs-box'>" + outStr2 + "</div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>视&emsp;&emsp;频：</li><li class='ul-right-context'>" + outStr3 + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>文&emsp;&emsp;化：</li><li class='ul-right-context table-font-family'>" + jsonCell.culture + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>活&emsp;&emsp;动：</li><li class='ul-right-context table-font-family'>" + jsonCell.activities + "</li></ul></div>"
          });
          $("#add_country_infor").html(outStr);
        },
        error : function(){
          console.log("服务器被天狗吃掉了,获取数据失败~");
          // 0 未处理  1 未通过  2 通过
          var data = '{"list2":["mp4_video.mp4","mp4_video.mp4"],"list3":[{"name":"安吉白茶","src":"images/person.jpg"},{"name":"白茶","src":"images/person.jpg"}],"list1":["images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg"],"list":[{"location":"浙江省安吉县","name":"高家堂村","introduce":"高家堂村位于浙江省安吉县山川乡南端，境内植被良好，山清水秀，是浙江省第一批全面小唐建设示范村。总人口826人，2003年人均纯收入7152元。该村先后被评为201c省级全面小康建设示范村201d、201c省级绿化示范村201d、201c省级文明村201d、201c全国绿色建筑创新（二等奖）201d等称号，2000年以来，村里坚持发展生态经济，先后投入了380多万元。山林面积8456亩，生态环境良好，竹类资源非常丰富，其中毛竹林4639亩，年产毛竹20余万支。","activities":"暂未说明","mianPic":"images/sunset.jpg","culture":"为了这大自然赋予的秀丽景致不受丝毫污染，据了解，村里请来省里专家，投资40多万元引进了美国最新的阿科蔓技术，利用人工水草的微生物自然吸附，使得所有生活污水得到净化处理，综合利用。现在原本又黑又臭的污水经过处理有成了可直接灌溉的三类水。"}]}';
          var jsonArray = JSON.parse(data).list;
          var jsonArray1 = JSON.parse(data).list1;
          var jsonArray2 = JSON.parse(data).list2;
          var jsonArray3 = JSON.parse(data).list3;
          var outStr = "";
          var outStr1 = "";
          var outStr2 = "";
          var outStr3 = "";
          $.each(jsonArray3,function(i,value){
            var oneTC = value;
            outStr1 += "<div class='country-special-box'><img src='" + oneTC.src + "'><span>" + oneTC.name + "</span></div>"
          });
          $.each(jsonArray1,function(i,value){
            var oneZP = value;
            outStr2 += "<img src='" + oneZP + "'>";
          });
          $.each(jsonArray2,function(i,value){
            var oneSP = value;
            outStr3 += "<div class='li-context-video-box' style='margin-bottom:25px;'><video width='100%' height='100%' controls><source src='" + oneSP + "'  type='video/mp4'></video></div>";
          });
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            outStr = "<h2 class='text-center table-font-family'><span class='back-icon fa fa-arrow-circle-left fa-fw'></span>" + jsonCell.name + "</h2><div id='pie_chart_div' class='templatemo-chart'><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>简&emsp;&emsp;介：</li><li class='ul-right-context table-font-family'>" + jsonCell.introduce + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>隶&emsp;&emsp;属：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.location + "</span></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>封&emsp;&emsp;面：</li><li class='ul-right-context'><div class='li-context-img-box'><img src='" + jsonCell.mianPic + "' class='img-auto'></div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>特&emsp;&emsp;产：</li><li class='ul-right-context table-font-family'>" + outStr1 + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>照&ensp;片&ensp;集：</li><li class='ul-right-context'><div class='li-context-imgs-box'>" + outStr2 + "</div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>视&emsp;&emsp;频：</li><li class='ul-right-context'>" + outStr3 + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>文&emsp;&emsp;化：</li><li class='ul-right-context table-font-family'>" + jsonCell.culture + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>活&emsp;&emsp;动：</li><li class='ul-right-context table-font-family'>" + jsonCell.activities + "</li></ul></div>"
          });
          $("#add_country_infor").html(outStr);
        }
      });
    });
    // 查看添加的景点
    $("body").on("click",".spot-infor-view",function(){
      x = $(this).index(".spot-infor-view");
      // console.log(x);
      var thisCN = $(".addSName").eq(x).html();
      console.log(thisCN);
      $(".add-message-tab").eq(1).css("display", "none");
      $(".infor-of-table").eq(1).css("display", "block");
      $.ajax({
        url : 'AddExamine/showsSExamine',
        type : 'GET',
        data : {
          name : thisCN
        },
        success : function(data){
          var jsonArray = JSON.parse(data).list;
          var outStr = "";
          var outStr1 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            $.each(jsonCell.pices,function(i,value){
              var oneZP = value;
              outStr1 += "<img src='" + oneZP + "'>";
            });
            outStr = "<h2 class='text-center table-font-family'><span class='back-icon-spot fa fa-arrow-circle-left fa-fw'></span>" + jsonCell.name + "</h2><div id='pie_chart_div' class='templatemo-chart'><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>简&emsp;&emsp;介：</li><li class='ul-right-context table-font-family'>" + jsonCell.synopsis + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>隶&emsp;&emsp;属：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.location + "</span></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>门&emsp;&emsp;票：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.perprice + "</span> RMB/人</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>联系方式：</li><li class='ul-right-context table-font-family'>" + jsonCell.cinformation + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>详细地址：</li><li class='ul-right-context table-font-family'>" + jsonCell.address + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>封&emsp;&emsp;面：</li><li class='ul-right-context'><div class='li-context-img-box'><img src='" + jsonCell.cover + "' class='img-auto'></div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>照&ensp;片&ensp;集：</li><li class='ul-right-context'><div class='li-context-imgs-box'>" + outStr1 + "</div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>视&emsp;&emsp;频：</li><li class='ul-right-context'><div class='li-context-video-box'><video width='100%' height='100%' controls><source src='" + jsonCell.video + "'  type='video/mp4'></video></div></li></ul></div>";
          });
          $("#add_spot_infor").html(outStr);
        },
        error : function(){
          console.log("服务器被天狗吃掉了,获取数据失败~");
        }
      });
    });
    // 查看添加的餐馆
    $("body").on("click",".restaurant-infor-view",function(){
      x = $(this).index(".restaurant-infor-view");
      // console.log(x);
      var thisRN = $(".addRName").eq(x).html();
      console.log(thisRN);
      $(".add-message-tab").eq(2).css("display", "none");
      $(".infor-of-table").eq(2).css("display", "block");
      $.ajax({
        url : 'AddExamine/showsRExamine',
        type : 'GET',
        data : {
          name : thisRN
        },
        success : function(data){
          var jsonArray = JSON.parse(data).list;
          var outStr = "";
          var outStr1 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            $.each(jsonCell.pices,function(i,value){
              var oneZP = value;
              outStr1 += "<img src='" + oneZP + "'>";
            });
            outStr = "<h2 class='text-center table-font-family'><span class='back-icon-res fa fa-arrow-circle-left fa-fw'></span>" + jsonCell.name + "</h2><div id='pie_chart_div' class='templatemo-chart'><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>简&emsp;&emsp;介：</li><li class='ul-right-context table-font-family'>" + jsonCell.synopsis + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>隶&emsp;&emsp;属：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.location + "</span></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>门&emsp;&emsp;票：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.perprice + "</span> RMB/人</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>联系方式：</li><li class='ul-right-context table-font-family'>" + jsonCell.cinformation + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>详细地址：</li><li class='ul-right-context table-font-family'>" + jsonCell.address + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>封&emsp;&emsp;面：</li><li class='ul-right-context'><div class='li-context-img-box'><img src='" + jsonCell.cover + "' class='img-auto'></div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>照&ensp;片&ensp;集：</li><li class='ul-right-context'><div class='li-context-imgs-box'>" + outStr1 + "</div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>视&emsp;&emsp;频：</li><li class='ul-right-context'><div class='li-context-video-box'><video width='100%' height='100%' controls><source src='" + jsonCell.video + "'  type='video/mp4'></video></div></li></ul></div>";
          });
          $("#add_restaurant_infor").html(outStr);
        },
        error : function(){
          console.log("服务器被天狗吃掉了,获取数据失败~");
          // 0 未处理  1 未通过  2 通过
          var data = '{"list":[{"name":"餐馆","synopsis":"更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后差三分球放弃人让让3分4条认同和更热全国很一般褂皇太","location":"畈山乡","cover":"images/sunset.jpg","perprice":"89","pices":["images/sunset.jpg","images/sunset.jpg","images/sunset.jpg","images/sunset.jpg","images/sunset.jpg","images/sunset.jpg","images/sunset.jpg"],"video":"mp4_video.mp4","cinformation":"15058798888","address":"认同和更热全国很一般褂皇太后位"}]}';
          var jsonArray = JSON.parse(data).list;
          var outStr = "";
          var outStr1 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            $.each(jsonCell.pices,function(i,value){
              var oneZP = value;
              outStr1 += "<img src='" + oneZP + "'>";
            });
            outStr = "<h2 class='text-center table-font-family'><span class='back-icon-res fa fa-arrow-circle-left fa-fw'></span>" + jsonCell.name + "</h2><div id='pie_chart_div' class='templatemo-chart'><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>简&emsp;&emsp;介：</li><li class='ul-right-context table-font-family'>" + jsonCell.synopsis + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>隶&emsp;&emsp;属：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.location + "</span></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>门&emsp;&emsp;票：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.perprice + "</span> RMB/人</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>联系方式：</li><li class='ul-right-context table-font-family'>" + jsonCell.cinformation + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>详细地址：</li><li class='ul-right-context table-font-family'>" + jsonCell.address + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>封&emsp;&emsp;面：</li><li class='ul-right-context'><div class='li-context-img-box'><img src='" + jsonCell.cover + "' class='img-auto'></div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>照&ensp;片&ensp;集：</li><li class='ul-right-context'><div class='li-context-imgs-box'>" + outStr1 + "</div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>视&emsp;&emsp;频：</li><li class='ul-right-context'><div class='li-context-video-box'><video width='100%' height='100%' controls><source src='" + jsonCell.video + "'  type='video/mp4'></video></div></li></ul></div>";
          });
          $("#add_restaurant_infor").html(outStr);
        }
      });
    });
    // 查看添加的住宿
    $("body").on("click",".hotel-infor-view",function(){
      x = $(this).index(".hotel-infor-view");
      // console.log(x);
      var thisHN = $(".addHName").eq(x).html();
      console.log(thisHN);
      $(".add-message-tab").eq(3).css("display", "none");
      $(".infor-of-table").eq(3).css("display", "block");
      $.ajax({
        url : 'AddExamine/showsHExamine',
        type : 'GET',
        data : {
          hname : thisHN
        },
        success : function(data){
          var jsonArray = JSON.parse(data).list;
          var outStr = "";
          var outStr1 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            $.each(jsonCell.pices,function(i,value){
              var oneZP = value;
              outStr1 += "<img src='" + oneZP + "'>";
            });
            outStr = "<h2 class='text-center table-font-family'><span class='back-icon-hotel fa fa-arrow-circle-left fa-fw'></span>" + jsonCell.hotelname + "</h2><div id='pie_chart_div' class='templatemo-chart'><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>简&emsp;&emsp;介：</li><li class='ul-right-context table-font-family'>" + jsonCell.introduce + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>隶&emsp;&emsp;属：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.location + "</span></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>门&emsp;&emsp;票：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.lowPrice + "</span> RMB/人</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>联系方式：</li><li class='ul-right-context table-font-family'>" + jsonCell.phone + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>详细地址：</li><li class='ul-right-context table-font-family'>" + jsonCell.detailLocation + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>封&emsp;&emsp;面：</li><li class='ul-right-context'><div class='li-context-img-box'><img src='" + jsonCell.mainPic + "' class='img-auto'></div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>照&ensp;片&ensp;集：</li><li class='ul-right-context'><div class='li-context-imgs-box'>" + outStr1 + "</div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>视&emsp;&emsp;频：</li><li class='ul-right-context'><div class='li-context-video-box'><video width='100%' height='100%' controls><source src='" + jsonCell.video + "'  type='video/mp4'></video></div></li></ul></div>";
          });
          $("#add_hotel_infor").html(outStr);
        },
        error : function(){
          console.log("服务器被天狗吃掉了,获取数据失败~");
          // 0 未处理  1 未通过  2 通过
          var data = '{"list":[{"hotelname":"住宿","introduce":"更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后位 差三分球放弃人让让3分4条认同和更热全国很一般褂皇太后差三分球放弃人让让3分4条认同和更热全国很一般褂皇太","location":"畈山乡","mainPic":"images/sunset.jpg","lowPrice":"89","pices":["images/sunset.jpg","images/sunset.jpg","images/sunset.jpg","images/sunset.jpg","images/sunset.jpg","images/sunset.jpg","images/sunset.jpg"],"video":"mp4_video.mp4","phone":"15058798888","detailLocation":"认同和更热全国很一般褂皇太后位"}]}';
          var jsonArray = JSON.parse(data).list;
          var outStr = "";
          var outStr1 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            $.each(jsonCell.pices,function(i,value){
              var oneZP = value;
              outStr1 += "<img src='" + oneZP + "'>";
            });
            outStr = "<h2 class='text-center table-font-family'><span class='back-icon-hotel fa fa-arrow-circle-left fa-fw'></span>" + jsonCell.hotelname + "</h2><div id='pie_chart_div' class='templatemo-chart'><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>简&emsp;&emsp;介：</li><li class='ul-right-context table-font-family'>" + jsonCell.introduce + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>隶&emsp;&emsp;属：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.location + "</span></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>门&emsp;&emsp;票：</li><li class='ul-right-context table-font-family'><span  class='table-font-family'>" + jsonCell.lowPrice + "</span> RMB/人</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>联系方式：</li><li class='ul-right-context table-font-family'>" + jsonCell.phone + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>详细地址：</li><li class='ul-right-context table-font-family'>" + jsonCell.detailLocation + "</li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>封&emsp;&emsp;面：</li><li class='ul-right-context'><div class='li-context-img-box'><img src='" + jsonCell.mainPic + "' class='img-auto'></div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>照&ensp;片&ensp;集：</li><li class='ul-right-context'><div class='li-context-imgs-box'>" + outStr1 + "</div></li></ul><ul class='infor-ul clear'><li class='ul-left-title table-font-family'>视&emsp;&emsp;频：</li><li class='ul-right-context'><div class='li-context-video-box'><video width='100%' height='100%' controls><source src='" + jsonCell.video + "'  type='video/mp4'></video></div></li></ul></div>";
          });
          $("#add_hotel_infor").html(outStr);
        }
      });
    });

    $(function(){ 
      $.ajax({
        url : 'AddExamine/showExamine',
        type : 'GET',
        data : {
          inforType : "country",
          pageNo : 1 //表示第一页
        },
        success : function(data){
          var jsonArray = JSON.parse(data).list;
          var outStr1 = "";
          var outStr2 = "";
          var outStr3 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            var select1 = "";
            var select2 = "";
            var select0 = "";
            var timeFormate = dateFormat(jsonCell.addtime);
            if(jsonCell.examine == "0"){
              select0 = "selected";
            } else if(jsonCell.examine == "1"){
              select1 = "selected";
            } else {
              select2 = "selected";
            }
            outStr1 += "<tr><td class='addCName'>" + jsonCell.name + "</td><td>" + jsonCell.username + "</td><td>" + timeFormate + "</td><td><input type='button' name='' class='table-input-view country-infor-view' value='查看'><input type='button' name='' class='table-input-view country-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select country-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
          });
          $("#country_add").html(outStr1);
        },
        error : function(){
          console.log("服务器被天狗吃掉了,获取数据失败~");
          // 0 未处理  1 未通过  2 通过
          var data = '{"list":[{"name":"长林垓村1","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"长林垓村2","username":"某某某","addtime":"2017-08-14","examine":"1"},{"name":"长林垓村3","username":"某某某","addtime":"2017-08-14","examine":"2"},{"name":"长林垓村4","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"长林垓村5","username":"某某某","addtime":"2017-08-14","examine":"0"},{"name":"长林垓村6","username":"某某某","addtime":"2017-08-14","examine":"0"}]}';
          var jsonArray = JSON.parse(data).list;
          var outStr1 = "";
          var outStr2 = "";
          var outStr3 = "";
          $.each(jsonArray,function(i,value){
            var jsonCell = value;
            var select1 = "";
            var select2 = "";
            var select0 = "";
            if(jsonCell.examine == "0"){
              select0 = "selected";
            } else if(jsonCell.examine == "1"){
              select1 = "selected";
            } else {
              select2 = "selected";
            }
            outStr1 += "<tr><td class='addCName'>" + jsonCell.name + "</td><td>" + jsonCell.username + "</td><td>" + jsonCell.addtime + "</td><td><input type='button' name='' class='table-input-view country-infor-view' value='查看'><input type='button' name='' class='table-input-view country-result-sub' value='提交审查结果' style='margin-left:10px;outline:none;'></td><td><select class='table-select country-select'><option value='0' " + select0 + ">未处理</option><option value='1' " + select1 + ">未通过</option><option value='2' " + select2 + ">通过</option></select></td></tr>";
          });
          $("#country_add").html(outStr1);
        }
      });
    });


  </script>
</body>

</html>
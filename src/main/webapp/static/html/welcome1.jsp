<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .welcome .layui-card {border:1px solid #f2f2f2;border-radius:5px;}
    .welcome .icon {margin-right:10px;color:#1aa094;}
    .welcome .icon-cray {color:#ffb800 !important;}
    .welcome .icon-blue {color:#1e9fff !important;}
    .welcome .icon-tip {color:#ff5722 !important;}
    .welcome .layuimini-qiuck-module {text-align:center;margin-top:10px}
    .welcome .layuimini-qiuck-module a i {display:inline-block;width:100%;height:60px;line-height:60px;text-align:center;border-radius:2px;font-size:30px;background-color:#F8F8F8;color:#333;transition:all .3s;-webkit-transition:all .3s;}
    .welcome .layuimini-qiuck-module a cite {position:relative;top:2px;display:block;color:#666;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;font-size:14px;}
    .welcome .welcome-module {width:100%;height:210px;}
    .welcome .panel {background-color:#fff;border:1px solid transparent;border-radius:3px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);box-shadow:0 1px 1px rgba(0,0,0,.05)}
    .welcome .panel-body {padding:10px}
    .welcome .panel-title {margin-top:0;margin-bottom:0;font-size:12px;color:inherit}
    .welcome .label {display:inline;padding:.2em .6em .3em;font-size:75%;font-weight:700;line-height:1;color:#fff;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25em;margin-top:.3em;}
    .welcome .layui-red {color:red}
    .welcome .main_btn > p {height:40px;}
    .welcome .layui-bg-number {background-color:#F8F8F8;}
    .welcome .layuimini-notice:hover {background:#f6f6f6;}
    .welcome .layuimini-notice {padding:7px 16px;clear:both;font-size:12px !important;cursor:pointer;position:relative;transition:background 0.2s ease-in-out;}
    .welcome .layuimini-notice-title,.layuimini-notice-label {padding-right:70px !important;text-overflow:ellipsis !important;overflow:hidden !important;white-space:nowrap !important;}
    .welcome .layuimini-notice-title {line-height:28px;font-size:14px;}
    .welcome .layuimini-notice-extra {position:absolute;top:50%;margin-top:-8px;right:16px;display:inline-block;height:16px;color:#999;}
</style>
<div class="layuimini-container layuimini-page-anim">
    <div class="layuimini-main welcome">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md8">
                <div class="layui-row layui-col-space15">
                    <div class="layui-col-md6">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-warning icon"></i>数据统计</div>
                            <div class="layui-card-body">
                                <div class="welcome-module">
                                    <div class="layui-row layui-col-space10">
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-blue">实时</span>
                                                        <h5>用户统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins"></h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-cyan">实时</span>
                                                        <h5>商品统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins"></h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-orange">实时</span>
                                                        <h5>登陆人数统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins"><%out.print(application.getAttribute("count"));%></h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-green">实时</span>
                                                        <h5>订单统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">422</h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-credit-card icon icon-blue"></i>快捷入口</div>
                            <div class="layui-card-body">
                                <div class="welcome-module">
<%--                                    <div class="layui-row layui-col-space10 layuimini-qiuck">--%>
<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <button onclick="ff()">--%>
<%--                                                <i class="fa fa-book"></i>--%>
<%--                                                <cite>菜单管理</cite>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <a href="javascript:;" layuimini-content-href="page/setting.html" data-title="系统设置" data-icon="fa fa-gears">--%>
<%--                                                <i class="fa fa-gears"></i>--%>
<%--                                                <cite>系统设置</cite>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <a href="javascript:;" layuimini-content-href="page/table.html" data-title="表格示例" data-icon="fa fa-file-text">--%>
<%--                                                <i class="fa fa-file-text"></i>--%>
<%--                                                <cite>表格示例</cite>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="table.html" data-title="图标列表" data-icon="fa fa-file-text">
                                                <i class="fa fa-file-text"></i>
                                                <cite>租用</cite>
                                            </a>
                                        </div>
<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <a href="javascript:;" layuimini-content-href="page/form.html" data-title="表单示例" data-icon="fa fa-calendar">--%>
<%--                                                <i class="fa fa-archive"></i>--%>
<%--                                                <cite>表单示例</cite>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                        <div class="layui-col-xs3 layuimini-qiuck-module">--%>
<%--                                            <a href="javascript:;" layuimini-content-href="page/404.html" data-title="404页面" data-icon="fa fa-hourglass-end">--%>
<%--                                                <i class="fa fa-hourglass-end"></i>--%>
<%--                                                <cite>404页面</cite>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="layui-col-md12">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-line-chart icon"></i>报表统计</div>
                            <div class="layui-card-body">
                                <div id="echarts-records" style="width: 100%;min-height:500px"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="layui-col-md4">

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-bullhorn icon icon-tip"></i>系统公告</div>
                    <div class="layui-card-body layui-text">
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">特斯拉车型上架公告</div>
                            <div class="layuimini-notice-extra">2022-02-08 12:00</div>
                            <div class="layuimini-notice-content layui-hide">
                                今通过和特斯拉官方的合作商讨，<br>
                                现决定上架比亚迪的新款C1车型，<br>
                                平台个用户可以通过智能汽车出  <br>
                                租管理系统对该车型进行出租。<br>
<%--                                界面足够简洁清爽。<br>--%>
<%--                                一个接口几行代码而已直接初始化整个框架，无需复杂操作。<br>--%>
<%--                                支持多tab，可以打开多窗口。<br>--%>
<%--                                支持无限级菜单和对font-awesome图标库的完美支持。<br>--%>
<%--                                失效以及报错菜单无法直接打开，并给出弹出层提示完美的线上用户体验。<br>--%>
<%--                                url地址hash定位，可以清楚看到当前tab的地址信息。<br>--%>
<%--                                刷新页面会保留当前的窗口，并且会定位当前窗口对应左侧菜单栏。<br>--%>
<%--                                移动端的友好支持。<br>--%>
                            </div>
                        </div>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">比亚迪车型上架公告</div>
                            <div class="layuimini-notice-extra">2021-12-20 08:00</div>
                            <div class="layuimini-notice-content layui-hide">
                                今通过和比亚迪官方的合作商讨，<br>
                                现决定上架比亚迪的新款C1车型，<br>
                                平台个用户可以通过智能汽车出  <br>
                                租管理系统对该车型进行出租。<br>
<%--                                支持多tab，可以打开多窗口。<br>--%>
<%--                                支持无限级菜单和对font-awesome图标库的完美支持。<br>--%>
<%--                                失效以及报错菜单无法直接打开，并给出弹出层提示完美的线上用户体验。<br>--%>
<%--                                url地址hash定位，可以清楚看到当前tab的地址信息。<br>--%>
<%--                                刷新页面会保留当前的窗口，并且会定位当前窗口对应左侧菜单栏。<br>--%>
<%--                                移动端的友好支持。<br>--%>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-fire icon"></i>版本信息</div>
                    <div class="layui-card-body layui-text">
                        <table class="layui-table">
                            <colgroup>
                                <col width="100">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <td>系统名称</td>
                                <td>
                                    智能汽车出租管理系统
                                </td>
                            </tr>
                            <tr>
                                <td>当前版本</td>
                                <td>v1.0.1</td>
                            </tr>
                            <tr>
                                <td>主要特色</td>
                                <td>零门槛 / 响应式 / 清爽 / 极简</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-paper-plane-o icon"></i>作者心语</div>
                    <div class="layui-card-body layui-text layadmin-text">
                        <p>技术交流</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="../js/jquery.js" charset="utf-8"></script>
<script>
    layui.use(['layer','echarts'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            echarts = layui.echarts;

        /**
         * 查看公告信息
         **/
        $('body').on('click', '.layuimini-notice', function () {
            var title = $(this).children('.layuimini-notice-title').text(),
                noticeTime = $(this).children('.layuimini-notice-extra').text(),
                content = $(this).children('.layuimini-notice-content').html();
            var html = '<div style="padding:15px 20px; text-align:justify; line-height: 22px;border-bottom:1px solid #e2e2e2;background-color: #2f4056;color: #ffffff">\n' +
                '<div style="text-align: center;margin-bottom: 20px;font-weight: bold;border-bottom:1px solid #718fb5;padding-bottom: 5px"><h4 class="text-danger">' + title + '</h4></div>\n' +
                '<div style="font-size: 12px">' + content + '</div>\n' +
                '</div>\n';
            parent.layer.open({
                type: 1,
                title: '系统公告' + '<span style="float: right;right: 1px;font-size: 12px;color: #b1b3b9;margin-top: 1px">' + noticeTime + '</span>',
                area: '300px;',
                shade: 0.8,
                id: 'layuimini-notice',
                btn: ['查看', '取消'],
                btnAlign: 'c',
                moveType: 1,
                content: html,
                success: function (layero) {
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: 'https://gitee.com/zhongshaofa/layuimini',
                        target: '_blank'
                    });
                }
            });
        });
        $.ajax({
            url:'countBrand',
            type: "post",
            success:function (data) {
                console.log(data);
                countBrand(data);
            }
        });
        function countBrand(datacount) {
            console.log(datacount)
            var echartsRecords = echarts.init(document.getElementById('echarts-records'), 'walden');
            var optionRecords = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a}<br/>{b}:{c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    left: 'left'
                },
                series: [
                    {
                        name: 'brand',
                        type: 'pie',
                        radius: ['40%', '70%'],
                        avoidLabelOverlap: false,
                        itemStyle: {
                            borderRadius: 10,
                            borderColor: '#fff',
                            borderWidth: 2
                        },
                        label: {
                            show: false,
                            position: 'center'
                        },
                        emphasis: {
                            label: {
                                show: true,
                                fontSize: '40',
                                fontWeight: 'bold'
                            }
                        },
                        labelLine: {
                            show: false
                        },
                        data:[{"name":"奔驰","value":141},{"name":"丰田","value":153},{"name":"路虎","value":147},{"name":"比亚迪","value":156},{"name":"特斯拉","value":140},{"name":"宝马","value":135},{"name":"奥迪","value":148}]
                    }
                ]
            };
            echartsRecords.setOption(optionRecords);
        }

    });
</script>

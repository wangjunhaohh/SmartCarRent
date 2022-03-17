<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../lib/layui-v2.5.5/css/layui.css" media="all">
</head>
<body>
<div style="padding: 20px;">

    <form class="layui-form" id="frmAddStu">
        <div class="layui-row">
            <div class="layui-col-sm8">
                <div class="layui-form-item">
                    <label class="layui-form-label">编号</label>
                    <div class="layui-input-block">
                        <input type="text" name="id" id="id" placeholder="请输入编号" class="layui-input" readonly value=""
                               lay-verify="required">
                    </div>
                </div>
                <div class="layui-form-item" >
                    <label class="layui-form-label">起始时间</label>
                    <div class="layui-input-block">
                        <input type="text" name="starttime" id="starttime" class="layui-input" value="">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">结束时间</label>
                    <div class="layui-input-block">
                        <input type="text" name="endtime" id="endtime"  class="layui-input" value="">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-block">
                        <input type="text" name="price" id="price"  class="layui-input" value="0">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn" lay-filter="ok" lay-submit="" id="btnAdd">租赁</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<script src="../lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script type="text/javascript">
    function url(){
        var  str = window.location.href;
        str1 = str.split("?")[1];
        str2 = str1.split("=")[1];
        return str2
    }
    document.getElementById('id').value = url();
</script>
<script>
    layui.use(['form', 'laydate'], function () {
        var form = layui.form
        var laydate = layui.laydate
        var $ = layui.jquery
        form.render();
        var startTime = laydate.render({
            elem: '#starttime',
            type:'datetime',
            min:0,
            done: function(value, date) {
                // 结束时间大于开始时间
                enddate.config.min ={
                    year:date.year,
                    month:date.month-1, //关键
                    date: date.date,
                    hours: 0,
                    minutes: 0,
                    seconds : 0
                };
                var start = new Date(value)
                var end = new Date(document.getElementById('endtime').value)
                var time = (end.getTime()-start.getTime())/(1000*60*60*24)
                if (start!=NaN&&end!=NaN){
                    $.ajax({
                        type : 'get',
                        data: $("#id").serialize(),
                        url:'rentCar',
                        success(price){
                            document.getElementById('price').value = time*price;
                        }
                    })
                }

            }
        });

        var enddate = laydate.render({
            elem: '#endtime',
            type:'datetime',
            min: 0,
            done : function (value,date) {
                startTime.config.max={
                    year:date.year,
                    month:date.month-1,
                    date: date.date,
                    hours: 0,
                    minutes: 0,
                    seconds : 0
                }
                var start = new Date(document.getElementById('starttime').value)
                var end = new Date(value)
                var time = (end.getTime()-start.getTime())/(1000*60*60*24)
                if (start!=NaN&&end!=NaN){
                    $.ajax({
                        type : 'get',
                        data: $("#id").serialize(),
                        url:'rentCar',
                        success(price){
                            document.getElementById('price').value = time*price;
                        }
                    })
                }

            }
        });
        form.on('submit(ok)', function () {
            var formdata = $("#frmAddStu").serialize()
            $.ajax({
                type: "post",
                async:false,
                url: 'rentResult',//提交给谁处理
                data: $("#id").serialize(),
                dataType: "json",
                success(data){
                    if(data == "1"){
                        layer.msg('租用成功', {icon: 5, time: 1000}, function () {
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                    }
                }
            });
        });
    })
</script>
</body>
</html>
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
                    <label class="layui-form-label">车牌号</label>
                    <div class="layui-input-block">
                        <input type="text" name="number" id="number" placeholder="请输入车牌号" class="layui-input"
                               lay-verify="required">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">品牌</label>
                    <div class="layui-input-block">
                        <input type="text" name="brand" id="brand" placeholder="请输入品牌" class="layui-input"
                               lay-verify="required">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">颜色</label>
                    <div class="layui-input-inline">
                        <select name="color">
                            <option value="黑色" selected="">黑色</option>
                            <option value="红色">红色</option>
                            <option value="灰色">灰色</option>
                            <option value="粉色">粉色</option>
                            <option value="绿色">绿色</option>
                            <option value="紫色">紫色</option>
                        </select>
                    </div>
<%--                    <div class="layui-input-block">--%>
<%--                        <input type="text" name="color" id="color" placeholder="请输入颜色" class="layui-input"--%>
<%--                               lay-verify="required">--%>
<%--                    </div>--%>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-block">
                        <input type="text" name="price" id="price"  class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn" lay-filter="ok" lay-submit="" id="btnAdd">添加</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<script src="../lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'laydate'], function () {
        var form = layui.form
        var $ = layui.jquery
        form.render();
        form.on('submit(ok)', function () {
            var formdata = $("#frmAddStu").serialize()
            $.ajax({
                type: "post",
                async:false,
                url: 'addCar',//提交给谁处理
                data: $("#frmAddStu").serialize(),
                dataType: "json",
                success(data){
                    if(data == "1"){
                        layer.msg('添加成功', {icon: 1, time: 1000}, function () {
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                    }else if(data =="0"){
                        layer.msg('添加失败',{icon:5,time:1000},function () {
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        })
                    }
                }
            });
        });
    })
</script>
</body>
</html>
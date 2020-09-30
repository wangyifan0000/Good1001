<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2020/9/20
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="/static/js/jquery-1.12.4.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/doupdateSelectById" method="post">
    <table border="1px">
        <tr>
            <td style="text-align: center">考勤记录登记表</td>
        </tr>
        <tr>
            <td>商品编号<input type="text" name="id" value="${goods.id}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>商品名称<input type="text" name="goodsName" value="${goods.goodsname}"></td>
        </tr>
        <tr>
            <td>创建时间<input type="text" name="creationtime" value="${goods.creationtime}"></td>
        </tr>
        <tr>
            <td>商品区域<input type="text" name="goodsDistrict" value="${goods.goodsdistrict}"></td>
        </tr>
        <tr>
            <td>商品价格<input type="text" name="goodsPrice" value="${goods.goodsprice}"></td>
        </tr>
        <tr>
            <td>库存数量<input type="text" name="goodsCount" value="${goods.goodscount}"></td>
        </tr>
        <tr>
            <td>订单状态<select name="billStatus">
                <c:if test="${goods.billstatus!=0}">
                    <option value="0">待处理</option>
                </c:if>
                <c:if test="${goods.billstatus==0}">
                    <option value="0" selected>待处理</option>
                </c:if>
                <c:if test="${goods.billstatus!=1}">
                    <option value="1">处理中</option>
                </c:if>
                <c:if test="${goods.billstatus==1}">
                    <option value="1" selected>处理中</option>
                </c:if>
                <c:if test="${goods.billstatus!=2}">
                    <option value="2">已处理</option>
                </c:if>
                <c:if test="${goods.billstatus==2}">
                    <option value="2" selected>已处理</option>
                </c:if>
            </select></td>
        </tr>
        <tr>
            <td><input type="submit" value="保存"><input type="button" value="重置"><input type="button" value="返回"></td>
        </tr>
    </table>
</form>
<script>
    $("form").submit(function () {
        var empname = $("[name='empname']").val();
        var depa = $("[name='depa']").val();
        var chkdate = $("[name='chkdate']").val();
        var status = $("[name='status']").val();
        if (empname == "") {
            alert("员工姓名不能为空");
            return false;
        }
        if (depa == "") {
            alert("所属部门不能为空");
            return false;
        }
        if (chkdate == "") {
            alert("请填写考勤日期");
            return false;
        }

        if (status == "") {
            alert("请选取考勤状态");
            return false;
        }
        var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
        if (!chkdate.match(reg)) {
            alert("上传时间格式不正确!!!");
            return false;
        }
    })
</script>
</body>
</html>

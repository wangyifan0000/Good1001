<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2020/9/30
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/selectByDistrict">
    <table>
        <tr>
            <td>请选择区域:<select name="GoodDistrict">
                <option value="1">朝阳区订单</option>
                <option value="2">海淀区订单</option>
                <option value="3">丰台区订单</option>
                <option value="4">西城区订单</option>
                <option value="5">昌平区订单</option>
            </select></td>
            <td><input type="submit" value="查询"></td>
        </tr>
    </table>
</form>
</body>
</html>

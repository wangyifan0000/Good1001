<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2020/9/20
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <table border="1px">
        <tr>
            <td>考勤记录信息表</td>
        </tr>
        <tr>
            <td>商品编号</td>
            <td>商品名称</td>
            <td>商品价格</td>
            <td>库存数量</td>
            <td>订单状态</td>
            <td>操作</td>

        </tr>
        <c:forEach var="Good" items="${Goodslist}">
            <tr>
                <td>${Good.id}</td>
                <td>${Good.goodsname}</td>
                <td>${Good.goodsprice}</td>
                <td>${Good.goodscount}</td>
                <td><c:if test="${Good.billstatus==0}">待处理</c:if>
                    <c:if test="${Good.billstatus==1}">处理中</c:if>
                    <c:if test="${Good.billstatus==2}">已处理</c:if>
                </td>
                <td><a href="javascript:void(0)" onclick="updateBilStatus(${Good.id})">修改</a></td>
            </tr>
        </c:forEach>
        <tr>
            <%-- &${Good.billstatus}<div>
                 <a name="pageIndex" href="/selectByCodeAndRisk?code=${code}&risk=${risk}&pageNum=${pageInfo.firstPage}">首页</a>
                 <c:if test="${pageInfo.hasPreviousPage}">
                     <a href="/selectByCodeAndRisk?code=${code}&risk=${risk}&pageNum=${pageInfo.prePage}">上一页</a>
                 </c:if>
                 <c:if test="${pageInfo.hasNextPage}">
                     <a href="/selectByCodeAndRisk?code=${code}&risk=${risk}&pageNum=${pageInfo.nextPage}">下一页</a>
                 </c:if>
                 <a name="pageIndex" href="/selectByCodeAndRisk?pageNum=${pageInfo.lastPage}">末页</a>
                 <a>第${pageInfo.pageNum}页</a> <a>共${pageInfo.pages}页</a>
             </div>--%>
        </tr>

        <tr><a href="/toAddAttence">考勤登记</a></tr>
    </table>
</form>
<script>
    $(function () {
        $("tr:odd").css("background-color", "gray");
    })
    function  updateBilStatus(id) {
        alert(id);//,billstatus
        //alert(billstatus);
        /*if (billstatus==2){
            alert("订单状态已处理不能修改");
        }
        if(billstatus==0||billstatus==1){
            location.href="/updateSelectById/"+id;
        }*/
        location.href="/updateSelectById/"+id;
    }
</script>
</body>
</html>

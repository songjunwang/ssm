<%--
  Created by IntelliJ IDEA.
  User: wsj
  Date: 2016/7/13
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="wsj" uri="/my-tag" %>
<%@include file="/common/include.jsp"%>
<html>
<head>
    <title>hello</title>
    <script>
        $(function(){
            $("#data-grid").datagrid({
                title:'dategrid',
                url:'js/datagrid_data1.json',
                method:'get',
                border:false,
                singleSelect:true,
                fit:true,
                fitColumns:true,
                toolbar:[
                    {id:'trade_download',text:'hello',iconCls:'icon-edit',handler:function(){alert('hello');}},
                    <wsj:button id="b1" text="button1" iconCls="icon-add" handler="function(){alert(1);}"/>
                    <wsj:button id="b2" text="button2" iconCls="icon-remove" handler="function(){alert(2);}"/>
                    <wsj:button id="a3" text="button1" iconCls="" handler="function(){alert(3);}"/>
                    <wsj:button id="b4" text="button4" handler="fun" />
                ],
                columns:[[
                    {field:'itemid',width:'80',title:'Item ID'},
                    {field:'productid',width:'100',title:'Product ID'},
                    {field:'listprice',align:'right',width:'80',title:'List Price'},
                    {field:'unitcost',align:'right',width:'80',title:'Unit Cost'},
                    {field:'attr1',width:'150',title:'Attribute'},
                    {field:'status',align:'center',width:'60',title:'Status'}
                ]]
            });
        });
        function fun(){
            alert("click");
        }
    </script>
</head>
<body>
  <h3>hello!</h3>
  <wsj:skipPageOrEvalPage/>
  <h4>标签结束后的内容</h4>
  <wsj:skipBodyOrEvalBodyInclude>
    <h4>显示标签体中的内容</h4>
  </wsj:skipBodyOrEvalBodyInclude>
  访问时间为：<wsj:loginDate></wsj:loginDate>
  <wsj:button id="b1" text="button1" iconCls="icon-add" handler="function(){alert(1);}"/>
  <table id="data-grid">
  </table>
</body>
</html>

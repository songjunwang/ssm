<!DOCTYPE html>
<%@include file="/common/include.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Custom Collapse Title in Layout</title>
<%--    <link rel="stylesheet" type="text/css" href="css/easyui.css">
    <link rel="stylesheet" type="text/css" href="css/icon.css">
    <link rel="stylesheet" type="text/css" href="css/demo.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>--%>
    <script>
        /**
         * 在iFrame中打开一个新tab
         * @param href
         * @param title
         */
        function openTab(href,title){
            var e = $('#main-tabs').tabs('exists',title);
            if(e){
                $("#main-tabs").tabs('select',title);

                var tab = $("#main-tabs").tabs('getSelected');
                $('#main-tabs').tabs('update',{
                    tab:tab,
                    options:{
                        title:title,
                        content:"<iframe src="+href+" scrolling='no' frameborder='0' style='width:100%;height:99%'></iframe>",
                        closable:true,
                        selected:true
                    }
                });
            }else{
                $('#main-tabs').tabs('add',{
                    title:title,
                    content:"<iframe src="+href+" scrolling='no' frameborder='0' style='width:100%;height:99%'></iframe>",
                    iconCls:'',
                    closable:true
                });
            }
        }
    </script>
</head>
<body>
    <div id="cc" class="easyui-layout" data-options="fit:true" style="width:700px;height:350px;">
        <div data-options="region:'north',border:false" style="height:80px;background-color:#42a065;">
            <div style="text-align:right; width:100%; color:#fff; background:url(css/icons/large_chart.png) no-repeat 40px 19px; height:80px; line-height:80px;">

            </div>
        </div>
        <div data-options="region:'east',split:true,hideCollapsedContent:false" title="East" style="width:100px;">
            <h2>hello</h2>
        </div>
        <div data-options="region:'west',split:true,collapsed:true,
                    hideExpandTool: true,
                    expandMode: null,
                    hideCollapsedContent: false,
                    collapsedSize: 68,
                    collapsedContent: function(){
                        return $('#titlebar');
                    }
                    " title="West" style="width:100px;"></div>
        <div data-options="region:'center'">
            <div id="main-tabs" class="easyui-tabs" data-options="fit:true">
                <div title="Home" style="padding:10px">
                    <p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
                    <ul>
                        <li>easyui is a collection of user-interface plugin based on jQuery.</li>
                        <li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
                        <li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
                        <li>complete framework for HTML5 web page.</li>
                        <li>easyui save your time and scales while developing your products.</li>
                        <li>easyui is very easy but powerful.</li>
                    </ul>
                </div>
                <div title="My Documents" data-options="closable:true" style="padding:10px">
                    <ul class="easyui-tree" data-options="url:'js/tree_data1.json',method:'get',animate:true"></ul>
                </div>
                <div title="dategrid" data-options="closable:true" style="padding:10px">
                    <table class="easyui-datagrid"
                   data-options="url:'js/datagrid_data1.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
                        <thead>
                        <tr>
                            <th data-options="field:'itemid'" width="80">Item ID</th>
                            <th data-options="field:'productid'" width="100">Product ID</th>
                            <th data-options="field:'listprice',align:'right'" width="80">List Price</th>
                            <th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
                            <th data-options="field:'attr1'" width="150">Attribute</th>
                            <th data-options="field:'status',align:'center'" width="60">Status</th>
                        </tr>
                        </thead>
                    </table>
                </div>
                <div title="Help" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
                    This is the help content.
                </div>
            </div>
        </div>
    </div>
    <div id="titlebar" style="padding:2px">
        <a href="javascript:void(0)" class="easyui-linkbutton" style="width:100%" data-options="iconCls:'layout-button-right'" onclick="$('#cc').layout('expand','west')"></a>
        <a href="javascript:void(0)" onclick="openTab('hello','hello')" class="easyui-linkbutton" style="width:100%" data-options="iconCls:'icon-large-picture',size:'large',iconAlign:'top'">Picture</a>
        <a href="javascript:void(0)" onclick="openTab('spoep','page')" class="easyui-linkbutton" style="width:100%" data-options="iconCls:'icon-large-shapes',size:'large',iconAlign:'top'">Shapes</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" style="width:100%" data-options="iconCls:'icon-large-smartart',size:'large',iconAlign:'top'">SmartArt</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" style="width:100%" data-options="iconCls:'icon-large-chart',size:'large',iconAlign:'top'">Chart</a>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="header.jsp"/>
	<title>欢迎</title>
</head>
 <body class="easyui-layout">
 	<!-- 北 -->
   	<div data-options="region:'north',title:'北'" style="height:100px;"></div>
   	
   	<!-- 西 -->
    <div data-options="region:'west',title:'西'" style="width:251px;">
    	
    	<div id="aa" class="easyui-accordion" fit="true" multiple="true">
	    	<div title="排序"  style="overflow:auto;">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" fit="true" style="color:#0099FF;" onclick="addPanel('冒泡排序')" >冒泡排序</a><br>
	    	<a href="javascript:void(0)" style="color:#0099FF;" onclick="addTabs('快速排序')" >快速排序</a>
	    	</div>
	    	<div title="查找"  style="overflow:auto;">
	    	</div>
	    	<div title="图形"  style="overflow:auto;">
	    	</div>
		</div>
    </div>
    <div data-options="region:'center'" style="background:#eee;">
    	<div id="tt" class="easyui-tabs" fit="true"></div>
    </div>
</body>
<script type="text/javascript">
	
	function addTabs(title){
		if($('#tt').tabs('exists',title)){
			$('#tt').tabs('select',title);
		}else{
			$('#tt').tabs('add',{
			    title:title,
			    closable:true,
			    url:"ddd.jsp",
			    tools:[{
					handler:function(){
						alert('refresh');
					}
			    }]
			});
		}
		
		
		
	}
	
	
</script>
</html>
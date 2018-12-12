<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<form id="ff" method="post">   
    <div>   
        <label for="name">Name:</label>   
        <input class="easyui-validatebox" type="text" name="name" data-options="required:true" />   
    </div>   
    <div>   
        <label for="email">Email:</label>   
        <input class="easyui-validatebox" type="text" name="email" data-options="validType:'email'" />   
    </div>     
</form>  
	

	<div align="left" >
		<form id="from1" method="post">   
		    <div style="margin-top:15px">   
		        <label>请输入要排序的数字(用","分隔):</label><br>   
		        <input id="numberStr" name="numberStr" class="easyui-textbox" style="width:900px"> 
		    </div>
		</form>  
		<div style="margin-top:15px">
		   	<a id="btn" class="easyui-linkbutton" onclick="doSubmit()">排序</a>  
		</div> 
		<div style="margin-top:15px" >   
            <label>排序结果：</label><br>   
		    <input class="easyui-textbox" id = "result" style="width:900px" />   
		</div>
		<div style="margin-top:15px" >   
            <label>所用时间：</label><br>   
		    <input class="easyui-textbox" id="time" style="width:900px" />   
		</div>   
	</div>
	<script type="text/javascript">
		function doSubmit(){
			$("#from1").form('submit',{
				url:'maopao.do',
				success:function(data){
					alert(data);
					jsonstr = eval("("+data+")");
					alert(jsonstr.result);
					alert(jsonstr.time);
					$("#result").textbox('setText',jsonstr.result);
					$("#time").val(jsonstr.time);
					$('#time').textbox('setText',jsonstr.time);

				}
			});
		}	
	
	</script>

</body>
</html>

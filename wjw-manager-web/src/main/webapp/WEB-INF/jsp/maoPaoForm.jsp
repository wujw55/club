<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
	<div align="left" >
		<form id="from1" method="post">   
		    <div>   
		        <label>请输入要排序的数字(用","分隔):</label><br>   
		        <input id="numberArray" class="easyui-textbox" style="width:900px"> 
		    </div>
		</form>  
		<div style="margin-top:15px">
		   	<a id="btn" href="#" class="easyui-linkbutton">排序</a>  
		</div> 
		<div style="margin-top:15px" >   
            <label>排序结果：</label><br>   
		    <input class="easyui-textbox" style="width:900px" />   
		</div>
		<div style="margin-top:15px" >   
            <label>所用时间：</label><br>   
		    <input class="easyui-textbox" style="width:900px" />   
		</div>   
	</div>
</body>
</html>
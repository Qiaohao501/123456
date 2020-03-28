<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>hello</title> 
</head>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>
<div style="text-align: center">
<span style="color: darkslategray; font-size: 30px; line-height: 50px;">师生疫情填报表</span>

</div>

<div>
  <form action="addStu.jsp" method="post">
   <%
  	String identity = request.getParameter("identity");
    if(identity=="0")
    {
    	identity="教师";
    }
    else
    {
    	identity="学生";
    }
   	String college = request.getParameter("college");
    String id = request.getParameter("id");
  %> 
  
    <!-- <label for="identification">身份</label>
    <select id="identification" name="identification">
      <option value="teacher">教师</option>
      <option value="student">学生</option>
    </select>  -->
    
    <label for="identity">身份</label>
    <input type="text" value="<%=identity %>" id="identity" name="identity" required="required" disabled="true">

    <!-- <label for="college">学院</label>
    <select id="college" name="college">
      <option value="计算机">计算机</option>
      <option value="数统">数统</option>
      <option value="化工">化工</option>
    </select> -->
    
    <label for="college">学院</label>
    <input type="text" value="<%=college %>" id="college" name="college" required="required" disabled="true"> 
    
    <label for="lname">姓名</label>
    <input type="text" value="hello" id="name" name="name" required="required" >
    
    <label for="fname">学号</label>
    <input type="text" id="id" value="<%=id %>" name="id" required="required">
    
    <label for="fname">电话</label>
    <input type="text" id="tel" value="123456" name="tel" required="required">
    
    <label for="fname">学院电话</label>
    <input type="text" id="teachertel" value="123456" name="teachertel" required="required">
    
    <label for="fname">是否发热</label><br><br>
    <input type="radio" name="fever" value="1" required="required">是
    <input type="radio" name="fever" value="0" required="required">否<br><br>
    
    <label for="fname">是否湖北籍</label><br><br>
    <input type="radio" name="hubei" value="1" required="required">是
    <input type="radio" name="hubei" value="0" required="required">否<br><br>
    
    <label for="fname">是否感染</label><br><br>
    <input type="radio" name="infect" value="1" required="required">是
    <input type="radio" name="infect" value="0" required="required">否<br><br>
     
     <label for="fname">是否与湖北人接触</label><br><br>
     <input type="radio" name="conwithhubei" value="1" required="required">是
    <input type="radio" name="conwithhubei" value="0" required="required">否<br><br>
    
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
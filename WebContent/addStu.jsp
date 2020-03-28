<%@page import="serviceImpl.StuserviceImpl"%>
<%@page import="service.Stuservice"%>
<%@page import="pojo.StudentInfo"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>添加成功</title>
</head>
<body>
<%
	StudentInfo stu = new StudentInfo();
	Stuservice stuservice = new StuserviceImpl();
	
	String identification = request.getParameter("identification");
	String college = request.getParameter("college");
	String name = request.getParameter("name");
	int id = Integer.parseInt((request.getParameter("id")));
	String tel = request.getParameter("tel");
	String teachertel = request.getParameter("teachertel");
	String fever = request.getParameter("fever");
	String hubei = request.getParameter("hubei");
	String infect = request.getParameter("infect");
	String conwithhubei = request.getParameter("conwithhubei");
	
	if(identification=="学生")
	{
		stu.setCollege(college);
		stu.setId(id);
		stu.setName(name);
		stu.setFever(fever);
		stu.setConWithHubei(conwithhubei);
		stu.setHubei(hubei);
		stu.setInfect(infect);
		stu.setTeachertel(teachertel);
		stu.setTel(tel);
		
		stuservice.AddStu(stu);
		String success = "增加成功";
	}
%>
</body>
<div style="text-align: center">
<span style="color: darkslategray; font-size: 30px; line-height: 50px;"><h1>添加成功</h1></span>
</div>
</html>
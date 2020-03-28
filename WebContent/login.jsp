<%@ page language="java"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
<title>疫情填报系统</title>
<link rel="stylesheet" type="text/css" href="../common/css/normalize.css" /> 
<script type="text/javascript" src="../common/jquery/jquery.min-1.11.js"></script>
<style type="text/css">
html,body{
    width:100%;
    height:100%;
    margin: 0;
	padding: 0;
    /* overflow: hidden; */
}
.center{
    width:100%;
    height:100%;
}
.background{
	height:100%; 
	width: 100%; 
	background:url(image/login.jpg) no-repeat center 0;
	background-size:100% 100%; 
}
.sysname-div{
    position:absolute;
    left:250px;
    top:30px;
}
.logoimg{
    position: relative;
    width:60px;
    height:60px;
    border-radius:40px;
}
#logoimg +label{              
	position: relative;
	font-size: 35px;
	color:#fff;    
	top: -15px;    
	left: 5px;    
}
.lgmain-div{
   position:absolute;
   left:900px;
   top:130px;
   width:400px;
   height:260px;
   padding-top:20px;
   border:1px solid #999999;
   border-radius:4px;
   box-shadow:0px 0px 30px #000;
   background: white;
}
.lgtop-div{
    width: 100%;
	text-align: left;
	text-indent: 25px;
	font-size: 18px;
	margin-bottom: -10px;
	//color: #fff;
}
.lg-div{
   width:350px;
   text-align: center;
   padding:20px;
}
.login-div{
	width: 350px;
	height: 50px;
	border:1px solid #cccccc;
	background: white;
}
input{
	border: none;
	outline: none;
}
.username{
   width:85%;
   height:100%;
   padding-left:50px;   
   background: url(images/login3.png) 15px 14px no-repeat;
}
.password{
   width:85%;
   height:100%;
   padding-left:50px;
   background: url(images/login4.png) 15px 14px no-repeat;
}
.checkbox-div{
	margin-top:10px;
	width: 100px;
	height: 25px;
	vertical-align: middle;
	text-align: left;
}

.isRemember{
    cursor: pointer;
    width: 15px;
    height: 15px;
    position: relative;
    
}
#isRemember +label{       
	width: 20px;    
	height: 20px;    
	cursor: pointer;    
	position: relative;
	font-size: 12px;
	//color:#fff;    
	top: -4px;    
	left: 0px;    
}

.btn-div{
	margin-top:10px;
	width: 130px;
	height: 35px;
	
}
button{
	border: none;
	outline: none;
}
#loginBtn{
	width: 100%;
	text-align: center;
	height: 100%;
	display: inline-block;
	font-weight: bold;
	color: #FFF;
	font-size: 14px;
	vertical-align: middle;
	margin-right: 5px;
	background-color: #238834f2;
	border-radius: 5px;
}
#loginBtn:hover {
	background-color: #007a00;
	border-radius: 5px;
	cursor: pointer;
}
.loginMessage {
    height: 15px;
    margin-bottom: 5px;
    text-align: left;
	color: red;
	font-size: 13px;
	font-weight: normal;
}
</style>
</head>
<body>
<div class="center" align="center">
	<div class="background">
	<div class="sysname-div">
	  <img id="logoimg" class="logoimg" src="image/login.jpg">  
	     <label for="logoimg"> 疫情填报系统</label>
	</div>
			<div class="lgmain-div">
			<div class="lgtop-div">登录</div>
			<form action="index.jsp">
				<div class="lg-div">
				        <div id="loginMessage" class="loginMessage"></div>
				        <div class="login-div">
							<input id="college" class="college" name="college" placeholder="输入学院" value="" type="text" required="required"/>
						</div>					
						<div class="login-div">
							<input id="identity" class="identity" name="identity" placeholder="输入身份（教师0，学生1）" value="" type="text" required="required"/>
						</div>
						<div class="login-div">
							<input id="id" name="id" class="id" placeholder="学号或者工号" value="" type="password" required="required"/>
						</div>
				<div class="btn-div">	
						<button id="loginBtn" type="submit">登&nbsp;&nbsp;&nbsp;录</button>
					</div>					
				</div>
			</form>
			</div>
	</div>
</div>
</body>
</html>

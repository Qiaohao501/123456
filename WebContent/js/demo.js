function check() {
    var user_name=form1.user.value;//获取表单form1的用户名的值
    var user_pwd=form1.pwd.value;//获取表单form1密码值
    if((user_name=="")||(user_name==null)){//判断用户名是否为空，为空就弹出提示框"请输入用户名"，否则正常执行下面的代码。
        alert("请输入用户名！");
        form1.user.focus();//获取焦点，即：鼠标自动定位到用户名输入框，等待用户输入用户名。
        return;
    }
    if((user_pwd=="")||(user_pwd==null)){//判断密码是否为空，为空就弹出提示框"请输入密码"，否则正常执行下面的代码。
        alert("请输入密码！");
        form1.pwd.focus();//获取焦点。
        return;
    }
    if((user_pwd=="admin")&&(user_pwd=="123")){
    	form1.submit();
        // window.location.href="http://baidu.com/";
        window.open("http://localhost:8080/TestServlet/adminmanage.jsp");
    }
    else {//如果用户名、密码都正常输入，则提交表单，浏览器经打开新的（主页）窗口。
    	alert("请正确输入用户名和密码！");
        form1.user.focus();//获取焦点，即：鼠标自动定位到用户名输入框，等待用户输入用户名。
        return;
    }
}
<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>

<%
    String username = "";
    String password = "";
    //��ȡ��ǰվ�������Cookie
    Cookie[] cookies = request.getCookies();
    for (int i = 0; i < cookies.length; i++) {//��cookies�е����ݽ��б������ҵ��û��������������
        if ("username".equals(cookies[i].getName())) {
            username = cookies[i].getValue();
        } else if ("password".equals(cookies[i].getName())) {
            password = cookies[i].getValue();
        }
    }
%>

</head>
<body>
    <form action="login_handler.jsp" method="post">
        username:<input type="text" name="name" value="<%=username%>" /><br/>
        password:<input type="password" name="pwd" value="<%=password%>" /><br/>
        <input type="checkbox" value="y" name="isLogin">�Զ���¼<br/> 
        <input type="submit" value="��¼" />
    </form>
</body>
</html>
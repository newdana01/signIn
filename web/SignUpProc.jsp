<%@ page import="javax.swing.*" %>
<%@ page import="model.MemberBeans" %>
<%@ page import="model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: joo
  Date: 2020-07-24
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String[] field = request.getParameterValues("field");
    String textField ="";
    for(int i=0; i<field.length; i++){
        textField+= field[i]+" ";
    }
%>
<jsp:useBean id="mBean" class="model.MemberBeans">
    <jsp:setProperty name="mBean" property="*"/>
</jsp:useBean>
<%
    mBean.setField(textField);
    MemberDAO memberDAO = new MemberDAO();
    memberDAO.insertMember(mBean);
%>
</body>
</html>

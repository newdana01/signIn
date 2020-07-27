<%@ page import="model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: joo
  Date: 2020-07-27
  Time: 오후 4:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mbean" class="model.MemberBeans">
    <jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>
<%
    String id = request.getParameter("id");
    MemberDAO mDAO = new MemberDAO();
    String pass = mDAO.getPass("id");

    if(mbean.getPw1().equals(pass)){

    }else {
%>
<script type="text/javascript">
    alert("비밀번호가 맞지 않습니다. 다시 확인해주세요");
    history.back(-1);
</script>
<%
    }
%>
</body>
</html>

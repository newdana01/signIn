<%@ page import="model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: joo
  Date: 2020-07-28
  Time: 오전 11:55
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
%>
<jsp:useBean id="mBean" class="model.MemberBeans">
    <jsp:setProperty name="mBean" property="*"/>
</jsp:useBean>
<%
    MemberDAO mDAO = new MemberDAO();
    //String 타입으로 저장되어있는 패스워드를 가져옴
    String pass = mDAO.getPass(mBean.getId());

    if(mBean.getPw1().equals(pass)){
        mDAO.deleteMember(mBean.getId());
        response.sendRedirect("MemberList.jsp");
    }else{
%>
<script type="text/javascript">
    alert("패스워드가 맞지 않습니다. 다시 확인해주세요.");
    history.back(-1);
</script>
<%
    }
%>
</body>
</html>
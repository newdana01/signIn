<%@ page import="model.MemberDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.MemberBeans" %><%--
  Created by IntelliJ IDEA.
  User: joo
  Date: 2020-07-27
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 조회</title>
</head>
<body>
<h2 align="center">회원 조회</h2>
<%
    MemberDAO mDAO = new MemberDAO();
    ArrayList<MemberBeans> list = mDAO.selectAll();
    int count = list.size();
%>
<table width="800" border="1" align="center">
    <tr height="50">
        <td align="center" width="150">아이디</td>
        <td align="center" width="150">이메일</td>
        <td align="center" width="150">전화번호</td>
        <td align="center" width="150">취미</td>
    </tr>
    <%
        for(int i=0; i<count; i++){
            MemberBeans mBeans = list.get(i);
    %>
    <tr height="50">
        <td align="center" width="150">
            <a href="MemberInfo.jsp?id=<%=mBeans.getId()%>   ">
                <%=mBeans.getId()%></a>
        </td>
        <td align="center" width="150"><%=mBeans.getEmail()%></td>
        <td align="center" width="150"><%=mBeans.getTel()%></td>
        <td align="center" width="150"><%=mBeans.getField()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>

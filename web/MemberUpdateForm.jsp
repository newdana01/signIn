<%@ page import="model.MemberDAO" %>
<%@ page import="model.MemberBeans" %><%--
  Created by IntelliJ IDEA.
  User: joo
  Date: 2020-07-27
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원정보 수정</title>
</head>
<body>
<h2 align="center">회원정보 수정</h2>
<%
    MemberDAO mDAO = new MemberDAO();
    String id = request.getParameter("id");
    MemberBeans mBeans = mDAO.selectMember(id);
%>
    <table width="400" border="1" align="center">
        <form action="MemberUpdateProc.jsp" method="post">
        <tr height="50">
            <td align="center" width="150">아이디</td>
            <td align="center" width="150"><%=mBeans.getId()%></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">이메일</td>
            <td align="center" width="150">
                <input type="email" name="email" value="<%=mBeans.getEmail()%>">
            </td>
        </tr>
        <tr height="50">
            <td align="center" width="150">휴대폰</td>
            <td align="center" width="150">
                <input type="tel" name="tel" value="<%=mBeans.getTel()%>">
            </td>
        </tr>
        <tr height="50">
            <td align="center" width="150">비밀번호</td>
            <td align="center" width="150">
                <input type="password" name="pw1">
            </td>
        </tr>
        <tr height="50">
            <td align="center" colspan="2">
                <input type="hidden" name="id" value="<%=mBeans.getId()%>">
                <input type="submit" value="수정"/>&nbsp;&nbsp;&nbsp;&nbsp;</form>
                <button onclick="location.href='MemberList.jsp'">회원 전체 보기</button>
            </td>
        </tr>
    </table>
</body>
</html>

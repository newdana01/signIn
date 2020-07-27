<%@ page import="model.MemberBeans" %>
<%@ page import="model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: joo
  Date: 2020-07-27
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상세조회</title>
</head>
<body>
<h2 align="center">회원 상세조회</h2>
<%
    MemberDAO mDAO = new MemberDAO();
    String id = request.getParameter("id");
    MemberBeans mBeans = mDAO.selectMember(id);
%>
<table width="400" border="1" align="center">
    <tr height="50">
        <td align="center" width="150">아이디</td>
        <td align="center" width="150"><%=mBeans.getId()%></td>
    </tr>
    <tr height="50">
        <td align="center" width="150">이메일</td>
        <td align="center" width="150"><%=mBeans.getEmail()%></td>
    </tr>
    <tr height="50">
        <td align="center" width="150">휴대폰</td>
        <td align="center" width="150"><%=mBeans.getTel()%></td>
    </tr>
    <tr height="50">
        <td align="center" width="150">관심분야</td>
        <td align="center" width="150"><%=mBeans.getField()%></td>
    </tr>
    <tr height="50">
        <td align="center" width="150">연령대</td>
        <td align="center" width="150"><%=mBeans.getAge()%></td>
    </tr>
    <tr height="50">
        <td align="center" width="150">정보</td>
        <td align="center" width="150"><%=mBeans.getInfo()%></td>
    </tr>
    <tr height="50">
        <td align="center" colspan="2">
            <button onclick="location.href='MemberUpdateForm.jsp?id=<%=mBeans.getId()%>'">정보수정</button>
            <button onclick="location.href='MemberDeleteForm.jsp?id=<%=mBeans.getId()%>'">회원삭제</button>
            <button onclick="location.href='MemberList.jsp'">목록보기</button>
            <button onclick="location.href='index.jsp'">회원가입</button>
        </td>
    </tr>
</table>
</body>
</html>

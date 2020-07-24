<%--
  Created by IntelliJ IDEA.
  User: joo
  Date: 2020-07-24
  Time: 오후 5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%--
    Created by IntelliJ IDEA.
    User: 주씨가문
    Date: 2020-07-14
    Time: 오후 3:23
    To change this template use File | Settings | File Templates.
  --%>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <html>
  <head>
    <title>Sign Up</title>
  </head>
  <body>
  <h2 align="center">회원가입</h2>
  <form action="SignUpProc.jsp" method="post">
    <table width="450" align="center" border="1">
      <tr height="50">
        <td width="100" align="center">아이디</td>
        <td width="100" align="center"><input type="text" name="id" size="30" placeholder="아이디 입력"></td>
      </tr>
      <tr height="50">
        <td width="100" align="center">비밀번호</td>
        <td width="100" align="center"><input type="password" name="pw1" size="30" placeholder="영문+숫자 8자 이상"></td>
      </tr>
      <tr height="50">
        <td width="100" align="center">비밀번호 확인</td>
        <td width="100" align="center"><input type="password" name="pw2" size="30" placeholder="영문+숫자 8자 이상"></td>
      </tr>
      <tr height="50">
        <td width="100" align="center">이메일</td>
        <td width="100" align="center"><input type="email" name="email" size="30"></td>
      </tr>
      <tr height="50">
        <td width="100" align="center">휴대폰</td>
        <td width="100" align="center"><input type="tel" name="tel" size="30"></td>
      </tr>
      <tr height="50">
        <td width="100" align="center">관심분야</td>
        <td width="100" align="center">
          <input type="checkbox" name="field" value="캠핑">캠핑
          <input type="checkbox" name="field" value="등산">등산
          <input type="checkbox" name="field" value="영화">영화
          <input type="checkbox" name="field" value="독서">독서
        </td>
      </tr>
      <tr height="50">
        <td width="100" align="center">직업</td>
        <td width="100" align="center">
          <select name="job">
            <option value="교사">교사</option>
            <option value="교사">학생</option>
            <option value="교사">의사</option>
            <option value="교사">변호사</option>
          </select>
        </td>
      </tr>
      <tr height="50">
        <td width="100" align="center">연령대</td>
        <td width="100" align="center">
          <input type="radio" name="age">10대
          <input type="radio" name="age">20대
          <input type="radio" name="age">30대
          <input type="radio" name="age">40대
        </td>
      </tr>
      <tr height="50">
        <td width="100" align="center">남기고 싶은 말</td>
        <td width="100" align="center">
          <textarea rows="5" cols="40" name="info"></textarea>
        </td>
      </tr>
      <tr height="50">
        <td width="100" align="center" colspan="2">
          <input type="submit" value="회원가입">
          <input type="reset" value="취소">
        </td>
      </tr>
    </table>
  </form>
  </body>
  </html>

  </body>
</html>

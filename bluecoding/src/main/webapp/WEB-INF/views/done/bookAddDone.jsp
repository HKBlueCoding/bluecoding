<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${ret == 0}">
  <script>
   alert('등록에 실패하였습니다.');
   location.href="../../";
  </script>
</c:if>
<c:if test="${ret == 1}">
  <script>
   alert('정상적으로 등록되었습니다.');
   location.href="../../list";
  </script>
</c:if>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>JSTL函数</title>
</head>
<body>

<%-- 判断是否包含Hello字符串 --%>
<c:out value="${fn:contains('你好，Hello Word!', 'Hello')}"></c:out><br>

<%-- 忽略大小写 --%>
<c:out value="${fn:containsIgnoreCase('你好，Hello Word!', 'hello')}"></c:out><br>
<c:out value="${fn:startsWith('你好，Hello Word!', '你好')}"></c:out><br>
<c:out value="${fn:endsWith('你好，Hello Word!', '!')}"></c:out><br>
<c:out value="${fn:indexOf('你好，Hello Word!', 'llo')}"></c:out><br>

<%-- 使用函数输出xml --%>
<c:out value="${fn:escapeXml('<book>冰与火之歌</book>')}"></c:out><br>
</body>
</html>

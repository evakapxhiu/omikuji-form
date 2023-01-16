<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Omikuji</title>
</head>
<body>
<h1>Here's your omikuji</h1>
<c:out value="${result}"></c:out>
<a href="/omikuji">Back</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form</title>
</head>
<body>
<h1>Send an Omikuji</h1>
<form action="/post" method="post">
    <div>
        <label>Pick any number from 5 to 25</label>
        <input type="number" name="number"/>
    </div>
    <div>
        <label>Enter the name of city</label>
        <input type="text" name="city"/>
    </div>
    <div>
        <label>Enter the name of a real person</label>
        <input type="text" name="name"/>
    </div>
    <div>
        <label>Enter any hobby</label>
        <input type="text" name="hobby"/>
    </div>
    <div>
        <label>Enter any hobby</label>
        <input type="text" name="thing"/>
    </div>
    <div>
        <label>Say Something nicee</label>
        <textarea cols="30" rows="10"  name="text"></textarea>
    </div>
    <p>Send and show a friend</p>
    <input type="submit" value="Send">

</form>
</body>
</html>
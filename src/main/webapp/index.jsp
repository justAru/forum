<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.example.JavaEE_lab7_forum.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.example.JavaEE_lab7_forum.model.Post" %>
<%@ page import="com.example.JavaEE_lab7_forum.model.Comment" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<jsp:include page="header.jsp" />

<h1>Welcome to Forum</h1>
<% if(request.getAttribute("user") != null) { %>
<div class="my-5">
    <form action="CreatePost" method="post" class="card card-body">
        <div class="form-group">
            <label>Title</label>
            <input  name="title" type="text" class="form-control">
        </div>
        <div class="form-group">
            <label>Body</label>
            <textarea name="body" class="form-control" rows="3"></textarea>
        </div>
        <div class="form-group">
            <button class="btn btn-primary" type="submit">Save</button>
        </div>
    </form>
</div>
<%}%>
</div>

</body>
</html>

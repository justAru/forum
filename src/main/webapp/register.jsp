<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
<body class="text-center">
<header>
    <jsp:include page="header.jsp"/>
</header>
<div class="container">
    <main class="form-signin">
        <%-- Implicit objest & expression scriplet --%>
        <form action="<%= request.getContextPath() %>/register" method="post">
            <h1 class="h3 mb-3 fw-normal">Please sign up</h1>
            <label for="inputEmail" class="visually-hidden">Name</label>
            <input type="text" name="name" id="inputName" class="form-control" placeholder="Name" required="" autofocus="">
            <label for="inputEmail" class="visually-hidden">Email address</label>
            <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
            <label for="inputPassword" class="visually-hidden">Password</label>
            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="">
            <%--            <label for="inputPassword" class="visually-hidden">Re-write password</label>--%>
            <%--            <input type="password" name="repassword" id="inputPassword2" class="form-control" placeholder="Password" required="">--%>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <a href="login.jsp">
                <button class="w-100 btn btn-lg btn-primary" type="submit">Sign up</button>
            </a>
            <p class="mt-5 mb-3 text-muted">© 2021</p> <!-- use java code for time -->
        </form>
    </main>
</div>
</body>
</body>

</html>

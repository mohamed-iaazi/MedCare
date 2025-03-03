<%--
    Document   : newjsp
    Created on : 18 févr. 2025, 10:27:23
    Author     : iaazi
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docotr Rv </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="css/style.css">--%>
    <style><%@include file="/css/style.css"%></style>




</head>


<body>
<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <!-- Navbar brand -->
            <a class="navbar-brand h1 mb-0 " href="#">DocotrRv..</a>

            <!-- Navbar toggler -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon "></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse ps-3" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="Appointment">Appointement</a>
                    </li>
                </ul>

                <%
                    if (((HttpServletRequest)  request).getSession().getAttribute("user")==null){

                       System.out.println("The user is null");


                %>

                <section class="btns d-flex justify-content-end w-75">
                    <button class="m-2 rounded-1 btn-signup" >
                        <a id="register" class="nav-link" href="Register.jsp">Register</a>
                    </button>
                    <button class="m-2 rounded-1 btn-login" href="login"  >
                        <a id="login" class="nav-link" href="Login.jsp">login</a>


                    </button>
                </section>

                <% } else { %>
                <section class="btns d-flex justify-content-end w-75">
                    <button class="m-2  btn-logout" >
                        <a id="logoutt" class="nav-link" href="<% ((HttpServletRequest) request).getSession().removeAttribute("user");%> " onclick="logout()">logout</a>
                    </button>



                </section>

                <% }%>

            </div>
        </div>
    </nav>
</header>
<div class="line ms-auto me-auto"></div>


<section class="back d-block">

    <h1>Providing An Exeptional <br> Patient Experience</h1>
    <div class="row me-0">
        <div class="card p-3  col-sm-12 col-md-4 col-lg-4 col-xl-4">
            <form  action="Appointment"  method="post">
                <div class="ms-auto me-auto ">

                    <input class="mt-3" type="text" class="form-control" id="username" name="username" aria-describedby="username" placeholder="User Name">
                    <input class="mt-3" type="email" class="form-control" id="email" name="email" placeholder="Email">
                    <input class="mt-3" type="date" id="day" name="date" placeholder="Choose A day">
                    <select name="doctor" class="d-block mt-3" aria-label="Default select">
                        <option selected  disabled>select doctor</option>
                        <option value="mohamed">Mr Mohamed</option>
                        <option value="kamal">Mr kamal</option>
                        <option value="issam">Mr issam</option>
                    </select>
                </div>

                <button  class="mt-4 me-2 d-block ms-auto me-auto " type="submit">Take Appointement</button>
            </form>

        </div>

        <div class=" p-3 ms-4  col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <p class="m-lg-4 ps-3 pe-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum ratione nam iusto facere odit optio ut impedit facilis dignissimos reiciendis. Omnis, animi. Repellendus recusandae placeat corporis, nihil fugiat dolores impedit?</p>
            <button class="m-2 discover d-block ms-auto me-auto">Discover More</button>

        </div>
    </div>

</section>
<footer class="d-flex justify-content-center align-items-center ">
    <p>CopyRight &copy; 2025 <span>Made By Medo</span></p>

</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>

    function logout() {

        alert("Logout with suess")

    }
</script>

</body>
</html>
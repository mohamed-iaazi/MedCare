<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 20/02/2025
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
</head>
<style>
    :root {
        --blue : #096096;
        --text-lightBlack-color: #383636;
        --font:'Segoe UI', Tahoma, Verdana, sans-serif;
    }

    button {
        padding: 4px 10px;
        border: #09609646 2px solid;
        background-color: var(--blue);
        color: white;
        font-size: 13px;
    }
    .line{
        background-color: var(--blue);
        height: 2px;
        opacity: 0.05;
        width: 99%;

    }
    header{
        /* background-color: #09609646; */
        background-color: rgb(255, 255, 255);
    }
    .card{
        width: 300px;
        /* position: relative;
        top: 20%;
        left: 10%; */
        margin-left: 10%;
    }

    input ,select , option{
        padding: 4px 6px;
        outline: #26caf326 solid 2px;
        background-color:#26caf326;
        border: none;
        border-radius: 4px;
        color: #8d8b8b;
        width: 250px;
    }
    form div {
        width: 250px;
    }
    button {
        background-color: #0a58ca;
        border: 1px transparent solid;
        border-radius: 4px;
        padding: 8px 10px;
        margin-bottom: 10px;
    }

    .back {
        height: 100vh;
        background: linear-gradient(to top, rgba(0, 37, 246, 0.29), rgba(52, 167, 245, 0.65)), url('https://i.ibb.co/9HjLLFdm/img.jpg') no-repeat top center ;
        background-size: cover;



    }
    .back h1 {
        color: white;
        font-size: 30px;
        padding: 20px 10px;
        font-weight: bolder;
        text-align: center;

    }
    p{
        text-align: center;
        color: white;
    }
    .discover{
        background-color: white;
        color: rgba(52, 167, 245, 0.65);
        border: rgba(52, 167, 245, 0.65) 1.5px solid;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
        font-size: 12px;
        margin: 10px 0;
        margin-bottom: 10px;
    }
    button:hover{
        color: rgba(52, 167, 245, 0.65);
        background-color: white;
        border: rgba(52, 167, 245, 0.65) solid 0.1px;

    }
    .discover:hover{
        background-color: rgba(52, 167, 245, 0.65);
        color: white;



    }

    footer {
        background-color: #09609646;
        color: white;
        height: 100px;
    }
    span{
        color: rgba(52, 167, 245, 0.65);
        font-size: 10px;
        font-weight: bold;
        font-family: var(--font), cursive;
    }


    .cards{
        border: solid 1px rgba(52, 80, 223, 0.295);
        width: fit-content;
        height: 70px;
        border-radius: 5px;
        box-shadow: 0 0 10px 0 rgb(241, 235, 235);
        padding: 10px;
        display: flex;
        gap: 40px;
        align-items: center;
        border-bottom: #0ecfff solid 10px;

    }
</style>
<body>

<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <!-- Navbar brand -->
            <a class="navbar-brand h1 mb-0 " href="#">DocotrRv</a>

            <!-- Navbar toggler -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon "></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse ps-3" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="Home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">Services</a>
                    </li>
                </ul>
                <section class="d-flex justify-content-end w-75">
                    <button class="m-2 rounded-1 btn-signup" >
                        <a id="login" class="nav-link" href="Register.jsp">Register</a>
                      </button>
                </section>
            </div>
        </div>
    </nav>
</header>

<section class="back d-block pt-5">
<div class="card pt-5 d-block ms-auto me-auto   ">
    <form  action="LoginServlet"  method="post">
        <div class="ms-auto me-auto ">
            <h1 class="text-center p-1 text-dark">Login</h1>
            <h4 class="text-center h6  text-secondary">DoctorRv</h4>

            <input required class="mt-3" type="text" id="username" name="username" aria-describedby="username" placeholder="User name">
            <input required class="mt-3" type="password" id="password" name="password" placeholder="Password">
        </div>

        <button  class="mt-4 me-2 d-block ms-auto me-auto " type="submit">Login</button>
    </form>

</div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 26/02/2025
  Time: 09:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <style> <%@ include file="./css/register.css"%> </style>

</head>

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
                        <a id="login" class="nav-link" href="Login.jsp">  Login</a>
                    </button>
                </section>
            </div>
        </div>
    </nav>
</header>
<section class="back d-block pt-5">
    <div class="card pt-2 d-block ms-auto me-auto   ">
        <form  action="Register"  method="post">
            <div class="ms-auto me-auto  ">
                <h1 class="text-center p-0 text-dark">Register</h1>
                <h4 class="text-center h6  text-secondary">DoctorRv</h4>
                <input required class="mt-3" type="text"  id="username" name="username" aria-describedby="username" placeholder="UserName">
                <input required class="mt-3" type="email"  id="email" name="email" aria-describedby="email" placeholder="Enter  email">
                <input  class="mt-3" type="number"  id="numberPhone" name="numberPhone" aria-describedby="numberPhone" placeholder="numberPhone">
                <input  required  class="mt-3" type="password" id="password" name="password" placeholder="Password">
                <select onchange="CheckTheRole()" id="role" required class="mt-3 mb-2" name="role">
                    <option selected disabled> Chose Your Role</option>
                    <option value="Patient" > Patient</option>
                    <option  value="Doctor"> Doctor </option>
                </select>
                <span class="   text-danger "><small>You should chose Your role first *</small></span>
                <input
                        class="mt-3 d-none" type="text" id="specialisation" name="specialisation" placeholder="specialisation">

            </div>

            <button  class="mt-4 me-2 d-block ms-auto me-auto " type="submit">Register</button>
        </form>

    </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
    function CheckTheRole() {
        const  role = document.getElementById('role');
        var selectedValue = role.value;  // Gets the selected value
        if (selectedValue===
            "Patient"){
            console.log("patient")
            document.getElementById('specialisation').classList.add("d-none");
            document.getElementById('specialisation').removeAttribute("required"); // Remove required if hidden



        }
        else if (selectedValue==="Doctor"){
            console.log("Doctor")
            document.getElementById('specialisation').classList.remove("d-none");
            document.getElementById('specialisation').setAttribute("required", "true");


        }
        else {
            console.log("Error")
            document.getElementById('specialisation').classList.add("d-none");


        }
    }
</script>
</body>
</html>
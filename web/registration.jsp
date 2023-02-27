<%--
    Document   : signup
    Created on : 23-Feb-2023, 2:19:03 am
    Author     : Anik Dutta
--%>


<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">


        <!--<link rel="stylesheet" href="css/login-icon-style.css">-->

        <!--done-->
        <link rel="stylesheet" href="css/owl.carousel.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.login.css">

        <!-- Style -->
        <link rel="stylesheet" href="css/loginstyle.css">

        <title>OHMS Registration</title>
    </head>
     <script src="https://code.jquery.com/jquery-3.6.3.js" 
                        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" 
                crossorigin="anonymous"></script>
    <body style="overflow: scroll; height : 90%" id="social">
        <div class="d-md-flex half">
            <div class="bg" style="background-image: url('images/login-side.jpg');"></div>
            <div class="contents">

                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-12">
                            <div class="form-block mx-auto">
                                <div class="text-center mb-5">
                                    <h3 class="text-uppercase">Please Register With <strong> OHMS </strong></h3>
                                </div>
                                <form action="SignUp" method="POST">
                                    <div class="form-group first">
                                        <label for="firstName">First Name</label>
                                        <input name="firstName" type="text" class="form-control" placeholder="First Name" id="firstName" required>
                                    </div>
                                    <div class="form-group first">
                                        <label for="lastName">Last Name</label>
                                        <input name="lastName" type="text" class="form-control" placeholder="Last Name" id="lastName" required>
                                    </div>
                                    <div class="form-group first">
                                        <label for="emailAddress">Email Address</label>
                                        <input name="emailAddress" type="text" class="form-control" placeholder="your-email@gmail.com" id="emailAddress" required>
                                    </div>

                                    <div class="form-group last mb-3">
                                        <label for="password">Password</label>
                                        <input name="password" type="password" class="form-control" placeholder="Your Password" id="password" required>
                                    </div>

                                    <div class="form-group last mb-3">

                                        <label class="gender" for="inlineFormCustomSelectPref" id="gender">Choose Gender</label>
                                        <select  name="gender" class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" required>
                                            <option selected>Select Gender</option>
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                            <option value="others">Others</option>
                                        </select>
                                    </div>

                                    <div class="form-group last mb-3">
                                        <label for="occupation">Occupation</label>
                                        <input name="occupation" type="text" class="form-control" placeholder="Your Occupation" id="occupation" required>
                                    </div>

                                    <div class="form-group last mb-3">
                                        <label for="address">Address</label>
                                        <input name="address" type="text" class="form-control" placeholder="Your Address" id="address" required>
                                    </div>

                                    <div class="d-sm-flex mb-5 align-items-center">
                                        <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Remember me</span>
                                            <input type="checkbox" checked="checked" required/>
                                            <div class="control__indicator"></div>
                                        </label>
                                        <span class="ml-auto"><a href="#" class="forgot-pass">Forgot Password</a></span>
                                    </div>
                                    <div class="g-recaptcha" data-sitekey="6LcQjK0kAAAAALMogTAZqQcjHJftku7jwQSL4jIV"></div><br>
                                    <button type="submit" value="Sign Up" class="btn btn-block py-2 btn-primary">Sign Up</button>
                                </form>
                                <span class="text-center my-3 d-block">or</span>


                                <div class="">
                                    <!--                                    <a href="#" class="btn btn-block py-2 btn-facebook">
                                                                            <span class="icon-facebook mr-3"></span> Login with facebook
                                                                        </a>-->
                                    <jsp:include page="demo.jsp"></jsp:include>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>



        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>

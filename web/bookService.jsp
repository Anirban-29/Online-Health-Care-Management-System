<%@page import="com.exavalu.models.Departments"%>
<%@page import="com.exavalu.services.DepartmentService"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>OHMS - Online HealthCare Management System</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <script src="https://code.jquery.com/jquery-3.6.3.js" 
                        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" 
                crossorigin="anonymous"></script>
    <script>
        function fetchContent(departmentId)
        {
            alert(departmentId);
            event.preventDefault();
            //alert(fnolId);
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function ()
            {
                document.getElementById("doctorId").innerHTML = xmlhttp.responseText;
                
            };


            xmlhttp.open("POST", "getDoctor?departmentId=" + departmentId, true);
            xmlhttp.send();
        }


    </script>

    <body>
        <c:set var="deptList" value="${DepartmentService.getInstance().getAllDepartments()}" />


        <!-- Appointment Start -->
        <div id="bookAppointment"class="container-fluid bg-primary my-5 py-5">
            <div class="container py-5">
                <div class="row gx-5">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="mb-4">
                            <h5 class="d-inline-block text-white text-uppercase border-bottom border-5">Appointment</h5>
                            <h1 class="display-4">Make An Appointment For You And Your Family</h1>
                        </div>
                        <p class="text-white mb-5">Eirmod sed tempor lorem ut dolores. Aliquyam sit sadipscing kasd ipsum. Dolor ea et dolore et at sea ea at dolor, justo ipsum duo rebum sea invidunt voluptua. Eos vero eos vero ea et dolore eirmod et. Dolores diam duo invidunt lorem. Elitr ut dolores magna sit. Sea dolore sanctus sed et. Takimata takimata sanctus sed.</p>
                        <a class="btn btn-dark rounded-pill py-3 px-5 me-3" href="">Find Doctor</a>
                        <a class="btn btn-outline-dark rounded-pill py-3 px-5" href="">Read More</a>
                    </div>
                    <div class="col-lg-6">
                        <div class="bg-white text-center rounded p-5">
                            <h1 class="mb-4">Book An Appointment</h1>
                            <c:set var="emp" value="${User}"></c:set>
                            <form action="Appointment" method="Post">
                                    <div class="row g-3">
                                        <div  class="col-12 col-sm-6">
                                            <select name="departmentId" id="departmentId"  class="form-select bg-light border-0" style="height: 55px;" onchange="fetchContent($('#departmentId').find(':selected').val())" required>
                                                <option selected>Choose Department</option>
                                            <c:forEach items="${deptList}" var="dept">
                                                <option value="${dept.getDepartmentId()}"<c:if test="${dept.getDepartmentId().equalsIgnoreCase(user.getDepartmentId())}" > selected </c:if>  > ${dept.getDepartmentName()} </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <select name="doctorId" id="doctorId" class="form-select bg-light border-0" style="height: 55px;">
                                            <option value="">Select Doctor</option>


                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input name="name" type="text" class="form-control bg-light border-0" placeholder="Your Name" style="height: 55px;"  value="${user.getName()}">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input name="emailAddress" type="email" class="form-control bg-light border-0" placeholder="Your Email" style="height: 55px;"  value="${user.getEmailAddess()}">
                                    </div>

                                    <div class="col-12 col-sm-6">
                                        <div class="date" id="date" data-target-input="nearest">
                                            <input name="appointmentDate" type="text"
                                                   class="form-control bg-light border-0 datetimepicker-input"
                                                   placeholder="Date" data-target="#date" data-toggle="datetimepicker" style="height: 55px;"  value="${user.getAppointmentDate()}">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div  class="time" id="time" data-target-input="nearest">
                                            <input name="time" type="text"
                                                   class="form-control bg-light border-0 datetimepicker-input"
                                                   placeholder="Time" data-target="#time" data-toggle="datetimepicker" style="height: 55px;"  value="${emp.getTime()}">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <input name="symptoms" type="text" class="form-control bg-light border-0" placeholder="Symptoms" style="height: 55px;" value="${emp.getSymptoms()}">
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Make An Appointment</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->


    </body>
</html>
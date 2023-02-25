<%--
    Document   : doctor_view_booking
    Created on : 24-Feb-2023, 1:00:23 am
    Author     : SAYANTA PAUL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Doctor - OHMS</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css_medicalAppointmentHistory//style.css">
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <section class="main-content">
                <div class="container">
                    <h3>Upcoming Appointments</h3>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Appointment Id</th>
                                <th>Appointment Date</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Gender</th>
                                <th>Age</th>
                                <th>Department Name</th>
                                <!--<th>Symptoms</th>-->

                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${AppointmentListDoctor}" var="appointment">
                            <tr>
                                <td>
                                    <div class="user-info">
                                        <div class="user-info__basic">
                                            <a class="mb-0">${appointment.appointmentId}</a>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="user-info">
                                        <div class="user-info__basic">
                                            <a class="mb-0">${appointment.appointmentDate}</a>
                                        </div>
                                    </div>
                                </td>

                                <td>
                                    <div class="user-info">
                                        <div class="user-info__basic">
                                            <a class="mb-0">${appointment.patientFirstName}</a>
                                        </div>
                                    </div>
                                </td>

                                <td>
                                    <div class="user-info">
                                        <div class="user-info__basic">
                                            <a class="mb-0">${appointment.patientLastName}</a>
                                        </div>
                                    </div>
                                </td>

                                <td>
                                    <div class="user-info">
                                        <div class="user-info__basic">
                                            <a class="mb-0">${appointment.gender}</a>
                                        </div>
                                    </div>
                                </td>

                                <td>
                                    <div class="user-info">
                                        <div class="user-info__basic">
                                            <a class="mb-0">${appointment.age}</a>
                                        </div>
                                    </div>
                                </td>

                                <td>
                                    <div class="user-info">
                                        <div class="user-info__basic">
                                            <a class="mb-0">${appointment.departmentName}</a>
                                        </div>
                                    </div>
                                </td>


                                <td>
                                    <div class="dropdown open">
                                        <a href="#!" class="px-2" id="triggerId1" data-toggle="dropdown" aria-haspopup="true"
                                           aria-expanded="false">
                                            <i class="fa fa-ellipsis-v"></i>
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="triggerId1">
                                            <a class="dropdown-item" href="#"><i class="fa fa-pencil mr-1"></i> Edit</a>
                                            <a class="dropdown-item text-danger" href="#"><i class="fa fa-trash mr-1"></i> Delete</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
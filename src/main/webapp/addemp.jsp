<%-- 
    Document   : test
    Created on : Nov 3, 2022, 8:22:39 AM
    Author     : vhqua
--%>

<%@page import="com.Models.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= request.getAttribute("update") == null ? "Add new" : "Update"%></title>
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="${pageContext.request.contextPath}/resouces/libaries/mdb.min.css"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resouces/css/createAccount.css" />
    </head>
    <body>
        <%
            Employee emp = null;
            Boolean check = request.getAttribute("update") == null;
            if (!check) {
                emp = (Employee) request.getAttribute("empUpdate");
            }
        %>
        <%@include file="navbar.jsp" %>
        <section class="gradient-custom">
            <div class="container py-5">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5"><%= check == false ? "Update" : "Add new"%></h3>
                                <form action="/account" method="post" id="empForm">
                                <h3 class="error" style="display: <%= request.getAttribute("error")!=null?"block":"none" %>"><%= request.getAttribute("error")%></h3>
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="empID" class="form-control form-control-lg" name="empID" value="<%= check == false ? emp.getEmp_ID() : ""%>" <%= check == false ? "readonly" : ""%>/>
                                                <label class="form-label" for="empID">Employee ID</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" id="empName" class="form-control form-control-lg" name="empName" value="<%= check == false ? emp.getEmp_name() : ""%>"/>
                                                <label class="form-label" for="empName">Full name</label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="empUsername" class="form-control form-control-lg" name="empUsername" value="<%= check == false ? emp.getUsername() : ""%>"/>
                                                <label class="form-label" for="empUsername">Username</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="password" id="empPass" class="form-control form-control-lg" name="empPass" />
                                                <label class="form-label" for="empPass">Password</label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-4 d-flex align-items-center">

                                            <div class="form-outline datepicker w-100">
                                                <input type="date" class="form-control form-control-lg" id="birthdayDate" name="birthdayDate" value="<%= check == false ? emp.getEmp_birthday() : ""%>"/>
                                                <label for="birthdayDate" class="form-label">Birthday</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="tel" id="empPhone" class="form-control form-control-lg" name="empPhone" value="<%= check == false ? emp.getEmp_phone() : ""%>"/>
                                                <label class="form-label" for="empPhone">Phone number</label>
                                            </div>

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-outline">
                                                <input type="text" id="address" class="form-control form-control-lg" name = "address" value="<%= check == false ? emp.getEmp_address() : ""%>"/>
                                                <label class="form-label" for="emailAddress">Address</label>
                                            </div>

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <label class="form-label select-label">Choose option</label>
                                            <select class="select form-control-lg" name="role" id="role">
                                                <option value="1" disabled>Choose option</option>
                                                <option value="admin">Qu???n l??</option>
                                                <option value="emp" selected>Nh??n vi??n</option>
                                            </select>    
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <label class="form-label select-label mb-2 pb-1">Gender</label>
                                            <br>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" id="gender"
                                                       value="Nu" checked />
                                                <label class="form-check-label" for="femaleGender">Female</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" id="gender"
                                                       value="Nam" />
                                                <label class="form-check-label" for="maleGender">Male</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mt-4 pt-2">
                                        <button class="btn btn-primary btn-lg" type="submit" name="<%= request.getAttribute("update") == null ? "btnCreate" : "btnUpdate"%>"> Submit </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
        <script language="Javascript" src="${pageContext.request.contextPath}/resouces/libaries/jquery-3.6.1.min.js"></script>
        <script language="Javascript" src="${pageContext.request.contextPath}/resouces/libaries/jquery.validate.js"></script>
        <script language="Javascript" src="${pageContext.request.contextPath}/resouces/js/validateCreateUpdate.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/resouces/libaries/mdb.min.js"></script>
    </body>
</html>

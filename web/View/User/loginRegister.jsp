
<%-- 
    Document   : login-register
    Created on : Jun 16, 2024, 10:53:40 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html class="no-js" lang="en">


    <!-- Mirrored from htmldemo.net/norda/norda/login-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Jun 2024 13:44:31 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Norda - Minimal eCommerce HTML Template</title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png">

        <!-- All CSS is here
            ============================================ -->

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/simple-line-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/elegant.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/linear-icon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/easyzoom.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/slick.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/jquery-ui.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

        <script>

            function CheckRePassword(event) {
                var pass = document.getElementById("pass");
                var repass = document.getElementById("repass");
                if (repass.value !== pass.value) {
                    repass.setCustomValidity('Passwords do not match');
                    event.preventDefault();
                }
            }

            function emailTakenDisplay() {
                var email = document.getElementsByName("user_email");
                email[0].setCustomValidity("Email already taken!");
            }

        </script>
    </head>

    <body>

        <div class="main-wrapper">
            <jsp:include page="../Common/headerFull.jsp"></jsp:include>
                <!-- Mobile menu start -->
            <jsp:include page="../Common/mobileMenu.jsp"></jsp:include>
                <!-- mini cart start -->
            <jsp:include page="../Common/miniCart.jsp"></jsp:include>
                <div class="breadcrumb-area bg-gray">
                    <div class="container">
                        <div class="breadcrumb-content text-center">
                            <ul>
                                <li>
                                    <a href="${pageContext.request.contextPath}/Home">Home</a>
                            </li>
                            <li class="active">login - register </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="login-register-area pt-115 pb-120">
                <c:set var="cookie" value="${pageContext.request.cookies}"></c:set>
                    <div class="container">

                        <div class="row">
                            <div class="col-lg-7 col-md-12 ms-auto me-auto">
                                <div class="login-register-wrapper">
                                    <div class="login-register-tab-list nav">
                                        <a  ${param.regis==null?'class="active"':''} data-bs-toggle="tab" href="#lg1">
                                        <h4> login </h4>
                                    </a>
                                    <a ${param.regis!=null?'class="active"':''} data-bs-toggle="tab" href="#lg2">
                                        <h4> register </h4>
                                    </a>
                                </div>
                                <div class="tab-content">
                                    <div id="lg1" class="tab-pane ${param.regis==null?'active':''}">
                                        <div class="login-form-container">
                                            <div class="login-register-form">
                                                <form action="${pageContext.request.contextPath}/user?action=login" method="post">
                                                    <input type="text" name="email" placeholder="Email" value="${cookie.email.value}">
                                                    <input type="password" name="password" placeholder="Password" value="${cookie.pass.value}">
                                                    <c:if test="${errorMessage!=null}">
                                                        <c:out value="${errorMessage}"></c:out>
                                                    </c:if>
                                                    <div class="button-box">
                                                        <div class="login-toggle-btn">
                                                            <input type="checkbox" name="rem" value="true" ${cookie.rem.value!=null?'checked':''}>
                                                            <label>Remember me</label>
                                                            <a href="#">Forgot Password?</a>
                                                        </div>
                                                        <button type="submit">Login</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="lg2" class="tab-pane ${param.regis!=null?'active':''}">
                                        <div class="login-form-container">
                                            <div class="login-register-form">
                                                <form action="${pageContext.request.contextPath}/user?action=register" method="post" onsubmit="CheckRePassword(event)">
                                                    <input type="text" name="username" placeholder="Username" required="true">
                                                    <input type="password" name="password" placeholder="Password" id="pass" required="true" onkeyup="document.getElementById('repass').setCustomValidity('')">
                                                    <input type="password" name="repassword" placeholder="Re-Password" id="repass" required="true" onkeyup="this.setCustomValidity('')">
                                                    <input name="user_email" placeholder="Email" type="email" id="email" value="${param.regisEmail}">
                                                    <input name="address" placeholder="Address" type="text">
                                                    <input name="phone" placeholder="Phone" type="text" pattern="[0]{1}[0-9]{9}">
                                                    <div class="button-box">
                                                        <button type="submit">Register</button>
                                                    </div>
                                                    <c:if test="${param.emailTaken!=null}">
                                                        <c:set value="true" var="check"/>
                                                        <c:if test="${param.emailTaken.equals(check)}">
                                                            <p class="alert alert-warning alert-warning" style="margin-top: 10px">Email already taken! Try another email</p>
                                                        </c:if>
                                                    </c:if>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <c:if test="${param.modalMess!=null}">
                <jsp:include page="../Common/modalMessage.jsp"></jsp:include>
                    <script>
                        window.onload = () => {
                            $('#modalMessContent').text("${param.modalMess}");
                            $('#myModelTitle').text("${param.modalTitle}");
                            const myModal = new bootstrap.Modal('#myMessModal');
                            myModal.show();
                        };
                </script>
            </c:if>
            <jsp:include page="../Common/footer.jsp"></jsp:include>
            </div>

            <!-- All JS is here
        ============================================ -->

            <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-3.11.7.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-v3.6.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-migrate-v3.3.2.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/vendor/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/vendor/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/slick.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/jquery.syotimer.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/jquery.nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/wow.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/jquery-ui.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/magnific-popup.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/sticky-sidebar.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/easyzoom.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/scrollup.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins/ajax-mail.js"></script>
        <!-- Main JS -->
        <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

    </body>


    <!-- Mirrored from htmldemo.net/norda/norda/login-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Jun 2024 13:44:31 GMT -->
</html>

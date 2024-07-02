
<%-- 
    Document   : homeHeader
    Created on : Jun 16, 2024, 11:56:18 PM
    Author     : HP
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header class="header-area bg-white">
    <div class="header-large-device section-padding-2">
        <div class="header-top header-top-ptb-3 bg-black">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="header-offer-wrap-4 text-center">
                            <p><span class="uppercase">Free shipping</span> worldwide for orders over <span class="amount">$159.</span> <a href="#">Learn More</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-middle">
            <div class="container">
                <div class="border-bottom-1 header-top-ptb-4">
                    <div class="row align-items-center">
                        <div class="col-xl-4 col-lg-5">
                            <div class="search-wrap-2">
                                <form action="${pageContext.request.contextPath}/Product">
                                    <input type="text" hidden name="action" value="searchFilter">
                                    <input placeholder="Type anything & Hit enter" name="searchKey" type="text">
                                    <button class="button-search"><i class="icon-magnifier"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-2">
                            <div class="logo text-center">
                                <a href="${pageContext.request.contextPath}/Home"><img style="width: 35%" src="${pageContext.request.contextPath}/assets/images/logo/logo-2.png" alt="logo"></a>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-5">
                            <div class="header-top-right">
                                <div class="header-login-regi">
                                    <c:if test="${sessionScope.user==null}">
                                        <a href="${pageContext.request.contextPath}/View/User/loginRegister.jsp"><i class="icon-user"></i> Log In / Register</a>
                                    </c:if>
                                    <c:if test="${sessionScope.user!=null}">
                                        <div class="main-menu main-menu-padding-2 main-menu-center main-menu-font-width-400 main-menu-lh-4 main-menu-hover-semibold ">
                                            <nav>
                                                <ul>
                                                    <li><a class="active" href="${pageContext.request.contextPath}/View/User/myAccount.jsp" ><i class="icon-user"></i> ${sessionScope.user.user_name} </a>
                                                        <ul class="sub-menu-style">
                                                            <li><a href="${pageContext.request.contextPath}/View/User/myAccount.jsp"><i class="icon-folder-alt"></i> My Account </a></li>
                                                            <li><a href="${pageContext.request.contextPath}/user?action=logout"> <i class="icon-logout"></i>Logout</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>

                                    </c:if>
                                </div>
                                <div class="header-cart-2" >
                                    <a class="cart-active" href="#"><i class="icon-basket-loaded"></i> <span class="black">${sessionScope.cartSize}</span>
                                        <fmt:setLocale value = "en_US"/>
                                        <fmt:formatNumber  value="${sessionScope.cart.getTotalMoney()}" type="currency"></fmt:formatNumber> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="main-menu main-menu-padding-2 main-menu-center main-menu-font-width-400 main-menu-lh-4 main-menu-hover-semibold main-menu-hover-border">
                            <nav>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/Home">HOME </a>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/Product">SHOP </a>
                                    <li><a href="${pageContext.request.contextPath}/Cart">MY CART </a></li>
                                    <li><a href="contact.html">CONTACT </a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-small-device small-device-ptb-1">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-5">
                    <div class="mobile-logo">
                        <a href="Home">
                            <img alt="" style="width:30%" src="${pageContext.request.contextPath}/assets/images/logo/logo-2.png">
                        </a>
                    </div>
                </div>
                <div class="col-7">
                    <div class="header-action header-action-flex">
                        <div class="same-style-2 same-style-2-font-inc">
                            <a href="login-register.html"><i class="icon-user"></i></a>
                        </div>
                        <div class="same-style-2 same-style-2-font-inc">
                            <a href="wishlist.html"><i class="icon-heart"></i><span class="pro-count black">03</span></a>
                        </div>
                        <div class="same-style-2 same-style-2-font-inc header-cart" id=header_cart">
                            <a class="cart-active" href="#">
                                <i class="icon-basket-loaded"></i><span class="pro-count black">${sessionScope.cartSize}</span>
                            </a>
                        </div>
                        <div class="same-style-2 main-menu-icon">
                            <a class="mobile-header-button-active" href="#"><i class="icon-menu"></i> </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
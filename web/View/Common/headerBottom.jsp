<%-- 
    Document   : headerBottom
    Created on : Jun 16, 2024, 11:02:06 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header-bottom">
    <div class="row align-items-center">
        <div class="col-xl-2 col-lg-2">
            <div class="logo">
                <a href="Home.jsp"><img src="/Abibas/assets/images/logo/logo-2.png" alt="logo"></a>
            </div>
        </div>
        <div class="col-xl-8 col-lg-7">
            <div class="main-menu main-menu-padding-1 main-menu-lh-1">
                <nav>
                    <ul>
                        <li><a href="Home.jsp">HOME </a>
                        </li>
                        <li><a href="shop.html">SHOP </a>
                        </li>
                        <li><a href="#">PAGES </a>
                        </li>
                        <li><a href="contact.html">CONTACT </a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="col-xl-2 col-lg-3">
            <div class="header-action header-action-flex header-action-mrg-right">
                <div class="same-style-2 header-search-1">
                    <a class="search-toggle" href="#">
                        <i class="icon-magnifier s-open"></i>
                        <i class="icon_close s-close"></i>
                    </a>
                    <div class="search-wrap-1">
                        <form action="#">
                            <input placeholder="Search products…" type="text">
                            <button class="button-search"><i class="icon-magnifier"></i></button>
                        </form>
                    </div>
                </div>
                <div class="same-style-2">
                    <a href="wishlist.html"><i class="icon-user"></i></a>
                </div>
                <div class="same-style-2">
                    <a href="login-register.html"><i class="icon-heart"></i><span class="pro-count red">03</span></a>
                </div>
                <div class="same-style-2 header-cart">
                    <a class="cart-active" href="#">
                        <i class="icon-basket-loaded"></i><span class="pro-count red">02</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

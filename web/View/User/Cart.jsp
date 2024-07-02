<%-- 
    Document   : Cart
    Created on : Jun 20, 2024, 5:18:32 PM
    Author     : HP
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">


    <!-- Mirrored from htmldemo.net/norda/norda/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Jun 2024 13:45:17 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Norda - Minimal eCommerce HTML Template</title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/favicon.png">
        <link id="contextPathHolder" data-contextPath="${pageContext.request.contextPath}"/>
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
                                <li class="active"> Cart Page </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="cart-main-area pt-115 pb-120">
                    <div class="container" style="margin-left:  100px; margin-right: 100px; max-width: 90%">
                        <h3 class="cart-page-title">Your cart items</h3>
                        <div class="row">
                            <div class=" col-9">
                                <form action="#">
                                    <div class="table-content table-responsive cart-table-content" >

                                        <table id="tableCont">
                                            <thead>
                                                <tr>
                                                    <th>Image</th>
                                                    <th>Product Name</th>
                                                    <th>Until Price</th>
                                                    <th>Size</th>
                                                    <th>Color</th>
                                                    <th>Qty</th>
                                                    <th>Subtotal</th>
                                                    <th>action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tableBody">
                                            <c:forEach items="${sessionScope.cart.items}" var="i">
                                                <tr>
                                                    <td class="product-thumbnail">
                                                        <a href="${pageContext.request.contextPath}/Product?productId=${i.product.productID}&action=productdetail">
                                                            <img src="${i.product.productImg}" alt=""></a>
                                                    </td>
                                                    <td class="product-name"><a href="${pageContext.request.contextPath}/Product?productId=${i.product.productID}&action=productdetail">
                                                            ${i.product.productName}</a></td>

                                                    <td class="product-price-cart" >
                                                        <span class="amount ">$${i.product.getProductPriceFloat()}</span>
                                                        <input type="hidden" id="productPriceCart" value="${i.product.getProductPriceFloat()}">
                                                    </td>
                                                    <td class="product-size">

                                                        <select name="size" style="width: 40px; height: 40px" class="dropdown-item">
                                                            <c:forEach items="${i.getAllSize()}" var="s">
                                                                <option value="${s.size}" ${i.size.equals(s.size)?'selected':''}>${s.size}</option>
                                                            </c:forEach>
                                                        </select>

                                                    </td>
                                                    <td class="product-color">
                                                        <select name="color" class="dropdown-item-text dropdown-center" style="width: 90px; height: 40px" >
                                                            <c:forEach items="${i.getAllColor()}" var="c">
                                                                <option value="${c.color}" ${i.color.equals(c.color)?'selected':''} style="background: ${c.color}">
                                                                    ${c.color}
                                                                <div style="width: 20px;height: 20px;background:${c.color}"></div>
                                                                </option>
                                                            </c:forEach>
                                                        </select>
                                                    </td>
                                                    <td class="product-quantity pro-details-quality">
                                                        <div class="cart-plus-minus">
                                                            <input class="cart-plus-minus-box" type="text" name="qtybutton" max="${i.product.getProductQuantity()}" value="${i.quantity}">
                                                        </div>
                                                    </td>
                                                    <td class="product-subtotal">
                                                        <input type="hidden" value="${i.quantity*i.product.getProductPriceFloat()}" class="product_subtotal">
                                                        <fmt:setLocale value = "en_US"/>
                                                        <fmt:formatNumber  value="${i.quantity*i.product.getProductPriceFloat()}" type="currency"></fmt:formatNumber>
                                                        </td>
                                                        <td class="product-remove">
                                                            <input type="hidden" id="productIDInput" value="${i.product.productID}">
                                                        <div class="DeleteFromCart"><i class="icon_close"></i></div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="cart-shiping-update-wrapper">
                                            <div class="cart-shiping-update">
                                                <a href="${pageContext.request.contextPath}/Home">Continue Shopping</a>
                                            </div>
                                            <div class="cart-clear">
                                                <a href="${pageContext.request.contextPath}/Cart?action=clearCart">Clear Cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-3">
                            <div class="grand-totall" id="cartGrandTotal">
                                <div class="title-wrap">
                                    <h4 class="cart-bottom-title section-bg-gary-cart">Cart Total</h4>
                                </div>
                                <h5>Total products <span id="beforeCheckOutPricetext">
                                        <input type="hidden"  id="beforeCheckOut" value="${sessionScope.cart.getTotalMoney()}">
                                        <fmt:setLocale value = "en_US"/>
                                        <fmt:formatNumber  value="${sessionScope.cart.getTotalMoney()}" type="currency"></fmt:formatNumber>
                                        </span></h5>
                                    <div class="total-shipping">
                                        <h5>Total shipping</h5>
                                        <ul id="shipFee">
                                            <li><input type="radio" name="shipFee"  value="20"> Standard <span>$20.00</span></li>
                                            <li><input type="radio" name="shipFee" value="30"> Express <span>$30.00</span></li>
                                        </ul>
                                    </div>
                                    <h4 class="grand-totall-title">Grand Total <span id="checkOutPrice">
                                            <input type="hidden" id="checkOutPriceInput" value="${sessionScope.cart.getTotalMoney()}">
                                        <fmt:setLocale value = "en_US"/>
                                        <fmt:formatNumber  value="${sessionScope.cart.getTotalMoney()}" type="currency"></fmt:formatNumber></span></h4>
                                    <a href="#">Proceed to Checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="subscribe-area bg-gray pt-115 pb-115">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 col-md-5">
                                <div class="section-title">
                                    <h2>keep connected</h2>
                                    <p>Get updates by subscribe our weekly newsletter</p>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7">
                                <div id="mc_embed_signup" class="subscribe-form">
                                    <form id="mc-embedded-subscribe-form" class="validate subscribe-form-style" novalidate="" target="_blank" name="mc-embedded-subscribe-form" method="post" action="https://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef">
                                        <div id="mc_embed_signup_scroll" class="mc-form">
                                            <input class="email" type="email" required="" placeholder="Enter your email address" name="EMAIL" value="">
                                            <div class="mc-news" aria-hidden="true">
                                                <input type="text" value="" tabindex="-1" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef">
                                            </div>
                                            <div class="clear">
                                                <input id="mc-embedded-subscribe" class="button" type="submit" name="subscribe" value="Subscribe">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
    <!-- Mirrored from htmldemo.net/norda/norda/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Jun 2024 13:45:17 GMT -->
</html>

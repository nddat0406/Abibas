
<%-- 
    Document   : Home
    Created on : Jun 16, 2024, 8:49:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html class="no-js" lang="en">


    <!-- Mirrored from htmldemo.net/norda/norda/index-5.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Jun 2024 13:43:58 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Norda - Minimal eCommerce HTML Template</title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/favicon.png">

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
            function getModalInfor(pID) {
                $('#myModal').modal('show');
                $('#modalContent').load("${pageContext.request.contextPath}/Product?action=getModalInfo&productID=" + pID + " #modalContent");
            }
            ;
        </script>
    </head>

    <body class="bg-gray-5">

        <div class="main-wrapper box-layout-width">
            <jsp:include page="../Common/HomePageCommon/homeHeader.jsp"></jsp:include>
                <!-- mini cart start -->
            <jsp:include page="../Common/miniCart.jsp"></jsp:include>
                <!-- Mobile menu start -->
            <jsp:include page="../Common/mobileMenu.jsp"></jsp:include>
                <div class="slider-area bg-white">
                    <div class="hero-slider-active-1 nav-style-2 nav-style-2-modify dot-style-2 dot-style-2-position-3 dot-style-2-active-black">
                        <div class="single-hero-slider single-animation-wrap slider-height-1 custom-d-flex custom-align-item-center bg-img hm2-slider-bg res-black-overly-xs" style="background-image:url(${pageContext.request.contextPath}/assets/images/slider/hm-5-slider-1.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <div class="hero-slider-content-2 hero-slider-content-hm5 slider-animated-1">
                                        <h1 class="animated"><span>Realtree</span> <br>Print Belt Bagn</h1>
                                        <p class="animated">Lorem ipsum dolor sit amet, consectetur adipis elit. Nunc imperdiet, nulla.</p>
                                        <div class="btn-style-2">
                                            <a class="animated" href="${pageContext.request.contextPath}/Product">explore now <i class="icon-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-hero-slider single-animation-wrap slider-height-1 custom-d-flex custom-align-item-center bg-img hm2-slider-bg res-black-overly-xs" style="background-image:url(${pageContext.request.contextPath}/assets/images/slider/hm-5-slider-2.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <div class="hero-slider-content-2 hero-slider-content-hm5 slider-animated-1">
                                        <h1 class="animated"><span>Realtree</span> <br>Print Belt Bagn</h1>
                                        <p class="animated">Lorem ipsum dolor sit amet, consectetur adipis elit. Nunc imperdiet, nulla.</p>
                                        <div class="btn-style-2">
                                            <a class="animated" href="${pageContext.request.contextPath}/Product">explore now <i class="icon-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-area bg-white">
                <div class="container-fluid p-0">
                    <div class="row g-0">
                        <div class="col-lg-6 col-md-6">
                            <div class="banner-wrap mb-30">
                                <div class="banner-img banner-img-zoom">
                                    <a href="${pageContext.request.contextPath}/Product"><img src="${pageContext.request.contextPath}/assets/images/banner/banner-10.jpg" alt=""></a>
                                </div>
                                <div class="banner-content-11">
                                    <h2><span>Zara</span> Pattern Boxed <br>Underwear</h2>
                                    <p>Stretch, & Fress cool</p>
                                    <div class="btn-style-4">
                                        <a class="hover-red" href="${pageContext.request.contextPath}/Product">Shop now <i class="icon-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="banner-wrap mb-30">
                                <div class="banner-img banner-img-zoom">
                                    <a href="${pageContext.request.contextPath}/Product"><img src="${pageContext.request.contextPath}/assets/images/banner/banner-11.jpg" alt=""></a>
                                </div>
                                <div class="banner-content-11">
                                    <h2><span>Basic</span> Color<br>Caps</h2>
                                    <p>Less is more!</p>
                                    <div class="btn-style-4">
                                        <a class="hover-red" href="${pageContext.request.contextPath}/Product">Shop now <i class="icon-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="service-area bg-white pt-45">
                <div class="container">
                    <div class="border-bottom-3 pb-50">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                                <div class="single-service-wrap mb-30">
                                    <div class="service-icon service-icon-black">
                                        <i class="icon-cursor"></i>
                                    </div>
                                    <div class="service-content">
                                        <h3>Free Shipping</h3>
                                        <span>Orders over $100</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                                <div class="single-service-wrap mb-30">
                                    <div class="service-icon service-icon-black">
                                        <i class="icon-reload"></i>
                                    </div>
                                    <div class="service-content">
                                        <h3>Free Returns</h3>
                                        <span>Within 30 days</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                                <div class="single-service-wrap mb-30">
                                    <div class="service-icon service-icon-black">
                                        <i class="icon-lock"></i>
                                    </div>
                                    <div class="service-content">
                                        <h3>100% Secure</h3>
                                        <span>Payment Online</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                                <div class="single-service-wrap mb-30">
                                    <div class="service-icon service-icon-black">
                                        <i class="icon-tag"></i>
                                    </div>
                                    <div class="service-content">
                                        <h3>Best Price</h3>
                                        <span>Guaranteed</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-area bg-white pt-115">
                <div class="container">
                    <div class="border-bottom-3 product-pb-80">
                        <div class="section-title-2 text-center mb-45">
                            <h2><span>Best</span> Seller</h2>
                            <p>Top our product best selling</p>
                        </div>
                        <div class="tab-btn-wrap mb-40">
                            <div class="btn-style-2">
                                <a class="animated" href="shop.html">see all product <i class="icon-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="tab-content jump">
                            <div id="product-1" class="tab-pane active">
                                <div class="row">
                                    <c:forEach items="${requestScope.topTrend}" var="top">
                                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="single-product-wrap mb-35">
                                                <div class="product-img product-img-zoom mb-15">
                                                    <a href="${pageContext.request.contextPath}/Product?productId=${top.productID}&action=productdetail">
                                                        <img src="${top.productImg}" alt="">
                                                    </a>
                                                    <div class="product-action-2 tooltip-style-2">
                                                        <button title="Wishlist"><i class="icon-heart"></i></button>
                                                        <button title="Quick View" value="${top.productID}" data-bs-toggle="modal" data-bs-target="#myModal" onclick="getModalInfor(this.value)"><i class="icon-size-fullscreen icons"></i></button>

                                                    </div>
                                                </div>
                                                <div class="product-content-wrap-2 text-center">
                                                    <h3><a href="${pageContext.request.contextPath}/Product?productId=${top.productID}&action=productdetail">${top.productName}</a></h3>
                                                    <div class="product-price-2">
                                                        <span>${top.productPrice}</span>
                                                    </div>
                                                </div>
                                                <div class="product-content-wrap-2 product-content-position text-center">

                                                    <h3><a href="${pageContext.request.contextPath}/Product?productId=${top.productID}&action=productdetail">${top.productName}</a></h3>
                                                    <div class="product-price-2">
                                                        <span>${top.productPrice}</span>
                                                    </div>
                                                    <div class="pro-add-to-cart">
                                                        <button title="Add to Cart" onclick="getModalInfor(${top.productID})">Add To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-area bg-white pt-115 pb-110">
                <div class="container">
                    <div class="section-title-2 text-center mb-45">
                        <h2><span>New</span> Arrivals</h2>
                        <p>Chúng tôi luôn cập nhật những xu hướng mới nhất.</p>
                    </div>
                    <div class="product-slider-active dot-style-2 dot-style-2-position-static dot-style-2-mrg-1 dot-style-2-active-black">
                        <c:forEach items="${requestScope.top10}" var="newP">
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                <div class="single-product-wrap mb-35">
                                    <div class="product-img product-img-zoom mb-15">
                                        <a href="${pageContext.request.contextPath}/Product?productId=${newP.productID}&action=productdetail">
                                            <img src="${newP.productImg}" alt="">
                                        </a>
                                        <div class="product-action-2 tooltip-style-2">
                                            <button title="Wishlist"><i class="icon-heart"></i></button>
                                            <button title="Quick View" value="${newP.productID}" data-bs-toggle="modal" data-bs-target="#myModal" onclick="getModalInfor(this.value)"><i class="icon-size-fullscreen icons"></i></button>

                                        </div>
                                    </div>
                                    <div class="product-content-wrap-2 text-center">
                                        <h3><a href="${pageContext.request.contextPath}/Product?productId=${newP.productID}&action=productdetail">${newP.productName}</a></h3>
                                        <div class="product-price-2">
                                            <span>${newP.productPrice}</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap-2 product-content-position text-center">

                                        <h3><a href="${pageContext.request.contextPath}/Product?productId=${newP.productID}&action=productdetail">${newP.productName}</a></h3>
                                        <div class="product-price-2">
                                            <span>${newP.productPrice}</span>
                                        </div>
                                        <div class="pro-add-to-cart">
                                            <button title="Add to Cart" onclick="getModalInfor(${newP.productID})">Add To Cart</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="banner-area section-padding-2 bg-white pb-85">
                <div class="container-fluid p-0">
                    <div class="row g-0">
                        <div class="col-lg-8 col-md-8">
                            <div class="banner-wrap banner-wrap-mrg-1 mb-30">
                                <div class="banner-img banner-img-zoom">
                                    <a href="${pageContext.request.contextPath}/Product"><img src="${pageContext.request.contextPath}/assets/images/banner/banner-12.jpg" alt=""></a>
                                </div>
                                <div class="banner-content-12">
                                    <h2>Theloke Charm <br>Perfume</h2>
                                    <p>Stretch, fresh-cool help you alway <br>comfortable</p>
                                    <span>Start from</span>
                                    <h3>$59.25</h3>
                                    <div class="btn-style-1">
                                        <a class="animated btn-1-padding-4" href="${pageContext.request.contextPath}/Product">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="banner-wrap banner-wrap-mrg-2 mb-30">
                                <div class="banner-img banner-img-zoom">
                                    <a href="${pageContext.request.contextPath}/Product"><img src="${pageContext.request.contextPath}/assets/images/banner/banner-13.jpg" alt=""></a>
                                </div>
                                <div class="banner-content-12">
                                    <h2>Double Frame <br>Sunglasses</h2>
                                    <p>Less is more, Minimalist!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="../Common/HomePageCommon/HomeFooter.jsp"></jsp:include>
            <c:if test="${modalMess!=null}">
                <jsp:include page="../Common/modalMessage.jsp"></jsp:include>
                    <script>
                        window.onload = () => {
                            $('#modalMessContent').text("${modalMess}");
                            $('#myModelTitle').text("${modalTtle}");
                            const myModal = new bootstrap.Modal('#myMessModal');
                            myModal.show();
                        };
                </script>
            </c:if>
            <!-- Modal -->
            <jsp:include page="../Common/HomeProductModal.jsp"></jsp:include>
                <!-- Modal end -->
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


    <!-- Mirrored from htmldemo.net/norda/norda/index-5.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Jun 2024 13:44:20 GMT -->
</html>


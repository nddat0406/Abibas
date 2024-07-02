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
                                            <a class="animated" href="product-details.html">explore now <i class="icon-arrow-right"></i></a>
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
                                            <a class="animated" href="product-details.html">explore now <i class="icon-arrow-right"></i></a>
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
                                    <a href="product-details.html"><img src="${pageContext.request.contextPath}/assets/images/banner/banner-10.jpg" alt=""></a>
                                </div>
                                <div class="banner-content-11">
                                    <h2><span>Zara</span> Pattern Boxed <br>Underwear</h2>
                                    <p>Stretch, & Fress cool</p>
                                    <div class="btn-style-4">
                                        <a class="hover-red" href="product-details.html">Shop now <i class="icon-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="banner-wrap mb-30">
                                <div class="banner-img banner-img-zoom">
                                    <a href="product-details.html"><img src="${pageContext.request.contextPath}/assets/images/banner/banner-11.jpg" alt=""></a>
                                </div>
                                <div class="banner-content-11">
                                    <h2><span>Basic</span> Color<br>Caps</h2>
                                    <p>Less is more!</p>
                                    <div class="btn-style-4">
                                        <a class="hover-red" href="product-details.html">Shop now <i class="icon-arrow-right"></i></a>
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
                            <div class="tab-style-2 nav">
                                <a class="active" href="#product-1" data-bs-toggle="tab">All Products</a>
                                <a href="#product-2" data-bs-toggle="tab"> Clothing </a>
                                <a href="#product-3" data-bs-toggle="tab">Shoes </a>
                                <a href="#product-4" data-bs-toggle="tab">Bags</a>
                                <a href="#product-5" data-bs-toggle="tab">Accessorirs</a>
                            </div>
                            <div class="btn-style-2">
                                <a class="animated" href="shop.html">see all product <i class="icon-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="tab-content jump">
                            <div id="product-1" class="tab-pane active">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-13.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-14.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-15.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-16.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-17.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-18.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-19.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-20.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="product-2" class="tab-pane">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-20.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-19.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-18.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-17.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-16.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-15.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-14.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-13.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="product-3" class="tab-pane">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-16.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-15.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-14.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-13.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-20.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-19.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-18.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-17.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="product-4" class="tab-pane">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-14.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-13.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-16.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-15.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-18.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-17.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-20.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-19.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="product-5" class="tab-pane">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-15.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$20.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-13.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-16.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$35.45</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-14.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$45.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-19.jpg" alt="">
                                                </a>
                                                <span class="pro-badge left bg-red">-20%</span>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span class="new-price">$35.45</span>
                                                    <span class="old-price">$45.80</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-17.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$55.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-20.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$65.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-product-wrap mb-35">
                                            <div class="product-img product-img-zoom mb-15">
                                                <a href="product-details.html">
                                                    <img src="${pageContext.request.contextPath}/assets/images/product/product-18.jpg" alt="">
                                                </a>
                                                <div class="product-action-2 tooltip-style-2">
                                                    <button title="Wishlist"><i class="icon-heart"></i></button>
                                                    <button title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="icon-size-fullscreen icons"></i></button>
                                                    <button title="Compare"><i class="icon-refresh"></i></button>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                            </div>
                                            <div class="product-content-wrap-2 product-content-position text-center">
                                                <div class="product-rating-wrap">
                                                    <div class="product-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star gray"></i>
                                                    </div>
                                                    <span>(2)</span>
                                                </div>
                                                <h3><a href="product-details.html">Make Thing Happen T-Shirt</a></h3>
                                                <div class="product-price-2">
                                                    <span>$75.50</span>
                                                </div>
                                                <div class="pro-add-to-cart">
                                                    <button title="Add to Cart">Add To Cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
                        <p>We alway up to date new arrivals follows trending</p>
                    </div>
                    <div class="product-slider-active dot-style-2 dot-style-2-position-static dot-style-2-mrg-1 dot-style-2-active-black">
                        <div class="product-plr-1">
                            <div class="single-product-wrap mb-35">
                                <div class="product-img product-img-zoom mb-20">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/assets/images/product/product-9.jpg" alt="">
                                    </a>
                                </div>
                                <div class="product-content-2 text-center">
                                    <h3><a href="product-details.html"><span class="blod">Men</span> Clothings <span class="available-product">(56)</span></a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="product-plr-1">
                            <div class="single-product-wrap mb-35">
                                <div class="product-img product-img-zoom mb-20">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/assets/images/product/product-10.jpg" alt="">
                                    </a>
                                </div>
                                <div class="product-content-2 text-center">
                                    <h3><a href="product-details.html"><span class="blod">Women</span> Shoes <span class="available-product">(55)</span></a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="product-plr-1">
                            <div class="single-product-wrap mb-35">
                                <div class="product-img product-img-zoom mb-20">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/assets/images/product/product-11.jpg" alt="">
                                    </a>
                                </div>
                                <div class="product-content-2 text-center">
                                    <h3><a href="product-details.html"><span class="blod">Kid</span> Caps <span class="available-product">(56)</span></a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="product-plr-1">
                            <div class="single-product-wrap mb-35">
                                <div class="product-img product-img-zoom mb-20">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/assets/images/product/product-12.jpg" alt="">
                                    </a>
                                </div>
                                <div class="product-content-2 text-center">
                                    <h3><a href="product-details.html"><span class="blod">Women</span> Accessories <span class="available-product">(24)</span></a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="product-plr-1">
                            <div class="single-product-wrap mb-35">
                                <div class="product-img product-img-zoom mb-20">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/assets/images/product/product-11.jpg" alt="">
                                    </a>
                                </div>
                                <div class="product-content-2 text-center">
                                    <h3><a href="product-details.html"><span class="blod">Women</span> Shoes <span class="available-product">(55)</span></a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-area section-padding-2 bg-white pb-85">
                <div class="container-fluid p-0">
                    <div class="row g-0">
                        <div class="col-lg-8 col-md-8">
                            <div class="banner-wrap banner-wrap-mrg-1 mb-30">
                                <div class="banner-img banner-img-zoom">
                                    <a href="product-details.html"><img src="${pageContext.request.contextPath}/assets/images/banner/banner-12.jpg" alt=""></a>
                                </div>
                                <div class="banner-content-12">
                                    <h2>Theloke Charm <br>Perfume</h2>
                                    <p>Stretch, fresh-cool help you alway <br>comfortable</p>
                                    <span>Start from</span>
                                    <h3>$59.25</h3>
                                    <div class="btn-style-1">
                                        <a class="animated btn-1-padding-4" href="product-details.html">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="banner-wrap banner-wrap-mrg-2 mb-30">
                                <div class="banner-img banner-img-zoom">
                                    <a href="product-details.html"><img src="${pageContext.request.contextPath}/assets/images/banner/banner-13.jpg" alt=""></a>
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
            <div class="subscribe-area pt-115 bg-white pb-120 mb-20">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-5">
                            <div class="section-title-2">
                                <h2><span>Keep</span> Connected</h2>
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
            <jsp:include page="../Common/HomePageCommon/HomeFooter.jsp"></jsp:include>
                <!-- Modal -->
            <jsp:include page="../Common/HomePageCommon/HomeProductModal.jsp"></jsp:include>
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


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Title-->
    <title>Food | Home</title>
    <!-- Favicon-->
    <link rel="icon" href='<s:url value="/resources/dist/img/favicon.png"></s:url>' type="image/x-icon">   
       
    <c:import url="/css"></c:import>
    
</head>
<body class="wow-animation">
  <div id="page-loader">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
      </div>
    <div class="site" id="page">
        <!-- Header-->
<c:import url="/header"></c:import>
        <!-- Slider-->
        <section>
        
  <div class="jl-main-slider">
      <div class="slide" style="background-image: url('<s:url value="/resources/dist/img/slider-2.jpg"></s:url>');"> 
    <div class="container"><div class="row"><div class="col col-md-6 slide-caption">      
      <div class="slide-title"><span class="jl-title-info">Alway Tasty Food</span><h2>Special Offer</h2></div><div class="slide-subtitle"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p></div>
      <div class="btns"> <a href='<s:url value="/detail/2"></s:url>' class="btn btn-lg margin-top-15">Order Now</a></div></div></div></div>
      </div>
      <div class="slide" style="background-image: url('<s:url value="/resources/dist/img/slider-1.jpg"></s:url>');">

      <div class="container"><div class="row"><div class="col col-lg-6 slide-caption">
        
        <div class="slide-title"><span class="jl-title-info">Alway Tasty Food</span><h2>Fresh & hot</h2></div><div class="slide-subtitle"><p>Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat.</p></div>
        <div class="btns"> <a href='<s:url value="/detail/11"></s:url>' class="btn btn-lg margin-top-15">Order Now</a></div></div></div></div>
  </div>
  </div>
  
        </section>
<!-- Feature box -->
<section class="jl-feature-box padding-top-80 padding-sm-top-50">
<div class="container">
  <div class="row">
  <div class="col-md-6 wow-outer">
    <div class="feature-box-img feature-box-large bg-red color-white wow fadeInUp delay-01" style="background-image: url('<s:url value="/resources/dist/img/feature-box1.jpg"></s:url>');">
    <a href="shop-page.html" class="feature-box-link"></a>
    <div class="feature-box-title">
     <h5>Try It Today</h5> 
     <h4>Most Popular Pizza</h4> 
    </div>
  </div>
  </div>

  <div class="col-md-6 wow-outer">
    <div class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01" style="background-image: url('<s:url value="/resources/dist/img/feature-box2.jpg"></s:url>');">
    <a href="shop-page.html" class="feature-box-link"></a>
    <div class="feature-box-title">
     <h5>Try It Today</h5> 
     <h4>More Fun More Taste</h4> 
    </div>
  </div>
  <div class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01" style="background-image: url('<s:url value="/resources/dist/img/feature-box3.jpg"></s:url>');">
    <a href="shop-page.html" class="feature-box-link"></a>
    <div class="feature-box-title">
     <h5>Try It Today</h5> 
     <h4>Fresh And Chili</h4> 
    </div>
  </div>
  </div>

  </div>
  </div>
</section>

    <!-- Food Menu -->
      <section class="jl-food-menu padding-top-50 padding-bottom-80 padding-sm-top-20 padding-sm-bottom-50">
<div class="container">
<div class="row justify-content-center margin-bottom-50">
<div class="col-md-8 text-center">
<div class="jl-headding-title">
<span class="jl-title-info">Alway Tasty Food</span>
<h2 class="">Choose & enjoy</h2>
<span class="jl-headding-separator"></span> 
<div class="jl-heading-desc">
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa Cum sociis natoque penatibus.</div>
</div>
</div>
</div>

<div class="row">
<div class="col-md-12">
  <ul class="jl-food-nav-tab nav nav-tabs margin-bottom-30">    
    <li class="nav-item"><a data-toggle="tab" href="#menu1" class="active"><i class="foodicon-burger"></i>Burgers</a></li>
  <li class="nav-item"><a data-toggle="tab" href="#menu2"><i class="foodicon-pizza-slice"></i>Pizzas</a></li>
    <li class="nav-item"><a data-toggle="tab" href="#menu3"><i class="foodicon-salad-1"></i>Vegetarian</a></li>
    <li class="nav-item"><a data-toggle="tab" href="#menu4"><i class="foodicon-lemonade"></i>Soft drinks</a></li>
    <li class="nav-item"><a data-toggle="tab" href="#menu5"><i class="foodicon-cupcake-1"></i>Desserts</a></li>
  </ul>

 
<div class="tab-content jl-tab-content">
      <div id="menu1" class="tab-pane active">
        <div class="jl-food-carousel slick-slider" data-arrows="true" data-loop="true" data-dots="true" data-swipe="true" data-items="1" data-xs-items="1" data-sm-items="2" data-md-items="3" data-lg-items="3" data-xl-items="5">
         <c:if test="${ not empty productdata}">
            <c:forEach items="${productdata}"  var="item" >
            <c:if test="${item.pcid==1}">
              <div class="col-md-4 jl-item-carousel wow fadeInUp">
                <figure><img src='<s:url value="${item.pphoto}"></s:url>' alt=""></figure>
                  <div class="caption">
                        <h5><a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a></h5>
                        <p class="text-italic">${item.pdesc}</p>
                        <p class="price">${item.pprice}</p>
                        <a href='<s:url value="/detail/${item.pid}"></s:url>' class="btn margin-top-15">Order Now</a>
                  </div>
                </div>
                </c:if>
              </c:forEach>
            </c:if>
        </div>
      </div>

   <div id="menu2" class="tab-pane">
        <div class="jl-food-carousel slick-slider" data-arrows="true" data-loop="true" data-dots="true" data-swipe="true" data-items="1" data-xs-items="1" data-sm-items="2" data-md-items="3" data-lg-items="3" data-xl-items="5">
         <c:if test="${ not empty productdata}">
            <c:forEach items="${productdata}"  var="item" >
            <c:if test="${item.pcid==2}">
              <div class="col-md-4 jl-item-carousel wow fadeInUp">
                <figure><img src='<s:url value="${item.pphoto}"></s:url>' alt=""></figure>
                  <div class="caption">
                        <h5><a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a></h5>
                        <p class="text-italic">${item.pdesc}</p>
                        <p class="price">${item.pprice}</p>
                        <a href='<s:url value="/detail/${item.pid}"></s:url>' class="btn margin-top-15">Order Now</a>
                  </div>
                </div>
                </c:if>
              </c:forEach>
            </c:if>
        </div>
      </div>

      <div id="menu3" class="tab-pane">
        <div class="jl-food-carousel slick-slider" data-arrows="true" data-loop="true" data-dots="true" data-swipe="true" data-items="1" data-xs-items="1" data-sm-items="2" data-md-items="3" data-lg-items="3" data-xl-items="5">
         <c:if test="${ not empty productdata}">
            <c:forEach items="${productdata}"  var="item" >
            <c:if test="${item.pcid==3}">
              <div class="col-md-4 jl-item-carousel wow fadeInUp">
                <figure><img src='<s:url value="${item.pphoto}"></s:url>' alt=""></figure>
                  <div class="caption">
                        <h5><a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a></h5>
                        <p class="text-italic">${item.pdesc}</p>
                        <p class="price">${item.pprice}</p>
                        <a href='<s:url value="/detail/${item.pid}"></s:url>' class="btn margin-top-15">Order Now</a>
                  </div>
                </div>
                </c:if>
              </c:forEach>
            </c:if>
        </div>
      </div>   

   <div id="menu4" class="tab-pane">
        <div class="jl-food-carousel slick-slider" data-arrows="true" data-loop="true" data-dots="true" data-swipe="true" data-items="1" data-xs-items="1" data-sm-items="2" data-md-items="3" data-lg-items="3" data-xl-items="5">
         <c:if test="${ not empty productdata}">
            <c:forEach items="${productdata}"  var="item" >
            <c:if test="${item.pcid==4}">
              <div class="col-md-4 jl-item-carousel wow fadeInUp">
                <figure><img src='<s:url value="${item.pphoto}"></s:url>' alt=""></figure>
                  <div class="caption">
                        <h5><a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a></h5>
                        <p class="text-italic">${item.pdesc}</p>
                        <p class="price">${item.pprice}</p>
                        <a href='<s:url value="/detail/${item.pid}"></s:url>' class="btn margin-top-15">Order Now</a>
                  </div>
                </div>
                 </c:if>
              </c:forEach>
            </c:if>
        </div>
      </div>
      <div id="menu5" class="tab-pane">
        <div class="jl-food-carousel slick-slider" data-arrows="true" data-loop="true" data-dots="true" data-swipe="true" data-items="1" data-xs-items="1" data-sm-items="2" data-md-items="3" data-lg-items="3" data-xl-items="5">
         <c:if test="${ not empty productdata}">
            <c:forEach items="${productdata}"  var="item" >
            <c:if test="${item.pcid==5}">
              <div class="col-md-4 jl-item-carousel wow fadeInUp">
                <figure><img src='<s:url value="${item.pphoto}"></s:url>' alt=""></figure>
                  <div class="caption">
                        <h5><a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a></h5>
                        <p class="text-italic">${item.pdesc}</p>
                        <p class="price">${item.pprice}</p>
                        <a href='<s:url value="/detail/${item.pid}"></s:url>' class="btn margin-top-15">Order Now</a>
                  </div>
                </div>
                </c:if>
              </c:forEach>
            </c:if>
        </div>
      </div>   

</div>
</div>
</div>
</div>
    </section>

<!-- Special Offer -->
      <section class="jl-special-offer bg-gray padding-80 padding-sm-50">
        <div class="container">
  <div class="row">
<div class="jl-promotion-slider" data-arrows="true" data-loop="true" data-dots="true" data-swipe="true" data-items="1" data-xs-items="1" data-sm-items="1" data-md-items="1" data-lg-items="1" data-xl-items="1">
      <div class="slide">
        <div class="slide-wrapper">
          <div class="slide-content">
        <div class="jl-pro-img margin-sm-bottom-20"><img src='<s:url value="/resources/dist/img/big-salad.png"></s:url>' alt=""></div>
            <div class="jl-pro-desc">
            <div class="jl-desc-wrapper">
              <h2 class="headline">Big Bowl Salad</h2>
              <div class="rating">
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                            </div>
<a class="reviews" href="">( 3 Customer Reviews )</a>
<div class="item-price">$10.00 <del>$15</del></div>
              <p class="jl-subtitle">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
</p>
<div class="tagcloud"> <span class="posted_in">Categories:</span><a href="#" rel="tag">Good taste</a>, <a href="#" rel="tag">Healthy</a>, <a href="#" rel="tag">Fresh</a>, <a href="#" rel="tag">Thin Crust</a></div>
<a class="btn margin-top-15" href='<s:url value="/detail/24"></s:url>'>Order Now</a></div>
</div>
</div>
      </div>
      </div>

      <div class="slide-wrapper">
        <div class="slide-content">
        <div class="jl-pro-img">
<img src='<s:url value="/resources/dist/img/big-pizza.png"></s:url>' alt="">
        </div>
           <div class="jl-pro-desc">
            <div class="jl-desc-wrapper">
              <h2 class="headline">Best Pizza Slide</h2>
              <div class="rating">
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                            </div>
<a class="reviews" href="#">( 2 Customer Reviews )</a>
<div class="item-price">$20.00 <del>$35</del></div>
              <p class="jl-subtitle">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
</p>
<div class="tagcloud"> <span class="posted_in">Categories:</span><a href="#" rel="tag">Good taste</a>, <a href="#" rel="tag">Healthy</a>, <a href="#" rel="tag">Fresh</a>, <a href="#" rel="tag">Thin Crust</a></div>
<a class="btn margin-top-15" href="single-shop-page.html">Order Now</a></div>
</div>
</div>
      </div>
      </div>
</div>
</div>
       </section>
      
 <!-- Food Blog -->

<!-- costumerComments -->
    <c:import url="/customerComments"></c:import>
<!-- Footer-->
 <c:import url="/footer"></c:import>
    </div>
    <div id="go-top"><i class="ti-angle-up"></i></div>
   <c:import url="/js"></c:import>
</body>
</html>

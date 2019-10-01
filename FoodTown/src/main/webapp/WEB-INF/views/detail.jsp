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
                   
                    <c:import url="/header"></c:import>
                 
                   <c:import url="/section"></c:import>
                  

                    <section class="jl-page-content blog blog-single blog-standard margin-100 margin-sm-50">
                        <div class="container">
                            <div class="row product-details">
                                <div class="image-column col-md-6 col-sm-12">
                                    <c:if test="${not empty product}">
                                        <figure class="image-box"><img src='<s:url value="${product.pphoto}"></s:url>' alt=""></figure>
                                </div>
                                <div class="info-column col-md-6 col-sm-12">
                                    <div class="details-header">
                                        <h4> ${product.ptitle}</h4>
                                        <div class="rating">
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        <a class="reviews" href="#">( 3 Customer Reviews )</a>
                                        <div class="item-price">$10.00 <del>${product.pprice}</del></div>
                                    </div>

                                    <div class="text">${product.pdesc}</div>
                              </c:if>      
                
             
                                    <div class="other-options clearfix">
                                        <div class="form-group stepper-type">
                                            <div class="stepper ">                          
                                                <input name="orderqty" class="form-control stepper-input" type="number" data-zeros="true" value="6" min="1" max="99"><span class="stepper-arrow up"></span><span class="stepper-arrow down"></span></div>
                                        </div>
                                    	
                                    	<a href='<s:url value="/order"></s:url>' class="btn margin-top-15">Order Now</a>
                                       </div>
                                
                                    <div class="tagcloud margin-top-20"> <span class="posted_in">Categories:</span><a href="#" rel="tag">Good taste</a>, <a href="#" rel="tag">Healthy</a>, <a href="#" rel="tag">Fresh</a>, <a href="#" rel="tag">Thin Crust</a></div>    
                                
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <!--tabs line start-->
                                    <section class="round-tabs margin-bottom-50">
                                        <ul class="nav nav-pills margin-bottom-20">
                                            <li>
                                                <a class="active" data-toggle="tab" href="#tab-01">Description</a>
                                            </li>
                                            <li class="">
                                                <a data-toggle="tab" href="#tab-02">Reviews</a>
                                            </li>
                                        </ul>
                                        <div class="panel-body">
                                            <div class="tab-content">
                                                <div id="tab-01" class="tab-pane active">
                                                    Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam. In quis scelerisque velit. Proin pellentesque neque ut scelerisque dapibus. Praesent elementum feugiat dignissim. Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam. In quis scelerisque velit. Proin pellentesque neque ut scelerisque dapibus. Praesent elementum feugiat dignissim. Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam.
                                                </div>
                                                <div id="tab-02" class="tab-pane">
                                                    <div class="entry-widget entry-comments clearfix">
                                                        <div class="entry-widget-title">
                                                            <h4><span class="comments--number">2</span> comments</h4>
                                                        </div>
                                                        <div class="entry-widget-content">
                                                            <ul class="comments-list">
                                                                <li class="comment-body">
                                                                    <div class="avatar">
                                                                        <img src="images/chef/author.jpg" alt="avatar">
                                                                    </div>
                                                                    <div class="comment">
                                                                        <h6>Long Makara</h6>
                                                                        <div class="date">Jan 20, 2019 - 08:07 pm</div>
                                                                        <p>Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.

                                                                        </p>
                                                                        <a class="reply" href="#">reply</a>
                                                                    </div>
                                                                </li>
                                                                <li class="comment-body">
                                                                    <div class="avatar">
                                                                        <img src="img/author.jpg" alt="avatar">
                                                                    </div>
                                                                    <div class="comment">
                                                                        <h6>Long Makara</h6>
                                                                        <div class="date">Jan 20, 2019 - 08:20 pm</div>
                                                                        <p>Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.

                                                                        </p>
                                                                        <a class="reply" href="#">reply</a>
                                                                    </div>
                                                                </li>

                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="entry-widget entry-add-comment mb-0 clearfix">
                                                        <div class="entry-widget-title">
                                                            <h4>Leave A Reply</h4>
                                                        </div>
                                                        <div class="entry-widget-content">
                                                            <form id="post-comment" class="mb-0">
                                                                <div class="row">
                                                                    <div class="col-sm-12 col-md-6  col-lg-6">
                                                                        <input type="text" class="form-control" placeholder="Name:">
                                                                    </div>
                                                                    <div class="col-sm-12 col-md-6 col-lg-6">
                                                                        <input type="email" class="form-control" placeholder="Email:">
                                                                    </div>
                                                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                                                        <textarea class="form-control mb-40" rows="2" placeholder="Comment:"></textarea>
                                                                    </div>
                                                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                                                        <button type="submit" class="btn btn--primary btn--inverse">Submit Comment</button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </div>
                            <div class="row product-grid">
                                <div class="col-md-12">
                                    <h3 class="related-title">You may also like</h3>
                                </div>
                                <!-- Product items -->
                                <div class="col-md-4">
                                    <div class="shop-entry text-center margin-bottom-30">
                                        <figure>
                                            <img src="img/burger1.jpg" alt="">
                                        </figure>
                                        <div class="caption">
                                            <h3><a class="link link-default" href="menu-single.html" tabindex="0">Le Pigeon Burger</a></h3>
                                            <p class="text-italic">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis</p>
                                            <p class="price">$12.50</p>
                                            <a class="btn btn-border btn-gray" href="#">Order Now</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Product items -->
                                <div class="col-md-4">
                                    <div class="shop-entry text-center margin-bottom-30">
                                        <figure>
                                            <img src="img/burger2.jpg" alt="">
                                        </figure>
                                        <div class="caption">
                                            <h3><a class="link link-default" href="menu-single.html" tabindex="0">Double Animal Style</a></h3>
                                            <p class="text-italic">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis</p>
                                            <p class="price">$12.50</p>
                                            <a class="btn btn-border btn-gray" href="#">Order Now</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Product items -->
                                <div class="col-md-4">
                                    <div class="shop-entry text-center margin-bottom-30">
                                        <figure>
                                            <img src="img/burger3.jpg" alt="">
                                        </figure>
                                        <div class="caption">
                                            <h3><a class="link link-default" href="menu-single.html" tabindex="0">Whiskey King Burger</a></h3>
                                            <p class="text-italic">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis</p>
                                            <p class="price">$12.50</p>
                                            <a class="btn btn-border btn-gray" href="#">Order Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Footer-->
                    <c:import url="/footer"></c:import>
                </div>
                <div id="go-top"><i class="ti-angle-up"></i></div>
                <c:import url="/js"></c:import>
            </body>

            </html>
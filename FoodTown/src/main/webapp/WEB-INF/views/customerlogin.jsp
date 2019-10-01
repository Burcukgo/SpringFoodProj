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
        <header>
        <c:import url="/header"></c:import>
         <c:import url="/section"></c:import>

<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
<div class="login-form">
                 <form action='<s:url value="/customerlogin"></s:url>' method="post">
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="email">Email address</label>
                            <input name="cstmail" type="email" id="email">
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="password">Password</label>
                            <input name="cstpassword" type="password" id="password">
                            <i class="ti-lock"></i>
                        </div>
                        <div class="row margin-bottom-30 rmber-area">
                            <div class="col-6">
                                <div class="custom-control custom-checkbox primary-checkbox mr-sm-2">
                                    <input name="cstremember" type="checkbox" class="custom-control-input" id="remember">
                                    <label class="custom-control-label" for="remember">Remember Me</label>
                                </div>
                            </div>
                        </div>
                        <div class="submit-btn-area">
                            <button id="form_submit" type="submit" class="btn btn-rounded btn-full">Submit</button>

                        </div>
                        <div class="form-footer text-center margin-top-30">
                            <p class="text-muted">Don't have an account? <a href='<s:url value="/customerregister"></s:url>'>Sign up</a></p>
                        </div>
                    </div>
                </form>
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
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
        
       <c:import url="/section"></c:import>

<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
      
   <table class="table table-bordered shop-cart margin-bottom-50">
      <thead>
         <tr>
            <th class="product-thumbnail">Iamge</th>
            <th class="product-name">Product</th>
            <th class="product-price text-center">Price</th>
            <th class="product-price text-center">Statu</th>
         </tr>
      </thead>
      <tbody>
         <tr class="cart_item">
          <c:if test="${not empty orderp}">
		  <c:forEach items="${orderp}" var="item">
            <td class="product-thumbnail"> <img src='<s:url value="${item.ophoto}"></s:url>' width="100" alt=""></td>
            <td class="product-name"><h5>Luger Burger</h5></td>
            <td class="product-price"> <span class="Price-amount">${item.oprice}</span></td>
            <td class="product-price"> <span class="Price-amount"></span></td>
            <td>
			<a href='<s:url value="/ordercreate/${item.oid}"></s:url>' class="btn btn-danger">Order</a>
			</td>
			<td>
		    <a href='<s:url value="/"></s:url>' class="btn btn-info">Cancel</a>
			</td>
			 </c:forEach>
		  </c:if>
          </tr>
           </tbody>
   </table>



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
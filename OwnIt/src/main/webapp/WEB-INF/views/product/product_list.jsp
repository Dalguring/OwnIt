<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">
	<link rel="stylesheet" href="resources/css/vendor.css" />
	<link rel="stylesheet" href="resources/css/style.css" />
	<title>Listing</title>
</head>
<style>
.items {
	display: block;
	width: 867px;
	padding-right: 15px;
	padding-left: 5px;
	height: 60px;
}
.items > a {
	margin-right: 41px;
	color: black;
	font-size: 0.8em;
}
.items > a#laptop {
	margin-right: 0px;
	color: black;
	font-size: 0.8em;
}
.items > a > img {
	width: 60px;
	height: 60px;
}
.btn btn-outline-secondary btn-sm dropdown-toggle {
	 width: 867px;
}
.style_icon {
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	transition: all 0.2s;
	-webkit-transition-delay: 0s;
	-moz-transition-delay: 0s;
	transition-delay: 0s;
	position: absolute;
	top: 0;
	right: 0;
	display: block;
	width: 1.875rem;
	height: 1.875rem;
	text-align: right;
	color: #6c757d; }

.product-like-full {
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	transition: all 0.2s;
	-webkit-transition-delay: 0s;
	-moz-transition-delay: 0s;
	transition-delay: 0s;
	position: absolute;
	top: 0;
	right: 0;
	display: block;
	width: 1.875rem;
	height: 1.875rem;
	text-align: right;
	color: red; }
.product-like-full::before {
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	transition: all 0.2s;
	-webkit-transition-delay: 0s;
	-moz-transition-delay: 0s;
	transition-delay: 0s;
	content: "\ebde";
	display: block;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	font-family: 'icomoon';
	font-size: 0.875rem;
	color: red; }
.product-like:hover::before {
	content: "\ebde";
	color: red;; }
.product-action > a:hover {
	cursor: pointer;
}

</style>
<script src="resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
//   function arrayByCategory(id) {
// 	$.ajax({
// 		type: 'GET',
// 		url: 'arrayByCategory?id='+id,
// 		dataType:'text',
// 		success: function(productList, cnt) {
// 			$.each(productList, function(i, product){
				
// 			});
// 		}
// 	});
// 	$(this).unbind();
//   }
$(function() {
	$('.product-like').click(function() {
		var heart = $(this);
		var index = $(this).attr('id').split('_')[1];
		$.ajax({
			url:'addLikeList',
			type:'GET',
			data:{
				product_idx:index
			},
			success:function(result){
				var a = $('#heart_' + result);
				a.removeClass('product-like');
				a.addClass('product-like-full');
				// heart 의 클래스를 .product-like-full로 변경
				//$('.product').load(location.href + " .product");
			}
		});
	});
});

$(function() {
	$('.product-like-full').click(function() {
		var heartFull = $(this);
		var index = $(this).attr('id').split('_')[1];
		$.ajax({
			url:'deleteLikeList',
			type:'GET',
			data:{
				product_idx:index
			},
			success:function(result){
				var b = $('#heartFull_' + result);
				b.removeClass('product-like-full');
				b.addClass('product-like');
			}
		});
	});
});

$(function() {
	$('.product-action').click(function() {
		var index = $(this).attr('id');
		$.ajax({
			url:'addCart',
			type:'GET',
			data:{
				product_idx:index
			},
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success:function(result){
				if(result == 'Added') {
					$('#'+index+' > a').html(result).css('color', 'blue');
				} else {
					$('#'+index+' > a').html(result).css('color', 'red');
				}
			}
		});
	});
});
</script>
  <body>
	<jsp:include page="../inc/top.jsp"></jsp:include>
    <!-- 페이지 레벨 / breadcrumbs -->
    <section class="breadcrumbs separator-bottom">
      <div class="container">
        <div class="row">
          <div class="col">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Listing</li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </section>

    <!-- 상품 목록 위 카테고리 관련 / listing -->
    <section class="pt-6">
      <div class="container">
        <div class="row justify-content-end">
          <div class="col-lg-9">
            <div class="row gutter-2 align-items-end">
              <div class="col-md-6">
                <h1 class="mb-0"><a href="product_list" style="color: black;">Tech</a></h1>
                <span class="eyebrow">${cnt } products</span>
              </div>
              <div class="items">
			   	<a href="listProductByCategory?id=스마트폰" id="phone" >
			   		<img src="./resources/img/product/phone1.png" alt="휴대폰">휴대폰
			   	</a>
			   	<a href="listProductByCategory?id=태블릿" id="tablet">
			   		<img src="./resources/img/product/tablet1.png">태블릿
			   	</a>
			   	<a href="listProductByCategory?id=스마트워치" id="watch">
			   		<img src="./resources/img/product/watch1.png">스마트워치
			   	</a>
		   		<a href="listProductByCategory?id=이어폰" id="earphone">
			   		<img src="./resources/img/product/earphone1.jpeg">이어폰
			   	</a>
			   	<a href="listProductByCategory?id=헤드폰" id="headphone">
			   		<img src="./resources/img/product/head1.png">헤드폰
			   	</a>
			   	<a href="listProductByCategory?id=노트북" id="laptop">
			   		<img src="./resources/img/product/mac1.png">노트북
			   	</a>
		     </div>
            </div>
          </div>
         <div class="col-md-6 text-md-right" style="margin-top: 25px">
           <select onchange="arrayByCategory(this.value)">
	          <option value="product_popular" id="product_popular" selected="selected">인기순</option>
	          <option value="price_high" id="price_high">가격높은순</option>
	          <option value="price_low" id="price_low">가격낮은순</option>
	          <option value="product_new" id="product_new">신제품</option>
           </select>
         </div>
       </div>
        <div class="row gutter-4">
		<!-- sidebar -->
        <jsp:include page="../inc/sidebar_product.jsp"></jsp:include>
        
          <!-- 상품 목록 리스팅 코드 / content -->
          <div class="col-lg-9">
            <div class="row gutter-2 gutter-lg-3">
             <c:forEach var="product" items="${productList }" >
              <div class="col-6 col-md-4">
                <div class="product">
                  <figure class="product-image">
                    <a href="product_detail?product_idx=${product.product_idx }&pageNum=${pageInfo.pageNum}">
                      <img src="resources/img//product/${product.image_original_file1 }" alt="Image" width="261.66px" height="261.66px">
                      <img src="resources/img//product/${product.image_original_file2 }" alt="Image" width="261.66px" height="261.66px">
                    </a>
                  </figure>
                  <div class="product-meta" style="width: 261.66px; height: 160.72px">
                  <h3 class="product-title"><a href="product_detail?product_idx=${product.product_idx }&pageNum=${pageInfo.pageNum}"><b>${product.product_brand }</b></a></h3>
                    <h3 class="product-title" style="height: 63px"><a href="product_detail?product_idx=${product.product_idx }&pageNum=${pageInfo.pageNum}">${product.product_name } </a></h3>
                    <div class="product-price">
                      <span><fmt:formatNumber value="${product.product_buy_price }" pattern="#,###"/> 원</span>
                      <span class="product-action" id="${product.product_idx }">
                        <a href="#!" style="color: #101010;">장바구니에 추가</a>
                      </span>
                    </div>
                    <c:choose>
                    	<c:when test="${product.myWish ne 0}">
                   			<a href="#!" class="product-like-full" id="heartFull_${product.product_idx }"></a>
                   		</c:when>
                   		<c:otherwise>
                   			<a href="#!" class="product-like" id="heart_${product.product_idx }"></a>
                   		</c:otherwise>
                   	</c:choose>
                    <a href="product_detail?product_idx=${product.product_idx }#review" class="style-icon" style="color: #101010; font-size: 0.85em;"><img src="resources/img/product/review_icon.png">Review</a>
                  </div>
                </div>
              </div>
              </c:forEach>
            </div>
            <div class="row">
              <div class="col">
                <nav class="d-inline-block">
                  <ul class="pagination">
                    <li class="page-item active"><a class="page-link" href="#!">1 <span class="sr-only">(current)</span></a></li>
                    <li class="page-item" aria-current="page"><a class="page-link" href="#!">2</a></li>
                    <li class="page-item"><a class="page-link" href="#!">3</a></li>
                    <li class="page-item"><a class="page-link" href="#!">4</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>


    <!-- footer -->
    <jsp:include page="../inc/footer.jsp"></jsp:include>


    <script src="resources/js/vendor.min.js"></script>
    <script src="resources/js/app.js"></script>
  </body>
</html>
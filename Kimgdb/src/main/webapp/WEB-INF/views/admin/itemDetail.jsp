<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
		<jsp:include page="../header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
		</jsp:include>
<body>

    <div id="wrapper">

    	<jsp:include page="../leftNav.jsp" flush="true">
		<jsp:param name="param" value="value1" />
		</jsp:include>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        
        <jsp:include page="../topNav.jsp" flush="true">
		<jsp:param name="param" value="value1" />
		</jsp:include>
		
        </div>
          <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>아이템 세부사항</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="dash">홈</a>
                    </li>
                    <li>
                        <a href="item">아이템</a>
                    </li>
                    <li class="active">
                        <strong>아이템 세부사항</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">

            <div class="row">
                <div class="col-lg-12">

                    <div class="ibox product-detail">
                        <div class="ibox-content">

                            <div class="row">
                                <div class="col-md-5">


                                    <div class="product-images">

                                        <div>
                                            <img alt="" src="https://www.ufo79.com/image/201708040022450632.jpg" class="img-responsive">
                                        </div>
                                        <div>
	                                        <img alt="" src="https://www.tis2018.ga/image/tisImage/PA/20_OlympicMarket.png" class="img-responsive">
                                        </div>
                                        <div>
											<img alt="" src="https://www.tis2018.ga/image/tisImage/PV/PV_GHC.png" class="img-responsive">
                                        </div>


                                    </div>

                                </div>
                                <div class="col-md-7">

                                    <h2 class="font-bold m-b-xs">
                                        ${item.cVenName } : ${item.cPrdName }
                                    </h2>
                                    <small>${item.cItmCode }</small>
                                    <div class="m-t-md">
                                        <h2 class="product-main-price">$406,602 <small class="text-muted">Exclude Tax</small> </h2>
                                    </div>
                                    <hr>

                                    <h4>품목 설명</h4>

                                    <div class="small text-muted">
                                       	${item.cSptName }<br>
                                       	${item.cDptName }<br>
                                       	${item.cEvnName }<br>
                                       	${item.cCatName }<br>
                                       	${item.cItmMate }<br>
                                       	${item.cItmFloor }

                                    </div>
                                    <dl class="small m-t-md">
                                        <dt>Description lists</dt>
                                        <dd>A description list is perfect for defining terms.</dd>
                                        <dt>Euismod</dt>
                                        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
                                        <dd>Donec id elit non mi porta gravida at eget metus.</dd>
                                        <dt>Malesuada porta</dt>
                                        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
                                    </dl>
                                    <hr>

                                    <div>
                                        <div class="btn-group">
                                            <button class="btn btn-primary btn-sm"><i class="fa fa-star"></i> 작업추가 </button>
                                            <button class="btn btn-white btn-sm"><i class="fa fa-envelope"></i> 담당 업체 연락처 </button>
                                        </div>
                                    </div>



                                </div>
                            </div>

                        </div>
                        <div class="ibox-footer">
                            <span class="pull-right">
                                Full stock - <i class="fa fa-clock-o"></i> 14.04.2016 10:04 pm
                            </span>
                            The generated Lorem Ipsum is therefore always free
                        </div>
                    </div>

                </div>
            </div>
            




        </div>  


       
        
      	<jsp:include page="../footer.jsp" flush="true">
		<jsp:param name="param" value="value1" />
		</jsp:include>
		
		</div>
    </div>
</body>
<script>
    $(document).ready(function(){


        $('.product-images').slick({
            dots: true
        });

    });

</script>
</html>

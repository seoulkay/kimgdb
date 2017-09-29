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

                                    <h3 class="font-bold m-b-xs">
                                        ${item.cVenName } : ${item.cPrdName }
                                    </h3>
                                    <div class="m-t-md">${item.cItmCode }</div>
                                    <!-- <div class="m-t-md">
                                        <h2 class="product-main-price">$406,602 <small class="text-muted">Exclude Tax</small> </h2>
                                    </div> -->
                                    <hr><!-- 

                                    <h4>아이템 설명</h4> -->

                                    <div class="m-t-md">
                                    	<%-- <strong>아이템:</strong> ${item.cItmCode }<br>
                                       	<strong>품목:</strong> ${item.cPrdName }<br>
                                       	<strong>업체 :</strong> ${item.cItmCom }<br>
                                       	<strong>베뉴 :</strong>  ${item.cVenName }<br>                                       	
                                       	<strong>게임 :</strong> ${item.cEvnName }<br>
                                       	<strong>스포츠 :</strong> ${item.cSptName }<br>
                                       	<strong>FA :</strong> ${item.cDptName }<br>
                                       	<strong>카테고리 :</strong> ${item.cCatName }<br>
                                       	<strong>재질 :</strong> ${item.cItmMate }<br>
                                       	<strong>위치 :</strong> ${item.cItmFloor } --%>
                                       	 <table class="table">
                                       		<tbody>                                       		                                       		
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">게임 :</td>	<td style="border-top: none; width:85%">${item.cEvnName }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">스포츠 :</td> <td style="border-top: none; width:85%">${item.cSptName }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">FA :</td>   <td style="border-top: none; width:85%">${item.cDptName }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">카테고리 :</td><td style="border-top: none; width:85%">${item.cCatName }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">재질 :</td>	<td style="border-top: none; width:85%">${item.cItmMate }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">위치 :</td>	<td style="border-top: none; width:85%">${item.cItmFloor }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">담당업체 :</td>	<td style="border-top: none; width:85%">${item.cItmCom }</td></tr>
                                       		
                                       		</tbody>
                                       	</table>
                                    </div>
                                    
                                    <hr>

                                    <div>
                                        <div class="btn-group">
                                            <button class="btn btn-primary btn-sm"><i class="fa fa-star"></i> 작업추가 </button>
                                            <button class="btn btn-white btn-sm"><i class="fa fa-phone"></i> 담당업체 연락처 </button>
                                        </div>
                                    </div>



                                </div>
                            </div>

                        </div>
                        <div class="ibox-footer">
                            <span class="pull-right">
                                sj.choi <i class="fa fa-clock-o"></i> 14.09.2017 10:04 am
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

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
                    <h2>아이템</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>아이템</strong></a>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">


            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="nItmCnt">번호</label>
                            <input type="text" id="nItmCnt" name="nItmCnt" value="" placeholder="Item Number" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="cItmCode">아이템코드</label>
                            <input type="text" id="cItmCode" name="cItmCode" value="" placeholder="Item Code" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="cItmCom">업체</label>
                            <select class="form-control m-b" id="cItmCom" name="cItmCom">                           		
                           		<option value="HAN">HAN - 한솔</option>
                           		<option value="UFO">UFO - 유에포</option>                           		
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmVenue">베뉴</label>
                            <select class="form-control m-b" id="cItmVenue" name="cItmVenue">                           		
                           		<option value="ABT">ABT - 알펜시아 바이애슬론 센터</option>
                           		<option value="ACC">ACC - 알펜시아 크로스컨트리 센터</option>                           		
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmSport">스포츠</label>
                            <select class="form-control m-b" id="cItmSport" name="cItmSport">                           		
                           		<option value="ALP">ALP - 알파인 스키</option>
                           		<option value="BOB">BOB - 봅슬레이</option>                           		
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmDept">FA</label>
                            <select class="form-control m-b" id="cItmDept" name="cItmDept">                           		
                           		<option value="ACM">ACM - 숙박</option>
                           		<option value="ACR">ACR - 등록</option>                           		
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmEvent">게임</label>                            
                            <select class="form-control m-b" id="cItmEvent" name="cItmEvent">                           		
                           		<option value="A">A - 올림픽</option>
                           		<option value="B">B - 패럴림픽</option>                           		
                            </select>
                        </div>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>

                                    <th data-hide="phone">번호</th>
                                    <th>아이템코드</th>
                                    <th data-hide="phone">업체</th>
                                    <th data-hide="phone">베뉴</th>
                                    <th data-hide="phone">스포츠</th>                                    
                                    <th data-hide="phone" >FA</th>
                                    <th data-hide="phone" >게임</th>
                                    <th data-hide="all">제품</th>
                                    <th data-hide="all" >카테고리</th>
                                    <th data-hide="all">재질</th>
                                    <th data-hide="all">Floor</th>
                                    <th data-hide="all">Location</th>
                                    <th data-hide="all">W (가로)</th>
                                    <th data-hide="all">H (세로)</th>
                                    <th data-hide="all">D (폭)</th>
                                    <th data-hide="all">개수</th>
                                    <th data-hide="all">개수 단위</th>
                                    <th data-hide="all">수량</th>
                                    <th data-hide="all">수량 단위</th>
                                    <th data-hide="all">비고</th>
                                    <th data-hide="phone" >제작</th>
                                    <th data-hide="phone" >설치</th>
                                    <th data-hide="phone" >철거</th> 
                                    <th data-hide="phone" >이슈</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${itemList}" var="ele">
                                <tr>
                                    <td>
                                        ${ele.nItmCnt}
                                    </td>
                                     <td>
                                        ${ele.cItmCode}
                                    </td>
                                    <td>
                                        ${ele.cItmCom}
                                    </td>
                                    <td>
                                        ${ele.cItmVenue}
                                    </td>
                                    <td>
                                        ${ele.cItmSport}
                                    </td>
                                    <td>
                                        ${ele.cItmDept}
                                    </td>
                                    <td>
                                        ${ele.cItmEvent}
                                    </td>                                    
                                    <td>
                                        ${ele.cItmProd}
                                    </td>
                                    <td>
                                        ${ele.cItmCate}
                                    </td>
                                    <td>
                                        ${ele.cItmMate}
                                    </td>
                                    <td>
                                        ${ele.cItmFloor}
                                    </td>
                                    <td>
                                        ${ele.cItmLocation}
                                    </td>
                                    <td>
                                        ${ele.cItmWidth}
                                    </td>
                                    <td>
                                        ${ele.cItmHeight}
                                    </td>
                                    <td>
                                        ${ele.cItmDimen}
                                    </td>
                                    <td>
                                        ${ele.cItmQty1}
                                    </td>
                                    <td>
                                        ${ele.cItemUnit1}
                                    </td>
                                    <td>
                                        ${ele.cItmQty2}
                                    </td>
                                    <td>
                                        ${ele.cItmUnit2}
                                    </td>
                                    <td>
                                        ${ele.cItmDesc}
                                    </td>
                                    <td class="text-center">
	                                    <span class="pie">1,0
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <span class="pie">0,1
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <span class="pie">0,1
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <span class="label label-danger">3</span>
                                    </td>                                    
                                    <td class="text-right">                                    
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">보기</button>
                                            <button class="btn-white btn btn-xs">수정</button>
                                            <button class="btn-white btn btn-xs">삭제</button>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="7" class="footable-visible">
	                                        <ul class="pagination pull-right"></ul>
	                                    </td>
	                                </tr>
                                </tfoot>
                            </table>

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

</html>

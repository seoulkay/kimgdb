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

			<form action="item" id="searchItemForm">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmCode">아이템코드</label>
                            <input type="text" id="cItmCode" name="cItmCode" value="" placeholder="Item Code" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmProd">품목</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmProd" name="cItmProd">
                           		<option value="">전체</option>
                            	<c:forEach items="${productList }" var="ele">
                            	<option value="${ele.cPrdCode }">${ele.cPrdName } - ${ele.cPrdLocalName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmMate">재질</label>
                            <select class="selectpicker form-control m-b" data-live-search="true" name="cItmMate" id="cItmMate">
                            	<option value="">전체</option>
                            	<c:forEach items="${cItmMateList }" var="ele">
                            	<option value="${ele }">${ele }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmCom">업체</label>
                            <select class="selectpicker form-control m-b" data-live-search="true" name="cItmCom" id="cItmCom">
                            	<option value="">전체</option>
                            	<c:forEach items="${companyList }" var="ele">
                            	<option value="${ele.cComCode }">${ele.cComName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmVenue">베뉴</label>                       		
                           	<select class="selectpicker form-control m-b" data-live-search="true" name="cItmVenue" id="cItmVenue" >
                           		<option value="">전체</option>
                            	<c:forEach items="${venueList }" var="ele">
                            	<option value="${ele.cVenCode }">${ele.cVenName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmSport">스포츠</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmSport" name="cItmSport">
                           		<option value="">전체</option>
                            	<c:forEach items="${sportList }" var="ele">
                            	<option value="${ele.cSptCode }">${ele.cSptName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmDept">FA</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmDept" name="cItmDept">
                           		<option value="">전체</option>
                            	<c:forEach items="${departmentList }" var="ele">
                            	<option value="${ele.cDptCode }">${ele.cDptName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmEvent">게임</label>                            
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmEvent" name="cItmEvent">
                            	<option value="">전체</option>
                            	<c:forEach items="${eventList }" var="ele">
                            	<option value="${ele.cEvnCode }">${ele.cEvnName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3">
                		<button type="button" class="btn btn-primary btn-sm btn-block">생성</button>
                	</div>
                	<div class="col-sm-3">
                		<button type="button" class="btn btn-primary btn-sm btn-block" onclick="searchItem()">검색</button>
                	</div>
                </div>
            </div>
            </form>
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>

                                    <th>아이템코드</th>
                                    <th>품목</th>
                                    <th data-hide="phone">업체</th>
                                    <th data-hide="phone">베뉴</th>
                                    <th data-hide="phone">스포츠</th>                                    
                                    <th data-hide="phone" >FA</th>
                                    <th data-hide="phone" >게임</th>
                                    <th data-hide="all">제품</th>
                                    <th data-hide="phone" >카테고리</th>
                                    <th data-hide="phone">재질</th>
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
                                        ${ele.cItmCode}
                                    </td>
                                    <td>
                                    	${ele.cPrdName }
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
                                        ${ele.cCatName}
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
                                            <button class="btn-white btn btn-xs" onclick="location.href='itemDetail?nItmCnt= ${ele.nItmCnt}' ">보기</button>
                                            <button class="btn-white btn btn-xs">수정</button>
                                            <button class="btn-white btn btn-xs">삭제</button>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="13" class="footable-visible">
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
<script>
function searchItem(){
	$("#searchItemForm").submit();
}


$("#cItmCode").val("${srcPar.cItmCode}")
$('#cItmProd').selectpicker('val', "${srcPar.cItmProd}");
$('#cItmMate').selectpicker('val', "${srcPar.cItmMate}");
$('#cItmCom').selectpicker('val', "${srcPar.cItmCom}");
$('#cItmVenue').selectpicker('val', "${srcPar.cItmVenue}");
$('#cItmSport').selectpicker('val', "${srcPar.cItmSport}");
$('#cItmDept').selectpicker('val', "${srcPar.cItmDept}");
$('#cItmEvent').selectpicker('val', "${srcPar.cItmEvent}");
</script>
</html>

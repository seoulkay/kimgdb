<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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

			<form action="item" id="searchItemForm" method="post">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmCode">아이템코드</label>
                            <input type="text" id="cItmCodeSrc" name="cItmCode" value="" placeholder="Item Code" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmProd">품목</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmProdSrc" name="cItmProd">
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
                            <select class="selectpicker form-control m-b" data-live-search="true" name="cItmMate" id="cItmMateSrc">
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
                            <select class="selectpicker form-control m-b" data-live-search="true" name="cItmCom" id="cItmComSrc">
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
                           	<select class="selectpicker form-control m-b" data-live-search="true" name="cItmVenue" id="cItmVenueSrc" >
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
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmSportSrc" name="cItmSport">
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
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmDeptSrc" name="cItmDept">
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
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmEventSrc" name="cItmEvent">
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
                		<button type="button" class="btn btn-primary btn-sm btn-block" id="addItemBtn">생성</button>
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
                                    <th data-hide="all" >FA</th>
                                    <th data-hide="all" >게임</th>
                                    <th data-hide="phone" >카테고리</th>
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
                                    <th data-hide="phone">제작</th>
                                    <th data-hide="phone">설치</th>
                                    <th data-hide="phone">철거</th> 
                                    <th data-hide="phone">이슈</th>
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
                                        <span class="pie"><c:if test="${ele.nManStatus gt 0 }">1,0</c:if><c:if test="${ele.nManStatus le 0 }">0,1</c:if>
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <span class="pie"><c:if test="${ele.nInsStatus gt 0 }">1,0</c:if><c:if test="${ele.nInsStatus le 0 }">0,1</c:if>
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <span class="pie"><c:if test="${ele.nDesStatus gt 0 }">1,0</c:if><c:if test="${ele.nDesStatus le 0 }">0,1</c:if>
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <c:if test="${ele.nIncStatus gt 0 }"><span class="label label-danger">${ele.nIncStatus}</span></c:if><c:if test="${ele.nIncStatus le 0 }"></c:if>
                                    </td>                                    
                                    <td class="text-right">                                    
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="location.href='itemDetail?nItmCnt= ${ele.nItmCnt}' ">보기</button>
                                            <button class="btn-white btn btn-xs" onclick="selectItemOne(${ele.nItmCnt})">수정</button>
                                            <button class="btn-white btn btn-xs" onclick="deleteItem(${ele.nItmCnt})">삭제</button>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="16" class="footable-visible">
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
  							<div class="modal inmodal" id="addItemModal" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated fadeIn">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
                                            <i class="fa fa-clock-o modal-icon"></i>
                                            <h4 class="modal-title">아이템 관리</h4>
                                        </div>
                                        <div class="modal-body">
                                         <form method="POST" class="form-horizontal" id="addItemForm">
                                         	<input type="hidden" class="form-control" name="nItmCnt" id="nItmCnt" maxlength="30" value=0>
                                            <div class="form-group"><label class="col-sm-2 control-label">아이템코드</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmCode" id="cItmCode" maxlength="60"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">품목</label>
			                                    <div class="col-sm-10">
				                                    <select class="selectpicker form-control m-b" data-live-search="true" id="cItmProd" name="cItmProd">
					                           		<option value="">전체</option>
					                            	<c:forEach items="${productList }" var="ele">
					                            	<option value="${ele.cPrdCode }">${ele.cPrdName } - ${ele.cPrdLocalName }</option> 
					                            	</c:forEach>
					                            	</select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">업체</label>
			                                    <div class="col-sm-10">
			                                    	<select class="selectpicker form-control m-b" data-live-search="true" name="cItmCom" id="cItmCom">
					                            	<option value="">전체</option>
					                            	<c:forEach items="${companyList }" var="ele">
					                            	<option value="${ele.cComCode }">${ele.cComName }</option> 
					                            	</c:forEach>
					                            	</select>
			                                    </div>
			                                </div>
			                                 <div class="form-group"><label class="col-sm-2 control-label">베뉴</label>
			                                    <div class="col-sm-10">
                                                  	<select class="selectpicker form-control m-b" data-live-search="true" name="cItmVenue" id="cItmVenue" >
					                           		<option value="">전체</option>
					                            	<c:forEach items="${venueList }" var="ele">
					                            	<option value="${ele.cVenCode }">${ele.cVenName }</option> 
					                            	</c:forEach>
					                            	</select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">스포츠</label>
			                                    <div class="col-sm-10">
			                                    <select class="selectpicker form-control m-b" data-live-search="true" id="cItmSport" name="cItmSport">
					                           		<option value="">전체</option>
					                            	<c:forEach items="${sportList }" var="ele">
					                            	<option value="${ele.cSptCode }">${ele.cSptName }</option> 
					                            	</c:forEach>
					                            </select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">FA</label>
			                                    <div class="col-sm-10">
			                                    <select class="selectpicker form-control m-b" data-live-search="true" id="cItmDept" name="cItmDept">
					                           		<option value="">전체</option>
					                            	<c:forEach items="${departmentList }" var="ele">
					                            	<option value="${ele.cDptCode }">${ele.cDptName }</option> 
					                            	</c:forEach>
					                            </select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">게임</label>
			                                    <div class="col-sm-10">
			                                    <select class="selectpicker form-control m-b" data-live-search="true" id="cItmEvent" name="cItmEvent">
					                            	<option value="">전체</option>
					                            	<c:forEach items="${eventList }" var="ele">
					                            	<option value="${ele.cEvnCode }">${ele.cEvnName }</option> 
					                            	</c:forEach>
					                            </select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">카테고리</label>
			                                    <div class="col-sm-10">
			                                   	<select class="form-control m-b" name="cItmCate" id="cItmCate">
			                                   		<c:forEach items="${catList }" var="ele">
			                                   		<option value="${ele.cCatType }">${ele.cCatName }</option>
			                                   		</c:forEach>
			                                    </select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">재질</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmMate" id="cItmMate" maxlength="60"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">Floor</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmFloor" id="cItmFloor" maxlength="30"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">Location</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmLocation" id="cItmLocation" maxlength="30"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">W (가로)</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmWidth" id="cItmWidth" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">H (세로)</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmHeight" id="cItmHeight" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">D (폭)</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmDimen" id="cItmDimen" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">개수</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmQty1" id="cItmQty1" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">개수 단위</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItemUnit1" id="cItemUnit1" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">수량</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmQty2" id="cItmQty2" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">수량 단위</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmUnit2" id="cItmUnit2" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">비고</label>
			                                    <div class="col-sm-10"><textarea class="form-control" name="cItmDesc" id="cItmDesc" maxlength="500"></textarea></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 단가 합계</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmUnitPrice1" id="cItmUnitPrice1" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 금액 합계</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmPrice1" id="cItmPrice1" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 재료비 단가</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmMateUnitPrice1" id="cItmMateUnitPrice1" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 재료비 금액</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmMatePrice1" id="cItmMatePrice1" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 노무비 단가</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cImtLaborUnitPrice1" id="cImtLaborUnitPrice1" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 노무비 금액</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmLaborPrice1" id="cItmLaborPrice1" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">하도급 단가 합계</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmUnitPrice2" id="cItmUnitPrice2" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">하도급 금액 합계</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmPrice2" id="cItmPrice2" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">하도급 재료비 단가</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmMateUnitPrice2" id="cItmMateUnitPrice2" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">하도급 재료비 금액</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmMatePrice2" id="cItmMatePrice2" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">하도급 노무비 단가</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cImtLaborUnitPrice2" id="cImtLaborUnitPrice2" maxlength="20"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">하도급 노무비 금액</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmLaborPrice2" id="cItmLaborPrice2" maxlength="20"></div>
			                                </div>
			                                
			                                
			                                
			                                <div class="form-group"><label class="col-sm-2 control-label">사진</label>
			                                <div class="col-sm-10"><div id="fine-uploader"></div></div>
			                                 </div>
			                                 <input type="hidden" id="photoUid" name="photoUid">
			                                 <div id="pictureDom"></div>
			                             </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">닫기</button>
                                            <button type="button" class="btn btn-primary" onclick="submitAddForm();" id="addBtn">제출</button>
                                            <button type="button" class="btn btn-primary" onclick="submitUpdateForm();" id="updateBtn">수정</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
</body>
<script>
//검색
function searchItem(){
	$("#searchItemForm").submit();
}

//검색값 세팅
$("#cItmCodeSrc").val("${srcPar.cItmCode}")
$('#cItmProdSrc').selectpicker('val', "${srcPar.cItmProd}");
$('#cItmComSrc').selectpicker('val', "${srcPar.cItmCom}");
$('#cItmVenueSrc').selectpicker('val', "${srcPar.cItmVenue}");
$('#cItmSportSrc').selectpicker('val', "${srcPar.cItmSport}");
$('#cItmDeptSrc').selectpicker('val', "${srcPar.cItmDept}");
$('#cItmEventSrc').selectpicker('val', "${srcPar.cItmEvent}");
$('#cItmMateSrc').selectpicker('val', "${srcPar.cItmMate}");
</script>
<script src="https://cdn.ckeditor.com/4.7.1/basic/ckeditor.js"></script>
							<script>
							            CKEDITOR.replace( 'cItmDesc' );
							</script>
                            <script>
					        var uploader = new qq.FineUploader({
					            debug: true,
					            element: document.getElementById('fine-uploader'),
					            request: {
					              inputName: 'file',
					                endpoint: 'upload'
					            },
					//             deleteFile: {
					//                 enabled: true,
					//                 endpoint: 'admin/upload'
					//             },
					// 			validation: {
					//                 allowedExtensions: ['jpeg', 'jpg', 'gif', 'png']
					//             },
					            scaling: {
					                sendOriginal: false,
					               // includeExif: true,
					                sizes: [
					                    {maxSize: 600}
					                ]
					            }
					            ,autoUpload: true
					//             retry: {
					//                enableAuto: true
					//             }
					            ,callbacks: {
					            	onAllComplete: function(succeeded) {
					            		var uuid = "";
					            		var tempUuid;
					            		for(i = 0; i < succeeded.length; i++) {
					            			if(i != 0){
					            				uuid = uuid + ", " + uploader.getUuid(succeeded[i]);
					            			}else{
					            				uuid = uploader.getUuid(succeeded[i]);
					            			}
					            		}
					                	
					                	if($('#photoUidTmp').val() == ''){
					                		$('#photoUidTmp').val(uuid);
					                	}else{
					                		$('#photoUidTmp').val($('#photoUidTmp').val() + ", " +uuid);
					                	}
					                	console.log($('#photoUid').val());
					                	//uploader.clearStoredFiles();
					            	}
					            }
					        });
					        $('#trigger-upload').click(function() {
					           // $('#fine-uploader').fineUploader('uploadStoredFiles');
					           uploader.uploadStoredFiles();
					        });
					    </script>
<script>
         
         function searchItem(){
         	$("#searchItemForm").submit();
         }
		                     
		
		$('#addItemBtn').click(function(){
			$("#addBtn").hide();
			$("#updateBtn").hide();
			$("#addBtn").show();
			
			CKEDITOR.instances['cItmDesc'].setData('');
			
			showItemModal();
		});
		
		function showItemModal(){
			$("#addItemForm")[0].reset();
			uploader.clearStoredFiles();
			$('#addItemModal').modal("show");
		}
		
		function submitAddForm(){
			$("#photoUid").val($("#photoUidTmp").val());
			$("#addItemForm").attr('action', 'addItem');
			$("#addItemForm").submit();
		}
		
		function submitUpdateForm(){
			$("#photoUid").val($("#photoUidTmp").val());
			$("#addItemForm").attr('action', 'updateItem');
			$("#addItemForm").submit();
		}
		
		function selectItemOne(ref){
			$.post( "selectDetail/itm/"+ref)
		       .done(function( data ) {
		    	    showItemModal();
		         	var vo = JSON.parse(JSON.stringify(data));
		         	
		         	$("#addBtn").hide();
					$("#updateBtn").hide();
					$("#updateBtn").show();
					
					
					CKEDITOR.instances['cItmDesc'].setData(vo[0].cItmDesc);
					
					$("#nItmCnt").val(vo[0].nItmCnt);
					$("#cItmCode").val(vo[0].cItmCode);
					$('#cItmCom').selectpicker('val', vo[0].cItmCom);
					$('#cItmVenue').selectpicker('val', vo[0].cItmVenue);
					$('#cItmSport').selectpicker('val', vo[0].cItmSport);
					$('#cItmDept').selectpicker('val', vo[0].cItmDept);
					$('#cItmEvent').selectpicker('val', vo[0].cItmEvent);
					$('#cItmCate').selectpicker('val', vo[0].cItmCate);
					$('#cItmProd').selectpicker('val', vo[0].cItmProd);
					$("#cItmMate").val(vo[0].cItmMate);
					$("#cItmFloor").val(vo[0].cItmFloor);
					$("#cItmLocation").val(vo[0].cItmLocation);
					$("#cItmWidth").val(vo[0].cItmWidth);
					$("#cItmHeight").val(vo[0].cItmHeight);
					$("#cItmDimen").val(vo[0].cItmDimen);
					$("#cItmQty1").val(vo[0].cItmQty1);
					$("#cItemUnit1").val(vo[0].cItemUnit1);
					$("#cItmQty2").val(vo[0].cItmQty2);
					$("#cItmUnit2").val(vo[0].cItmUnit2);
					$("#cItmUnitPrice1").val(vo[0].cItmUnitPrice1);
					$("#cItmPrice1").val(vo[0].cItmPrice1);
					$("#cItmMateUnitPrice1").val(vo[0].cItmMateUnitPrice1);
					$("#cItmMatePrice1").val(vo[0].cItmMatePrice1);
					$("#cImtLaborUnitPrice1").val(vo[0].cImtLaborUnitPrice1);
					$("#cItmLaborPrice1").val(vo[0].cItmLaborPrice1);
					$("#cItmUnitPrice2").val(vo[0].cItmUnitPrice2);
					$("#cItmPrice2").val(vo[0].cItmPrice2);
					$("#cItmMateUnitPrice2").val(vo[0].cItmMateUnitPrice2);
					$("#cItmMatePrice2").val(vo[0].cItmMatePrice2);
					$("#cImtLaborUnitPrice2").val(vo[0].cImtLaborUnitPrice2);
					$("#cItmLaborPrice2").val(vo[0].cItmLaborPrice2);
					
				
					
					$("#pictureDom").empty();
					for(var i = 0; i < vo.length; i++){
						if(vo[i].cPhoName){
							$("#pictureDom").append("<div class='row' id='Pho"+vo[i].nPhoCnt+"'><div><a downlaod='"+vo[i].nPhoCnt+"' href='https://www.kimgdb.com/image/"+vo[i].cPhoName+"'><img class='img-responsive' src='https://www.kimgdb.com/image/"+vo[i].cPhoName+"'></a></div><div><button type='button' class='btn btn-primary' onclick='deletePhoto("+vo[i].nPhoCnt+")' >삭제</button></div></div><br>")
						}
					}
					
		       });
		}
		
		function deletePhoto(ref){
			$.post( "deletePhoto/"+ref)
				.done(function(data){
					$("#Pho"+ref).fadeOut();
					console.log(data+" deleted");
				});
		}
		
		function deleteItem(ref){
			var r = confirm("삭제 하시겠습니까?");
			if(r == true){
				location.href = "deleteItem?ref="+ref;
			} else{
				
			}
		}
</script>
</html>
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
            <div class="ibox-content m-b-sm border-bottom">
            <form action="item" id="searchItemForm" method="post">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmCode">아이템코드</label>
                            <input type="text" id="cItmCodeSrc" name="cItmCode" value="" placeholder="Item Code" class="form-control">
                        </div>
                    </div>
<!--                     <div class="col-sm-3"> -->
<!--                         <div class="form-group"> -->
<!--                             <label class="control-label" for="cItmProd">품목</label> -->
<!--                            	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmProdSrc" name="cItmProd"> -->
<!--                            		<option value="">전체</option> -->
<%--                             	<c:forEach items="${productList }" var="ele"> --%>
<%--                             	<option value="${ele.cPrdCode }">${ele.cPrdName } - ${ele.cPrdLocalName }</option>  --%>
<%--                             	</c:forEach> --%>
<!--                             </select> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-sm-3"> -->
<!--                         <div class="form-group"> -->
<!--                             <label class="control-label" for="cItmMate">재질</label> -->
<!--                             <select class="selectpicker form-control m-b" data-live-search="true" name="cItmMate" id="cItmMateSrc"> -->
<!--                             	<option value="">전체</option> -->
<%--                             	<c:forEach items="${cItmMateList }" var="ele"> --%>
<%--                             	<option value="${ele }">${ele }</option>  --%>
<%--                             	</c:forEach> --%>
<!--                             </select> -->
<!--                         </div> -->
<!--                     </div> -->
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
                <input type="hidden" id="nItmPage" name="nItmPage" value="${ srcPar.nItmPage}">
<!--                 <div class="row"> -->
<!--                     <div class="col-sm-3"> -->
<!--                         <div class="form-group"> -->
<!--                             <label class="control-label" for="cItmVenue">베뉴</label>                       		 -->
<!--                            	<select class="selectpicker form-control m-b" data-live-search="true" name="cItmVenue" id="cItmVenueSrc" > -->
<!--                            		<option value="">전체</option> -->
<%--                             	<c:forEach items="${venueList }" var="ele"> --%>
<%--                             	<option value="${ele.cVenCode }">${ele.cVenName }</option>  --%>
<%--                             	</c:forEach> --%>
<!--                             </select> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-sm-3"> -->
<!--                         <div class="form-group"> -->
<!--                             <label class="control-label" for="cItmSport">스포츠</label> -->
<!--                            	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmSportSrc" name="cItmSport"> -->
<!--                            		<option value="">전체</option> -->
<%--                             	<c:forEach items="${sportList }" var="ele"> --%>
<%--                             	<option value="${ele.cSptCode }">${ele.cSptName }</option>  --%>
<%--                             	</c:forEach> --%>
<!--                             </select> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-sm-3"> -->
<!--                         <div class="form-group"> -->
<!--                             <label class="control-label" for="cItmDept">FA</label> -->
<!--                            	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmDeptSrc" name="cItmDept"> -->
<!--                            		<option value="">전체</option> -->
<%--                             	<c:forEach items="${departmentList }" var="ele"> --%>
<%--                             	<option value="${ele.cDptCode }">${ele.cDptName }</option>  --%>
<%--                             	</c:forEach> --%>
<!--                             </select> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
                <div class="row">
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3"></div>
               		<div class="col-sm-3">
               		<label class="control-label" for="cItmDept"></label>
<%--                 	<c:if test='${sessionScope.cred.cPerCom eq "adm"}'> --%>
                		<button type="button" class="btn btn-primary btn-sm btn-block" id="addItemBtn">생성</button>
<%--                 	</c:if> --%>
                	</div>
                	<div class="col-sm-3">
                		<label class="control-label" for="cItmDept"></label>
                		<button type="button" class="btn btn-primary btn-sm btn-block" onclick="searchItem()">검색</button>
                	</div>
                </div>
                </form>
                <form action="itemBulkUpdate" method="post" name="itemBulkForm" id="itemBulkForm">
                <div class="row">
                	<div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmDept">일괄변경 상태</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cTstType" name="cTstType" required="required">
<!--                            		<option value="">전체</option> -->
                            	<c:forEach items="${statusList }" var="ele">
                            	<option value="${ele.cTstType }">${ele.cTstName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmEvent">일괄변경 작업</label>                            
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cTtpType" name="cTtpType" required="required">
<!--                             	<option value="">전체</option> -->
                            	<c:forEach items="${taskList }" var="ele">
                            	<option value="${ele.cTtpType }">${ele.cTtpName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                	<div class="col-sm-3">
                	<c:if test='${sessionScope.cred.cPerCom eq "adm"}'>
                		<label class="control-label">	&nbsp; </label>     
                		<button type="button" class="btn btn-warning btn-sm btn-block" onclick="submitBulk()">일괄변경</button>
                	</c:if>
                	</div>
                	<div class="col-sm-3"></div>
                </div>
                <input type="hidden" id="td_numbers" name="td_numbers">
                <input type="hidden" id="cItmProdSrcBulk" name="cItmProd">
                <input type="hidden" id="cItmSportSrcBulk" name="cItmSport">
                <input type="hidden" id="cItmDeptSrcBulk" name="cItmDept">
                <input type="hidden" id="cItmMateSrcBulk" name="cItmMate">
	
	   			<input type="hidden" id="cItmComSrcBulk" name="cItmCom">
                <input type="hidden" id="cItmEventSrcBulk" name="cItmEvent">
                <input type="hidden" id="cItmVenueSrcBulk" name="cItmVenue">
                <input type="hidden" id="cItmCodeSrcBulk" name="cItmCode">
             
                </form>
            </div>
          
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="200">
                                <thead>
                                <tr>
									<th></th>
                                    <th>아이템코드</th>
                                    <th>업체</th>
                                    <th>베뉴</th>
                                    <th>카테고리</th>
                                    <th data-hide="phone">제작</th>
                                    <th data-hide="phone">배송</th>
                                    <th data-hide="phone">설치</th>
                                    <th data-hide="phone">철거</th> 
                                    <th data-hide="phone">이슈</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${itemList}" var="ele">
                                <tr>
                                	 <td>
                                	 	<input type="checkbox" class="form-check-input select_td" id="${ele.nItmCnt }">
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
                                        <c:if test="${ele.cItmCate eq 'lok'}"><span class="label label-primary">룩</span></c:if>
                                        <c:if test="${ele.cItmCate eq 'sin'}"><span class="label label-success">사이니지</span></c:if>
                                        <c:if test="${ele.cItmCate eq 'spc'}"><span class="label label-danger">스펙타큘러</span></c:if>
                                        <c:if test="${ele.cItmCate eq 'eqi'}"><span class="label label-warning">스포츠장비</span></c:if>
                                    </td>
                                    <td class="text-center">
                                        <c:if test="${ele.nManStatus gt 0 }"><span class="pie">${ele.nManStatus},${100 - ele.nManStatus}
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span></c:if>
	                                    <c:if test="${ele.nManStatus le 0 }"></c:if>
                                    </td>
                                    <td class="text-center">
                                        <c:if test="${ele.nDelStatus gt 0 }"><span class="pie">${ele.nDelStatus},${100 - ele.nDelStatus}
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span></c:if><c:if test="${ele.nDelStatus le 0 }"></c:if>
                                    </td>
                                    <td class="text-center">
                                        <c:if test="${ele.nInsStatus gt 0 }"><span class="pie">${ele.nInsStatus},${100 - ele.nInsStatus}
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span></c:if><c:if test="${ele.nInsStatus le 0 }"></c:if>
                                    </td>
                                    <td class="text-center">
                                        <c:if test="${ele.nDesStatus gt 0 }"><span class="pie">${ele.nDesStatus},${100 - ele.nDesStatus}
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span></c:if><c:if test="${ele.nDesStatus le 0 }"></c:if>
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
                                    <td class="text-right">                                    
                                        <div class="btn-group">
                                            <button class="<c:if test='${!empty ele.cItmPrePho}'>btn-success </c:if><c:if test='${empty ele.cItmPrePho}'>btn-white </c:if> btn btn-xs" onclick="prePhoForm('${ele.nItmCnt}', 'pre')">설치전</button>
                                            <button class="<c:if test='${!empty ele.cItmPosPho}'>btn-success </c:if><c:if test='${empty ele.cItmPosPho}'>btn-white </c:if> btn btn-xs" onclick="prePhoForm('${ele.nItmCnt}', 'pos')">설치후</button>
                                            <button class="<c:if test='${!empty ele.cItmDesPho}'>btn-success </c:if><c:if test='${empty ele.cItmDesPho}'>btn-white </c:if> btn btn-xs" onclick="prePhoForm('${ele.nItmCnt}', 'des')">철거후</button>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="1"><input type="checkbox" class="form-check-input" id="selectAlltd"></td>
	                                    <td><strong>일괄선택</strong></td>
	                                    <td>총 ${ itemcnt} 건</td>
	                                    <td colspan="6"></td>
	                                    <td colspan="1">
<!-- 	                                        <ul class="pagination pull-right"></ul> -->
												<c:if test='${srcPar.nItmPage ne 1}'>
												<button onclick="prevPage()"><span class="glyphicon glyphicon-backward" ></span> </button>
												</c:if>
												${ srcPar.nItmPage} 
												<c:if test='${srcPar.nItmPage < (itemcnt/30 + 1)}'>
												<button onclick="nextPage()"><span class="glyphicon glyphicon-forward" ></span></button>
												</c:if>
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
                                         	<div id="mainItem">
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
<!-- 			                                <div class="form-group"><label class="col-sm-2 control-label">개수 단위</label> -->
<!-- 			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItemUnit1" id="cItemUnit1" maxlength="20"></div> -->
<!-- 			                                </div> -->
			                                <div class="form-group"><label class="col-sm-2 control-label">개수 단위</label>
			                                    <div class="col-sm-10">
			                                   	<select class="form-control m-b" name="cPrdScale" id="cItemUnit1" disabled>
			                                   		<option value="ea">EA</option>
			                                   		<option value="m2">m2</option>
			                                   		<option value="set">set</option>
			                                    </select>
			                                    </div>
			                                </div>
<!-- 			                                <div class="form-group"><label class="col-sm-2 control-label">수량</label> -->
<!-- 			                                    <div class="col-sm-10"><input type="number" class="form-control" name="cItmQty2" id="cItmQty2" maxlength="20"></div> -->
<!-- 			                                </div> -->
<!-- 			                                <div class="form-group"><label class="col-sm-2 control-label">수량 단위</label> -->
<!-- 			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cItmUnit2" id="cItmUnit2" maxlength="20"></div> -->
<!-- 			                                </div> -->
<%-- 			                                <c:if test='${sessionScope.cred.cPerCom eq "adm"}'> --%>
											<c:choose>
												<c:when test='${(sessionScope.cred.cPerCom eq "adm") || (sessionScope.cred.cPerCom eq "POC") }'>
												<div style="display: block;">
												</c:when>
												<c:otherwise>
												<div style="display: none;">
												</c:otherwise>
											</c:choose>
											
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 단가 합계</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control"  id="cItmUnitPrice1" maxlength="20" readonly="readonly" step=".01"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 금액 합계</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" id="cItmPrice1" maxlength="20" readonly="readonly" step=".01"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 재료비 단가</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" id="cItmMateUnitPrice1" maxlength="20" readonly="readonly" step="0.01"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 재료비 금액</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control"  id="cItmMatePrice1" maxlength="20" readonly="readonly" step="0.01"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 노무비+경비 단가</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" id="cImtLaborUnitPrice1" maxlength="20" readonly="readonly" step="0.01"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 노무비+경비 금액</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control"  id="cItmLaborPrice1" maxlength="20" readonly="readonly" step="0.01"></div>
			                                </div>
			                                </div>
											
											<c:choose>
												<c:when test='${sessionScope.cred.cPerCom eq "POC" }'>
												<div style="display: none;">
												</c:when>
												<c:otherwise>
												<div style="display: block;">
												</c:otherwise>
											</c:choose>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주 단가 합계</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" id="cItmUnitPrice2" maxlength="20" readonly="readonly"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주 금액 합계</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control"  id="cItmPrice2" maxlength="20" readonly="readonly" step=".001"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주 재료비 단가</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" id="cItmMateUnitPrice2" maxlength="20" readonly="readonly" step=".001"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주 재료비 금액</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control"  id="cItmMatePrice2" maxlength="20" readonly="readonly" step=".001"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주 노무비+경비 단가</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control"  id="cImtLaborUnitPrice2" maxlength="20" readonly="readonly" step="0.01"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주 노무비+경비 금액</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" id="cItmLaborPrice2" maxlength="20" readonly="readonly" step="0.01"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">비고</label>
			                                    <div class="col-sm-10"><textarea class="form-control" name="cItmDesc" id="cItmDesc" maxlength="500"></textarea></div>
			                                </div>
			                                </div>
<%-- 			                                </c:if> --%>
			                                </div>
			                                
			                                <div class="form-group"><label class="col-sm-2 control-label">사진</label>
			                                <div class="col-sm-10"><div id="fine-uploader"></div></div>
			                                 </div>
			                                 <input type="hidden" id="photoUid" name="photoUid">
			                                 <div id="pictureDom"></div>
			                             </form>
			                             <form id="photoForm" name="photoForm" method="POST">
			                             <input type="hidden" id="photoUid2" name="photoUid2">
			                             <input type="hidden" id="nItmCntPho" name="nItmCnt">
			                             <input type="hidden" id="phoType" name="phoType">
			                             
			                             	<input type="hidden" id="cItmComSrcPho" name="cItmCom">
							                <input type="hidden" id="cItmEventSrcPho" name="cItmEvent">
							                <input type="hidden" id="cItmVenueSrcPho" name="cItmVenue">
							                <input type="hidden" id="cItmCodeSrcPho" name="cItmCode">
							             
	 		                             </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">닫기</button>
                                            <button type="button" class="btn btn-primary" onclick="submitAddForm();" id="addBtn">제출</button>
                                            <button type="button" class="btn btn-primary" onclick="submitUpdateForm();" id="updateBtn">수정</button>
                                            
                                            <button type="button" class="btn btn-primary" onclick="submitPrePhoForm();" id="addPreBtn" style = "display:none">설치 전 사진 제출</button>
                                            <button type="button" class="btn btn-primary" onclick="submitPrePhoForm();" id="addPosBtn" style = "display:none">설치 후 사진 제출</button>
                                            <button type="button" class="btn btn-primary" onclick="submitPrePhoForm();" id="addDesBtn" style = "display:none">철거 후 사진 제출</button>
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
$("#cItmCodeSrc").val("${srcPar.cItmCode}");
$('#cItmProdSrc').selectpicker('val', "${srcPar.cItmProd}");
$('#cItmComSrc').selectpicker('val', "${srcPar.cItmCom}");
$('#cItmVenueSrc').selectpicker('val', "${srcPar.cItmVenue}");
$('#cItmSportSrc').selectpicker('val', "${srcPar.cItmSport}");
$('#cItmDeptSrc').selectpicker('val', "${srcPar.cItmDept}");
$('#cItmEventSrc').selectpicker('val', "${srcPar.cItmEvent}");
$('#cItmMateSrc').selectpicker('val', "${srcPar.cItmMate}");

$("#cItmCodeSrcBulk").val("${srcPar.cItmCode}");
$('#cItmProdSrcBulk').val("${srcPar.cItmProd}");
$('#cItmComSrcBulk').val("${srcPar.cItmCom}");
$('#cItmVenueSrcBulk').val("${srcPar.cItmVenue}");
$('#cItmSportSrcBulk').val("${srcPar.cItmSport}");
$('#cItmDeptSrcBulk').val("${srcPar.cItmDept}");
$('#cItmEventSrcBulk').val("${srcPar.cItmEvent}");
$('#cItmMateSrcBulk').val("${srcPar.cItmMate}");

$("#cItmCodeSrcPho").val("${srcPar.cItmCode}");
$('#cItmVenueSrcPho').val("${srcPar.cItmVenue}");
$('#cItmEventSrcPho').val("${srcPar.cItmEvent}");
$('#cItmComSrcPho').val("${srcPar.cItmCom}");

$('#nItmPage').val("${srcPar.nItmPage} ");


function prevPage(){
	$('#nItmPage').val(parseInt("${srcPar.nItmPage}")-1);
	searchItem2();
}

function nextPage(){
	$('#nItmPage').val(parseInt("${srcPar.nItmPage}")+1);
	searchItem2();
}
</script>
<script src="https://cdn.ckeditor.com/4.7.1/basic/ckeditor.js"></script>
<script>
CKEDITOR.replace( 'cItmDesc' );

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

function prePhoForm(ref, type){
	showItemModal();
	$("#mainItem").css("display", "none");
	$("#addBtn").hide();
	$("#updateBtn").hide();
	$("#addPreBtn").hide();
	$("#addPosBtn").hide();
	$("#addDesBtn").hide();
	if(type == 'pre'){
		$("#addPreBtn").show();
	}else if(type == 'pos'){
		$("#addPosBtn").show();
	}else if(type = 'des'){
		$("#addDesBtn").show();
	}
	
	$("#nItmCntPho").val(ref);
	$("#phoType").val(type);

    
	$.post( "selectDetail/"+type+"/"+ref)
    .done(function( data ) {
    	
    	var vo = JSON.parse(JSON.stringify(data));
     	
    	$("#pictureDom").empty();
    	
    	if(type == 'pre'){
    		if(vo[0].cItmPrePho){
    			$("#pictureDom").append("<div class='row' id='Pho"+vo[0].cItmPrePho+"'><div><a downlaod='"+vo[0].cItmPrePho+"' href='https://www.kimgdb.com/image/"+vo[0].cItmPrePho+"'><img class='img-responsive' src='https://www.kimgdb.com/image/"+vo[0].cItmPrePho+"'></a></div></div><br>")
    		}
    	}else if(type == 'pos'){
    		if(vo[0].cItmPrePho){
    		$("#pictureDom").append("<div class='row' id='Pho"+vo[0].cItmPosPho+"'><div><a downlaod='"+vo[0].cItmPosPho+"' href='https://www.kimgdb.com/image/"+vo[0].cItmPosPho+"'><img class='img-responsive' src='https://www.kimgdb.com/image/"+vo[0].cItmPosPho+"'></a></div></div><br>")
    		}
    	}else if(type == 'des'){
    		if(vo[0].cItmPrePho){
    		$("#pictureDom").append("<div class='row' id='Pho"+vo[0].cItmDesPho+"'><div><a downlaod='"+vo[0].cItmDesPho+"' href='https://www.kimgdb.com/image/"+vo[0].cItmDesPho+"'><img class='img-responsive' src='https://www.kimgdb.com/image/"+vo[0].cItmDesPho+"'></a></div></div><br>")
    		}
    	}
    });	
}

function submitPrePhoForm(){
	$("#photoUid2").val($("#photoUidTmp").val());
	$("#photoForm").attr('action', 'photoFormAction');
	
	$('#cItmComSrcPho').val($('#cItmComSrc').val());
	$('#cItmVenueSrcPho').val($('#cItmVenueSrc').val());
	$("#cItmCodeSrcPho").val($("#cItmCodeSrc").val());
	$('#cItmEventSrcPho').val($('#cItmEventSrc').val());

	
	$("#photoForm").submit();
}

					       
function searchItem(){
	$('#nItmPage').val(1);
	$("#searchItemForm").submit();
}

function searchItem2(){
	$("#searchItemForm").submit();
}
                     

$('#addItemBtn').click(function(){
	$("#addBtn").hide();
	$("#updateBtn").hide();
	$("#addPreBtn").hide();
	$("#addPosBtn").hide();
	$("#addDesBtn").hide();
	
	$("#addBtn").show();
	
	CKEDITOR.instances['cItmDesc'].setData('');
	
	showItemModal();
});

function showItemModal(){
	$("#mainItem").css("display", "block");
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
        	$("#addPreBtn").hide();
        	$("#addPosBtn").hide();
        	$("#addDesBtn").hide();
        	
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
			$("#cItmQty1").val(parseInt(vo[0].cItmQty1));
			$("#cItemUnit1").val(vo[0].cPrdScale);
			$("#cItmQty2").val(parseInt(vo[0].cItmQty2));
			$("#cItmUnit2").val(vo[0].cItmUnit2);
			
// 			private double nPrdPriceOcog;
// 			private double nPrdPriceCont;
// 			private double nPrdLaborOcog;
// 			private double nPrdLaborCont;
			
// 			cItmQty2 가격

//cItemUnit1 ea / m2 / set

//cItmWidth / cItmHeight

			
			
			if($("#cItemUnit1").val() == 'ea'){
				$("#cItmPrice1").val(Math.round((vo[0].nPrdPriceOcog+vo[0].nPrdLaborOcog)*parseFloat(vo[0].cItmQty1) * 1000) / 1000);
				$("#cItmMatePrice1").val(Math.round(vo[0].nPrdPriceOcog*parseFloat(vo[0].cItmQty1) * 1000) / 1000);
				$("#cItmLaborPrice1").val(Math.round(vo[0].nPrdLaborOcog*parseFloat(vo[0].cItmQty1) * 1000) / 1000);
				
				$("#cItmPrice2").val(Math.round((vo[0].nPrdPriceCont+vo[0].nPrdLaborCont)*parseFloat(vo[0].cItmQty1) * 1000) / 1000);
				$("#cItmMatePrice2").val(Math.round(vo[0].nPrdPriceCont*parseFloat(vo[0].cItmQty1) * 1000) / 1000);
				$("#cItmLaborPrice2").val(Math.round(vo[0].nPrdLaborCont*parseFloat(vo[0].cItmQty1) * 1000) / 1000);
				
			}else if($("#cItemUnit1").val() == 'm2'){
				$("#cItmPrice1").val(Math.round((vo[0].nPrdPriceOcog+vo[0].nPrdLaborOcog)*parseFloat((vo[0].cItmQty1*vo[0].cItmWidth*vo[0].cItmHeight)) * 1000) / 1000);
				$("#cItmMatePrice1").val(Math.round(vo[0].nPrdPriceOcog*parseFloat((vo[0].cItmQty1*vo[0].cItmWidth*vo[0].cItmHeight)) * 1000) / 1000);
				$("#cItmLaborPrice1").val(Math.round(vo[0].nPrdLaborOcog*parseFloat((vo[0].cItmQty1*vo[0].cItmWidth*vo[0].cItmHeight)) * 1000) / 1000);
				
				$("#cItmPrice2").val(Math.round((vo[0].nPrdPriceCont+vo[0].nPrdLaborCont)*parseFloat((vo[0].cItmQty1*vo[0].cItmWidth*vo[0].cItmHeight)) * 1000) / 1000);
				$("#cItmMatePrice2").val(Math.round(vo[0].nPrdPriceCont*parseFloat((vo[0].cItmQty1*vo[0].cItmWidth*vo[0].cItmHeight)) * 1000) / 1000);
				$("#cItmLaborPrice2").val(Math.round(vo[0].nPrdLaborCont*parseFloat((vo[0].cItmQty1*vo[0].cItmWidth*vo[0].cItmHeight)) * 1000) / 1000);
				
			}else if($("#cItemUnit1").val() == 'set'){
				$("#cItmPrice1").val(Math.round((vo[0].nPrdPriceOcog+vo[0].nPrdLaborOcog)*parseFloat(vo[0].cItmQty1 / 2) * 1000) / 1000);
				$("#cItmMatePrice1").val(Math.round(vo[0].nPrdPriceOcog*parseFloat(vo[0].cItmQty1 / 2) * 1000) / 1000);
				$("#cItmLaborPrice1").val(Math.round(vo[0].nPrdLaborOcog*parseFloat(vo[0].cItmQty1 / 2) * 1000) / 1000);

				$("#cItmPrice2").val(Math.round((vo[0].nPrdPriceCont+vo[0].nPrdLaborCont)*parseFloat(vo[0].cItmQty1 / 2) * 1000) / 1000);
				$("#cItmMatePrice2").val(Math.round(vo[0].nPrdPriceCont*parseFloat(vo[0].cItmQty1 / 2) * 1000) / 1000);
				$("#cItmLaborPrice2").val(Math.round(vo[0].nPrdLaborCont*parseFloat(vo[0].cItmQty1 / 2) * 1000) / 1000);
			}
			
			//조직위단가 합
			$("#cItmUnitPrice1").val(Math.round((vo[0].nPrdPriceOcog+vo[0].nPrdLaborOcog) * 1000) / 1000);
			$("#cItmMateUnitPrice1").val(Math.round(vo[0].nPrdPriceOcog * 1000) / 1000);
			$("#cImtLaborUnitPrice1").val(Math.round(vo[0].nPrdLaborOcog * 1000) / 1000);
			
			//외주단가 합
			$("#cItmUnitPrice2").val(Math.round((vo[0].nPrdPriceCont+vo[0].nPrdLaborCont) * 1000) / 1000);
			$("#cItmMateUnitPrice2").val(Math.round(vo[0].nPrdPriceCont * 1000) / 1000);
			$("#cImtLaborUnitPrice2").val(Math.round(vo[0].nPrdLaborCont * 1000) / 1000);
			
			
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
		
$("#selectAlltd").change(function() {
    if(this.checked) {
    	alert('총 '+$(".select_td").length +'개가 선택 됩니다.');
    	$(".select_td").prop('checked', true);
    }else{
    	$(".select_td").prop('checked', false);
    }
});

function selectAllTds(){
	//select_td
	var allVals = [];
	$('.select_td:checkbox:checked').each(function() {
      allVals.push($(this).attr("id"));
    });

	$('#td_numbers').val(allVals);
}
function submitBulk(){
	selectAllTds();
	//alert($('#td_numbers').val());
// 	//검색값 찾아오기
	$('#cItmProdSrcBulk').val($('#cItmProdSrc').val());
	$('#cItmSportSrcBulk').val($('#cItmSportSrc').val());
	$('#cItmDeptSrcBulk').val($('#cItmDeptSrc').val());
	$('#cItmMateSrcBulk').val($('#cItmMateSrc').val());
	
	$('#cItmComSrcBulk').val($('#cItmComSrc').val());
	$('#cItmVenueSrcBulk').val($('#cItmVenueSrc').val());
	$("#cItmCodeSrcBulk").val($("#cItmCodeSrc").val());
	$('#cItmEventSrcBulk').val($('#cItmEventSrc').val());
	
	
	$("#itemBulkForm").submit();
}

// 		addPrePhoForm
</script>
</html>
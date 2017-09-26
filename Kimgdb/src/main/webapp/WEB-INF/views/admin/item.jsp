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
                            <label class="control-label" for="order_id">번호</label>
                            <input type="text" id="order_id" name="order_id" value="" placeholder="Order ID" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="status">아이템코드</label>
                            <input type="text" id="status" name="status" value="" placeholder="Status" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="customer">베뉴</label>
                            <input type="text" id="customer" name="customer" value="" placeholder="Customer" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="date_added">스포츠</label>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_added" type="text" class="form-control" value="03/04/2014">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="date_modified">카테고리</label>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_modified" type="text" class="form-control" value="03/06/2014">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="amount">품목</label>
                            <input type="text" id="amount" name="amount" value="" placeholder="Amount" class="form-control">
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

                                    <th>번호</th>
                                    <th data-hide="phone">아이템코드</th>
                                    <th data-hide="phone">베뉴</th>
                                    <th data-hide="phone">스포츠</th>
                                    <th data-hide="phone" >카테고리</th>
                                    <th data-hide="phone">품목</th>
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
                                    <th class="text-right">상태 / 행동</th>

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
                                        ${ele.cItmVenue}
                                    </td>
                                    <td>
                                        ${ele.cItmSport}
                                    </td>
                                    <td>
                                        ${ele.cItmCate}
                                    </td>
                                    <td>
                                        ${ele.cItmProd}
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
                                    <td class="text-right">
                                    <span class="label label-primary">설치중</span>
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
                                    <td colspan="7">
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

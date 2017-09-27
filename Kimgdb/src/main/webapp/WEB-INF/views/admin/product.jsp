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
                <div class="col-lg-2">
                    <h2>제품</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>제품</strong></a>
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
                            <label class="control-label" for="nPrdCnt">번호</label>
                            <input type="text" id="nPrdCnt" name="nPrdCnt" value="" placeholder="Product Number" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="cPrdCode">품목코드</label>
                            <input type="text" id="cPrdCode" name="cPrdCode" value="" placeholder="Product Code" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="cPrdCat">카테고리</label>
                            <select class="form-control m-b" id="cPrdCat" name="cPrdCat">                           		
                           		<option value="lok">룩</option>
                           		<option value="sin">사이니지</option>
                           		<option value="spc">스펙타큘러</option>
                           		<option value="eqi">스포츠 장비</option>                           		
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label class="control-label" for="cPrdName">품목명(영문)</label>
                            <input type="text" id="cPrdName" name="cPrdName" value="" placeholder="Product Name" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label class="control-label" for="cPrdLocalName">품목명(한글)</label>
                            <input type="text" id="cPrdLocalName" name="cPrdLocalName" value="" placeholder="Product Local Name" class="form-control">
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
                                    <th>품목코드</th>
                                    <th data-hide="phone">품목명(영문)</th>
                                    <th data-hide="phone">품목명(한글)</th>
                                    <th data-hide="phone" >카테고리</th>
                                    <th data-hide="phone, tablet">설명</th>
                                    <!-- <th class="text-right">행동</th> -->
                                </tr>
                                </thead>
                                <tbody>
								<c:forEach items="${productList}" var="ele">
                                <tr>
                                	<td>
                                        ${ele.nPrdCnt}
                                    </td>
                                    <td>
                                        ${ele.cPrdCode}
                                    </td>
                                     <td>
                                        ${ele.cPrdName}
                                    </td>
                                    <td>
                                       	${ele.cPrdLocalName}
                                    </td>
                                    <td>
                                        ${ele.cPrdCat}
                                    </td>
                                    <td>
                                        ${ele.cPrdDesc}
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

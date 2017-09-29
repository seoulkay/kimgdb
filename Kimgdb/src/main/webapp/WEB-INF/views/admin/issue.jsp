<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <h2>이슈</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>이슈</strong></a>
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
                            <input type="text" id="order_id" name="order_id" value="" placeholder="Issue ID" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="status">아이템코드</label>
                            <input type="text" id="status" name="status" value="" placeholder="Item Code" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="cItmProd">품목</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmProd" name="cItmProd">
                           		<option value="">전체</option>
                           		<option value="">Access Control Standing - 승인 및 보안사인(지주)</option>
                           		<option value="">Access Control Wall - 승인 및 보안사인(벽부)</option>
                           		<option value="">Desk Sign Medium - 데스크사인(M)</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="cItmVenue">베뉴</label>                       		
                           	<select class="selectpicker form-control m-b" data-live-search="true" name="cItmVenue" id="cItmVenue" >
                           		<option value="">전체</option>
                           		<option value="">ABT - 알펜시아 바이애슬론 센터</option> 
                           		<option value="">ACC - 알펜시아 크로스컨트리 센터</option>                            	
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="date_modified">이슈 생성일</label>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_modified" type="text" class="form-control" value="03/06/2014">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="">이슈 상태</label>                       		
                           	<select class="selectpicker form-control m-b" data-live-search="true" name="" id="" >
                           		<option value="">전체</option>
                           		<option value="">작업중</option> 
                           		<option value="">작업 완료</option>                            	
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
                                    <th>이슈번호</th>
                                    <th data-hide="phone">아이템코드</th>
                                    <th data-hide="phone">품목</th>
                                    <th data-hide="phone">베뉴</th>
                                    <th data-hide="phone">이슈 생성일</th>
                                    <th data-hide="phone">상태</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>GVL-None-윌링투-A-LWG-외부-0005</td>
                                    <td>Look Wall Graphic</td>
                                    <td>ALP</td>
                                    <td>2017-09-29</td>
                                    <td>
                                        <span class="pie">1,1
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#ed5565"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#ed5565"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">보기</button>
                                            <button class="btn-white btn btn-xs">수정</button>
                                            <button class="btn-white btn btn-xs">삭제</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>BKV-OFR-DOP-A-LTS-1층-001-0001</td>
                                    <td>Look Table Skirt</td>
                                    <td>ACC</td>
                                    <td>2017-09-26</td>
                                    <td>
                                    	<i class="fa fa-check text-navy"></i>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">보기</button>
                                            <button class="btn-white btn btn-xs">수정</button>
                                            <button class="btn-white btn btn-xs">삭제</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>GVL-None-윌링투-A-LWG-외부-0005</td>
                                    <td>Look Wall Graphic</td>
                                    <td>ALP</td>
                                    <td>2017-09-25</td>
                                    <td>
                                        <i class="fa fa-check text-navy"></i>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">보기</button>
                                            <button class="btn-white btn btn-xs">수정</button>
                                            <button class="btn-white btn btn-xs">삭제</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>BKV-OFR-DOP-A-LTS-1층-001-0001</td>
                                    <td>Look Table Skirt</td>
                                    <td>ACC</td>
                                    <td>2017-09-25</td>
                                    <td>
                                        <i class="fa fa-check text-navy"></i>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">보기</button>
                                            <button class="btn-white btn btn-xs">수정</button>
                                            <button class="btn-white btn btn-xs">삭제</button>
                                        </div>
                                    </td>
                                </tr>                                
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

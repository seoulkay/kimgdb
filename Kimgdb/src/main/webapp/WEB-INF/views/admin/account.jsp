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
                    <h2>정산</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>정산</strong></a>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">                   
                    <div class="ibox-content">

                        <div class="table-responsive">
		                    <table class="table table-striped table-bordered table-hover dataTables-example" >
			                    <thead>
				                    <tr>
				                        <th style="width: 200px;">아이템 코드</th>
				                        <th style="width: 50px;">업체</th>
				                        <th style="width: 50px;">개수</th>
				                        <th style="width: 30px;">단위</th>
				                        <th style="width: 50px;">수량</th>
				                        <th style="width: 30px;">단위</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">단가 합계 (조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">금액 합계 (조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">재료비 단가(조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">재료비 금액(조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">노무비 단가(조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">노무비 금액(조)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">단가 합계 (하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">금액 합계 (하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">재료비 단가(하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">재료비 금액(하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">노무비 단가(하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">노무비 금액(하)</th>
				                    </tr>
			                    </thead>
			                    <tbody>
			                    <c:forEach items="${itemList }" var="ele">
			                    <tr class="gradeA">
				                        <td>AVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">${ele }</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
			                    </c:forEach>
				                    
				                    <tr class="gradeC">
				                        <td>BKV-OFR-DOP-A-LTS-1층-001-0001</td>
				                        <td class="center">UFO</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>YAL-ALP-CER-A-LK-LTH-A1-1F-004</td>
				                        <td class="center">UFO</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeC">
				                        <td>YAL-ALP-CER-A-LK-LCH-A1-1F-001</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeC">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">UFO</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">UFO</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeC">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">UFO</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeC">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeC">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">UFO</td>
				                        <td class="center"></td>
				                        <td>ea</td>
				                        <td class="center">1.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeC">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeC">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">HAN</td>
				                        <td class="center">1.00</td>
				                        <td>ea</td>
				                        <td class="center">10.56</td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>
				                    <tr class="gradeC">
				                        <td>GVL-None-윌링투-A-LWG-외부-0005</td>
				                        <td class="center">SAM</td>
				                        <td class="center">2.00</td>
				                        <td>ea</td>
				                        <td class="center"></td>
				                        <td>㎡</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">60,000</td>
				                        <td class="center">50,000</td>
				                    </tr>                    
			                    </tbody>
			                    <tfoot>
				                    <tr>
				                        <th style="width: 200px;">아이템 코드</th>
				                        <th style="width: 50px;">업체</th>
				                        <th style="width: 50px;">개수</th>
				                        <th style="width: 30px;">단위</th>
				                        <th style="width: 50px;">수량</th>
				                        <th style="width: 30px;">단위</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">단가 합계 (조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">금액 합계 (조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">재료비 단가(조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">재료비 금액(조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">노무비 단가(조)</th>
				                        <th style="width: 100px; background: rgba(248, 172, 89, 0.7)">노무비 금액(조)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">단가 합계 (하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">금액 합계 (하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">재료비 단가(하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">재료비 금액(하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">노무비 단가(하)</th>
				                        <th style="width: 100px; background: rgba(35, 198, 200, 0.7)">노무비 금액(하)</th>
				                    </tr>
			                    </tfoot>
		                    </table>
                        </div>
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

<!-- Page-Level Scripts -->
    <script>
        $(document).ready(function(){
            $('.dataTables-example').DataTable({
            	scrollX: true,
            	pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    { extend: 'copy'},
                    {extend: 'csv'},
                    {extend: 'excel', title: 'ExampleFile'},
                    {extend: 'pdf', title: 'ExampleFile'},

                    {extend: 'print',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', 'inherit');
                    }
                    }
                ]

            });

        });

    </script>

</html>

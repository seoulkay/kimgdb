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
			                    <c:forEach items="${itemList }" var="ele" varStatus="status">
			                    <tr>
				                        <td>${ele.cItmCode }</td>
				                        <td class="center">${ele.cItmCom }</td>
				                        <td class="center">${ele.cItmQty1 }</td>
				                        <td>${ele.cItemUnit1 }</td>
				                        <td class="center">${ele.cItmQty2 }</td>
				                        <td>${ele.cItmUnit2 }</td>
				                        <td class="center">${ele.cItmUnitPrice1 }</td>
				                        <td class="center">${ele.cItmPrice1 }</td>
				                        <td class="center">${ele.cItmMateUnitPrice1 }</td>
				                        <td class="center">${ele.cItmMatePrice1 }</td>
				                        <td class="center">${ele.cImtLaborUnitPrice1 }</td>
				                        <td class="center">${ele.cItmLaborPrice1 }</td>
				                        <td class="center">${ele.cItmUnitPrice2 }</td>
				                        <td class="center">${ele.cItmPrice2 }</td>
				                        <td class="center">${ele.cItmMateUnitPrice2 }</td>
				                        <td class="center">${ele.cItmMatePrice2 }</td>
				                        <td class="center">${ele.cImtLaborUnitPrice2 }</td>
				                        <td class="center">${ele.cItmLaborPrice2 }</td>
				                    </tr>
			                    </c:forEach>
				                    
				               
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
//                     {extend: 'csv', bom:true},
                    {extend: 'excel', title: 'KIMG_Database_Report', bom:true},
//                     {extend: 'pdf', title: 'KIMG_Database_Report', bom:true},
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

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
                    <h2>리포트</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>리포트</strong></a>
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
				                        <th style="width: 50px;">베뉴</th>
				                        <th style="width: 50px;">스포츠</th>
				                        <th style="width: 50px;">FA</th>
				                        <th style="width: 50px;">게임</th>
				                        <th style="width: 60px;">카테고리</th>
				                        <th style="width: 100px;">품목</th>
				                        <th style="width: 50px;">Area</th>
				                        <th style="width: 50px;">Floor</th>
				                        <th style="width: 50px;">Location</th>
				                        <th style="width: 50px;">업체</th>
				                        <th style="width: 100px;">작업구분</th>
				                        <th style="width: 100px;">작업상태</th>
				                        <th style="width: 50px;">날짜</th>
				                    </tr>
			                    </thead>
			                    <tbody>
			                    <c:forEach items="${itemList }" var="ele" varStatus="status">
				                    <tr>
				                        <td>${ele.cItmCode }</td>
				                        <td class="center">${ele.cItmVenue }</td>
				                        <td class="center">${ele.cItmSport }</td>
				                        <td class="center">${ele.cItmDept }</td>
				                        <td class="center">${ele.cEvnName }</td>
				                        <td class="center">${ele.cCatName }</td>
				                        <td>${ele.cPrdName }</td>
				                        <td class="center">${ele.cItmDesc }</td>
				                        <td class="center">${ele.cItmFloor }</td>
				                        <td class="center">${ele.cItmLocation }</td>
				                        <td class="center">${ele.cItmCom }</td>
				                        <td>${ele.cTtpName }</td>
				                        <td>${ele.cTstName }</td>
				                        <td><fmt:formatDate pattern = "yyyy-MM-dd"  value = "${ele.dTskCrt }" /></td>
				                    </tr>
				               </c:forEach>
			                    </tbody>
			                    <tfoot>
				                    <tr>
				                        <th>아이템 코드</th>
				                        <th>베뉴</th>
				                        <th>스포츠</th>
				                        <th>FA</th>
				                        <th>게임</th>
				                        <th>카테고리</th>
				                        <th>품목</th>
				                        <th>Area</th>
				                        <th>Floor</th>
				                        <th>Location</th>
				                        <th>업체</th>
				                        <th>작업구분</th>
				                        <th>작업상태</th>
				                        <th>날짜</th>
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
//                 {extend: 'csv', bom:true},
                {extend: 'excel', title: 'KIMG_Database_Report', bom:true},
//                 {extend: 'pdf', title: 'KIMG_Database_Report', bom:true},
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

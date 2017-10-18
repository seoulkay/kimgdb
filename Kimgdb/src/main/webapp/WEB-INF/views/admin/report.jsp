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
				                    <tr <c:if test="${status.count mod 2 eq 0}">class="gradeA"</c:if> <c:if test="${status.count mod 2 eq 1}">class="gradeC"</c:if>>
				                        <td>YAL-ALP-CER-B-LK-LBD-A1-1F-006</td>
				                        <td class="center">YAL</td>
				                        <td class="center">ALP</td>
				                        <td class="center">CER</td>
				                        <td class="center">B</td>
				                        <td class="center">룩</td>
				                        <td>Look Drop Banner</td>
				                        <td class="center">A1</td>
				                        <td class="center">1F</td>
				                        <td class="center">006</td>
				                        <td class="center">UFO</td>
				                        <td>제작 및 출력</td>
				                        <td>검수완료</td>
				                        <td>2017-10-02</td>
				                    </tr>
				               </c:forEach>
				                    <tr class="gradeA">
				                        <td>YAL-ALP-CER-B-LK-LBD-A1-1F-006</td>
				                        <td class="center">YAL</td>
				                        <td class="center">ALP</td>
				                        <td class="center">CER</td>
				                        <td class="center">B</td>
				                        <td class="center">룩</td>
				                        <td>Look Drop Banner</td>
				                        <td class="center">A1</td>
				                        <td class="center">1F</td>
				                        <td class="center">006</td>
				                        <td class="center">UFO</td>
				                        <td>설치</td>
				                        <td>검수완료</td>
				                        <td>2017-10-07</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>YAL-ALP-CER-B-LK-LBD-A1-1F-006</td>
				                        <td class="center">YAL</td>
				                        <td class="center">ALP</td>
				                        <td class="center">CER</td>
				                        <td class="center">B</td>
				                        <td class="center">룩</td>
				                        <td>Look Drop Banner</td>
				                        <td class="center">A1</td>
				                        <td class="center">1F</td>
				                        <td class="center">006</td>
				                        <td class="center">UFO</td>
				                        <td>철거</td>
				                        <td>검수완료</td>
				                        <td>2017-11-12</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>YAL-ALP-DOP-A-SI-RIS-A1-B1-001</td>
				                        <td class="center">YAL</td>
				                        <td class="center">ALP</td>
				                        <td class="center">DOP</td>
				                        <td class="center">A</td>
				                        <td class="center">사이니지</td>
				                        <td>Room ID Sign small</td>
				                        <td class="center">A1</td>
				                        <td class="center">B1</td>
				                        <td class="center">001</td>
				                        <td class="center">HAN</td>
				                        <td>제작 및 출력</td>
				                        <td>검수완료</td>
				                        <td>2017-11-23</td>
				                    </tr>
				                    <tr class="gradeA">
				                        <td>YAL-ALP-DOP-A-SI-RIS-A1-B1-001</td>
				                        <td class="center">YAL</td>
				                        <td class="center">ALP</td>
				                        <td class="center">DOP</td>
				                        <td class="center">A</td>
				                        <td class="center">사이니지</td>
				                        <td>Room ID Sign small</td>
				                        <td class="center">A1</td>
				                        <td class="center">B1</td>
				                        <td class="center">001</td>
				                        <td class="center">HAN</td>
				                        <td>철거</td>
				                        <td>검수요청</td>
				                        <td>2017-11-28</td>
				                    </tr>				                                 
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

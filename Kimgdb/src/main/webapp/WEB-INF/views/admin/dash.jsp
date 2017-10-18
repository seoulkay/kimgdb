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
                    <h2>대시보드</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>대시보드</strong></a>
                        </li>
                    </ol>
                </div>
                <p>
                    <span class="text-muted small">업데이트 : ${dashInfo.dDasCrtDate }<br>
                    </span>
                    </p>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">
            <div class="row">
                <div class="col-md-2">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span class="label label-success pull-right">Products</span>
                            <h5>품목</h5>
                        </div>
                        <div class="ibox-content">
                        	<div class="row">
                        		<div class="col-md-12">
                        			<h1 class="no-margins">${dashInfo.nDasProduct }</h1>
                            		<div class="font-bold text-success">총 등록된 품목</div>
                            	</div>                        	
                        	</div>                                                        
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span class="label label-primary pull-right">Item</span>
                            <h5>아이템</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-md-6">
                                    <!-- 총 등록되어 있는 아이템 수 -->
                                    <h1 class="no-margins">${dashInfo.nDasItem }</h1>
                                    <div class="font-bold text-navy">총 등록된 아이템</div>
                                </div>
                                <div class="col-md-6">
                                	<!-- 총 등록되어 있는 작업 수 (아이템 하위 태스크 개수) -->
                                    <h1 class="no-margins">${dashInfo.nDasTask }</h1>
                                    <div class="font-bold text-navy">총 등록된 작업</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span class="label label-danger pull-right">Issue</span>
                            <h5>이슈</h5>
                        </div>
                        <div class="ibox-content">

                            <div class="row">
                                <div class="col-md-6">
                                    <!-- 총 등록되어 있는 이슈 개수 -->
                                    <h1 class="no-margins">${dashInfo.nDasIssue }</h1>
                                    <div class="font-bold text-danger">총 등록된 이슈</div>
                                </div>
                                <div class="col-md-6">
                                    <!-- 이슈 완료 개수: 총 등록되어 있는 이슈 중 작업으로 보고된 개수 -->
                                    <h1 class="no-margins">${dashInfo.nDasIssueReq }</h1>
                                    <div class="font-bold text-danger">총 보고된 이슈</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span class="label label-warning pull-right">Profile</span>
                            <h5>프로필</h5>
                        </div>
                        <div class="ibox-content">
                        	<div class="row">
                        		<div class="col-md-12">
	                        		<!-- 총 등록되어 있는 유저 수 -->
	                        		<h1 class="no-margins">${dashInfo.nDasPerson }</h1>
	                        		<div class="font-bold text-warning">총 등록된 유저</div>
                        		</div>                         
                       		</div>
                    	</div>                       	
                    </div>
                </div>                
            </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="ibox float-e-margins">
                            <div class="ibox-content">
                                <div>
                                    <h4>아이템 비율</h4>
                                </div>
                                <!-- 아이템에서 카테고리 비율 -->
                                <div class="m-t-sm">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div>
                                            <canvas id="doughnutChart1" height="120"></canvas>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="ibox float-e-margins">
                            <div class="ibox-content">
                                <div>
                                    <h4>작업 비율</h4>
                                </div>
								<!-- 아이템에서 작업구분 비율 -->
                                <div class="m-t-sm">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div>
                                            <canvas id="doughnutChart2" height="120"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">

                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>이슈 트래커 </h5>
                            </div>
                            <div class="ibox-content">
                                <div class="row">
                                    <div class="col-sm-9 m-b-xs">
                                        <div data-toggle="buttons" class="btn-group">
                                            <label class="btn btn-sm btn-white"> <input type="radio" id="option1" name="options"> Day </label>
                                            <label class="btn btn-sm btn-white active"> <input type="radio" id="option2" name="options"> Week </label>
                                            <label class="btn btn-sm btn-white"> <input type="radio" id="option3" name="options"> Month </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="input-group"><input type="text" placeholder="Search" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> Go!</button> </span></div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>이슈번호</th>
                                            <th>아이템코드</th>
                                            <th>품목</th>
                                            <th>베뉴</th>
                                            <th>이슈 생성자</th>
                                            <th>이슈 생성일</th>
                                            <th>상태</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>GVL-None-윌링투-A-LWG-외부-0005</td>
                                            <td>Look Wall Graphic</td>
                                            <td>ALP</td>
                                            <td>kay.lee</td>
                                            <td>2017-09-29</td>                                           
                                            <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>BKV-OFR-DOP-A-LTS-1층-001-0001</td>
                                            <td>Look Table Skirt</td>
                                            <td>ACC</td>
                                            <td>kay.lee</td>
                                            <td>2017-09-26</td>
                                            <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>GVL-None-윌링투-A-LWG-외부-0005</td>
                                            <td>Look Wall Graphic</td>
                                            <td>ALP</td>
                                            <td>kay.lee</td>
                                            <td>2017-09-29</td>
                                            <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>BKV-OFR-DOP-A-LTS-1층-001-0001</td>
                                            <td>Look Table Skirt</td>
                                            <td>ACC</td>
                                            <td>kay.lee</td>
                                            <td>2017-09-26</td>
                                            <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
                                        </tr>                                        
                                        </tbody>
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
<script>
        $(document).ready(function() {


            var d1 = [[1262304000000, 6], [1264982400000, 3057], [1267401600000, 20434], [1270080000000, 31982], [1272672000000, 26602], [1275350400000, 27826], [1277942400000, 24302], [1280620800000, 24237], [1283299200000, 21004], [1285891200000, 12144], [1288569600000, 10577], [1291161600000, 10295]];
            var d2 = [[1262304000000, 5], [1264982400000, 200], [1267401600000, 1605], [1270080000000, 6129], [1272672000000, 11643], [1275350400000, 19055], [1277942400000, 30062], [1280620800000, 39197], [1283299200000, 37000], [1285891200000, 27000], [1288569600000, 21000], [1291161600000, 17000]];

            var data1 = [
                { label: "Data 1", data: d1, color: '#17a084'},
                { label: "Data 2", data: d2, color: '#127e68' }
            ];
            $.plot($("#flot-chart1"), data1, {
                xaxis: {
                    tickDecimals: 0
                },
                series: {
                    lines: {
                        show: true,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 1
                            }, {
                                opacity: 1
                            }]
                        },
                    },
                    points: {
                        width: 0.1,
                        show: false
                    },
                },
                grid: {
                    show: false,
                    borderWidth: 0
                },
                legend: {
                    show: false,
                }
            });

            var lineData = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                    {
                        label: "Example dataset",
                        backgroundColor: "rgba(26,179,148,0.5)",
                        borderColor: "rgba(26,179,148,0.7)",
                        pointBackgroundColor: "rgba(26,179,148,1)",
                        pointBorderColor: "#fff",
                        data: [48, 48, 60, 39, 56, 37, 30]
                    },
                    {
                        label: "Example dataset",
                        backgroundColor: "rgba(220,220,220,0.5)",
                        borderColor: "rgba(220,220,220,1)",
                        pointBackgroundColor: "rgba(220,220,220,1)",
                        pointBorderColor: "#fff",
                        data: [65, 59, 40, 51, 36, 25, 40]
                    }
                ]
            };

            var lineOptions = {
                responsive: true
            };


            var ctx = document.getElementById("lineChart").getContext("2d");
            new Chart(ctx, {type: 'line', data: lineData, options:lineOptions});

        });
        
        var doughnutData = {
                labels: ["룩","사이니지","스펙타큘러","스포츠 장비"],
                datasets: [{
                    data: ['${dashInfo.nDasItemLook }','${dashInfo.nDasItemSign }','${dashInfo.nDasItemSpec }','${dashInfo.nDasItemSport }'],
                    backgroundColor: ["#a3e1d4","#dedede","#b5b8cf","#efcda7"]
                }]
            } ;


            var doughnutOptions = {
                responsive: true
            };


            var ctx4 = document.getElementById("doughnutChart1").getContext("2d");            
            new Chart(ctx4, {type: 'doughnut', data: doughnutData, options:doughnutOptions});
            
        var doughnutData2 = {
                labels: ["제작 및 출력","설치","철거"],
                datasets: [{
                    data: ['${dashInfo.nDasTaskMan }','${dashInfo.nDasTaskIns }','${dashInfo.nDasTaskDes }'],
                    backgroundColor: ["#a3e1d4","#dedede","#b5b8cf"]
                }]
            } ;


            var doughnutOptions2 = {
                responsive: true
            };
        
        
            var ctx5 = document.getElementById("doughnutChart2").getContext("2d");
            new Chart(ctx5, {type: 'doughnut', data: doughnutData2, options:doughnutOptions2});
    </script>
</html>

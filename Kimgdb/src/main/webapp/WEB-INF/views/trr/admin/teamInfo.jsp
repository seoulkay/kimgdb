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
                    <h2>TR Central Planning team Info</h2>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
	<div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>TRO Name : ${sessionScope.cred.cUserId }</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>Org</th>
                                    <th>Name</th>
                                    <th>Number</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr><td>OCOG</td><td>Byungwan Kwak</td><td>+82 033-350-3670</td></tr>
                                <tr><td>ODS & Results</td><td>Marc</td><td>+82 033-350-3530</td></tr>
                                <tr><td>ODS & Results</td><td>Claire Bae</td><td>+82 033-350-3556</td></tr>
                                <tr><td>Corehosting</td><td>Paul Long</td><td>+34 6911 27949</td></tr>
                                <tr><td>Cloud Service</td><td>Moosan Kim</td><td></td></tr>
                                <tr><td>Venue</td><td>Alex</td><td>+82 033-350-3574</td></tr>
                                <tr><td>Venue</td><td>Sungsik Hwang</td><td>+82 033-350-3525</td></tr>
                                <tr><td>Telecom</td><td>Moosan Kim</td><td></td></tr>
                                <tr><td>ITL</td><td>Esther Bayon</td><td>+34 690 92 53 49</td></tr>
                                <tr><td>CTOC</td><td>Paul Long</td><td>+34 6911 27949</td></tr>
                                <tr><td>Central</td><td>Jeehye Kim</td><td>+82 033-350-2402</td></tr>
                                <tr><td>Central</td><td>Younghee Bu</td><td>+82 033-350-5271</td></tr>
                                <tr><td>Central</td><td>Dongil Kim</td><td>+82 033-350-3547</td></tr>
                                <tr><td>Central</td><td>Flavia Dias Moreira</td><td></td></tr>
                                </tbody>
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
<script>
function printRunSheet(){
	window.print();
}
function selectProductOne(ref){
	$.post( "selectRaw/"+ref)
       .done(function( data ) {
         	var vo = JSON.parse(JSON.stringify(data));
 			
         	var vdts = "<h4>Date : <strong style='color:red'>" + vo.cRawDat + "</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Time : <strong style='color:red'>" + vo.cRawTim + "</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Severity : <strong style='color:red'>" + vo.cRawSev+"</strong></h3>";
         	
			$("#cRawVen").val(vo.cRawVen);
			$("#cRawDat").empty();
			$("#cRawDat").append(vdts);
			$("#cRawTtl").val(vo.cRawTtl);
			$("#cRawDec").val(vo.cRawDec);
			$("#cRawIst").val(vo.cRawIst);
			$("#cRawRes").val(vo.cRawRes);
       });
}


$( "#cItmProd" ).change(function() {
  var id = $("#cItmProd").val();
  selectProductOne(id);
});

</script>
</html>

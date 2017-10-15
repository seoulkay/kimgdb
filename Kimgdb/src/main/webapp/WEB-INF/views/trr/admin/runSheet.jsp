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
                    <h2>Run Sheet</h2>
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
                            <form method="get" class="form-horizontal">
                                <div class="form-group"><label class="col-sm-2 control-label">Scenario ID </label>
                                    <div class="col-sm-10">
                                    <select class="selectpicker form-control m-b" data-live-search="true" id="cItmProd">
                                    <option value="0">Select scenario</option>
                                    <c:forEach items="${raws }" var="ele">
										<option value="${ele.nRawCnt }">Scenario ${ele.nRawID }</option>
                                    </c:forEach>
                                    </select>
                                    </div>
                                </div>
                                
                                <div class="form-group"><label class="col-sm-2 control-label">Venue Name</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" readonly id="cRawVen"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label"></label>
                                    <div class="col-sm-10"><div id="cRawDat"></div></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                            	<div class="form-group"><label class="col-sm-2 control-label">TR TITLE</label>
                                    <div class="col-sm-10"><textarea class="form-control" readonly id="cRawTtl"></textarea></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">TR Description </label>
                                    <div class="col-sm-10"><textarea class="form-control" readonly id="cRawDec" rows="4"></textarea></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">TRO Instruction</label>
                                    <div class="col-sm-10"><textarea class="form-control" readonly id="cRawIst" rows="4"></textarea></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Expected Results </label>
                                    <div class="col-sm-10"><textarea class="form-control" readonly id="cRawRes" rows="8"></textarea></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-primary" onclick="printRunSheet()">Print</button>
                                    </div>
                                </div>
                            </form>
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

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
                    <h2>Survey List</h2>
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
                            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>
                                    <th>Survey count</th>
                                    <th data-hide="phone">ITSM Number</th>
                                    <th data-hide="phone">ITSM Type</th>
                                    <th data-hide="all">Survey triggered</th>
                                    <th data-hide="all">Why not triggered</th>                                    
                                    <th data-hide="all">Survey Solved?</th>
                                    <th data-hide="all">Within SLA</th>
                                    <th data-hide="all">Staff Readiness</th>
                                    <th data-hide="all" >the reason</th>
                                    <th data-hide="all">RnR understood</th>
                                    <th data-hide="all">the reason</th>
                                    <th data-hide="all">Communication Procedures</th>
                                    <th data-hide="all">the reason</th>
                                    <th data-hide="all">un-happy situation</th>
                                    <th data-hide="all">the reason</th>
                                    <th data-hide="all">Relationship FA</th>
                                    <th data-hide="all">the reason</th>
                                    <th data-hide="all">clear execution instruction</th>
                                    <th data-hide="all">clear resolution steps</th>
                                    <th data-hide="all">useful to evaluate the readiness</th>
                                    <th data-hide="all">Impacted customer attended</th>
                                    <th data-hide="all">service needs of customers</th>
                                    <th data-hide="all">Overall, how satisfied?</th> 
                                    <th data-hide="all">Feedback for venue team</th>
                                    <th data-hide="all">General Comments</th>
                                    <th data-hide="phone">Raw ID</th>
                                    <th data-hide="phone">Raw Venue</th>
                                    <th data-hide="phone">Raw date</th>
                                    <th data-hide="all">Raw time</th>
                                    <th data-hide="all">Raw Severity</th>
                                    <th data-hide="phone">TRO number</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${surveyList}" var="ele">
                                <tr>
                                     <td>
                                        ${ele.nSurveyCnt}
                                    </td>
                                    <td>
                                    	${ele.cSurveyItsm}
                                    </td>
                                    <td>
                                        ${ele.cSurveyItsmType}
                                    </td>
                                    <td>
                                        ${ele.cSurveyScenarioTri}
                                    </td>
                                    <td>
                                       ${ele.cIfNotExecuted}
                                    </td>
                                    <td>
                                       ${ele.cSurveyScenarioSol}
                                    </td>
                                    <td>
                                        ${ele.cSurveySla}
                                    </td>                                    
                                    <td>
                                        ${ele.cSurveyStaffRead}
                                    </td>
                                    <td>
                                        ${ele.cSurveyStaffReadText}
                                    </td>
                                    <td>
                                        ${ele.cSurveyRnR}
                                    </td>
                                    <td>
                                        ${ele.cSurveyRnRText}
                                    </td>
                                    <td>
                                        ${ele.cSurveyCommPro}
                                    </td>
                                    <td>
                                        ${ele.cSurveyCommProText}
                                    </td>
                                    <td>
                                        ${ele.cSurveyUnhappy}
                                    </td>
                                    <td>
                                        ${ele.cSurveyUnhappyText}
                                    </td>
                                    <td>
                                        ${ele.cSurveyRelFa}
                                    </td>
                                    <td>
                                        ${ele.cSurveyRelFaText}
                                    </td>
                                    <td>
                                       ${ele.cSurveyScenarioDoc}
                                    </td>
                                    <td>
                                        ${ele.cSurveyScenarioDocStep}
                                    </td>
                                    <td>
                                        ${ele.cSurveyScenarioReadiness}
                                    </td>
                                    <td>
                                        ${ele.cSurveyImpactedCustomer}
                                    </td>
                                    <td>
                                        ${ele.cSurveyUnderstandService}
                                    </td>
                                    <td>
                                        ${ele.cSurveyOverall}
                                    </td>
                                    <td>
                                        ${ele.cSurveyFeedbackVenue}
                                    </td>
                                    <td>
                                        ${ele.cSurveyGeneralComments}
                                    </td>
                                    <td>
                                        ${ele.cRawId}
                                    </td>
                                    <td>
                                        ${ele.cRawVen}
                                    </td>
                                    <td>
                                    	${ele.cRawDat}
                                    </td>
                                    <td>
                                        ${ele.cRawTim}
                                    </td>
                                    <td>
                                        ${ele.cRawSev}
                                    </td>
                                    <td>
                                        ${ele.cRawTroName}
                                    </td>
                                    
                                </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
	                                <tr>
	                                    <td colspan="16" class="footable-visible">
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

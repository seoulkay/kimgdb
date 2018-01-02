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
                    <h2>Survey form</h2>
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
                            <form method="POST" class="form-horizontal" action="surveyFormAction" id="surveyForm">
                            <input required type="hidden" class="form-control" name="cRawTroName" value="${sessionScope.cred.cUserId }">
                                <div class="form-group"><label class="col-sm-2 control-label">Scenario ID </label>
                                    <div class="col-sm-10">
                                    <select required class="selectpicker form-control m-b" data-live-search="true" name="cRawId" id="cRawId">
                                    <option value="0">Select scenario</option>
                                    <c:forEach items="${raws }" var="ele">
										<option value="${ele.nRawCnt }">Scenario ${ele.nRawID }</option>
                                    </c:forEach>
                                    </select>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Venue Name</label>
                                    <div class="col-sm-10"><input required type="text" class="form-control" readonly name="cRawVen" id="cRawVen"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Start Date </label>
                                    <div class="col-sm-10"><input required type="text" class="form-control" readonly name="cRawDat" id="cRawDat"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Scheduled Trigger Time</label>
                                    <div class="col-sm-10"><input required type="text" class="form-control" readonly name="cRawTim" id="cRawTim"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Severity</label>
                                    <div class="col-sm-10"><input required type="text" class="form-control" readonly name="cRawSev" id="cRawSev"></div>
                                </div>
                                
                                
                               
                                <div class="form-group"><label class="col-sm-2 control-label">ITSM incident number</label>
                                    
                                    <div class="col-sm-10">
                                     <label class="radio-inline"><input required type="radio" name="cSurveyItsmType" value="SR">SR</label>
									<label class="radio-inline"><input required type="radio" name="cSurveyItsmType" value="CR">CR</label>
									<label class="radio-inline"><input required type="radio" name="cSurveyItsmType" value="IOS">IOS</label>
									<label class="radio-inline"><input required type="radio" name="cSurveyItsmType" value="NA">NA</label>
									<hr>
                                    <input required type="text" class="form-control" name="cSurveyItsm">
									</div>
                                </div>
                                
                                <div class="hr-line-dashed"></div>
                                <H3>GENERAL </H3>
                                <div class="form-group"><label class="col-sm-2 control-label">Scenario Triggered</label>
                                    <div class="col-sm-10" id="ifNotExecutedDiv">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTri" value="YES">YES</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTri" id="cSurveyScenarioTri" value="NO">NO</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTri" value="NA">NA</label>
						   		
						   			<div id="ifNotExecuted">
						   			<hr>
						   			<select required class="selectpicker form-control m-b" data-live-search="true" name="cIfNotExecuted" id="cIfNotExecuted">
						   			<option value="not selected">If no is selected, please specify</option>
						   			<option value="Scheduling">Scheduling</option>
						   			<option value="Scenario quality">Scenario quality</option>
						   			<option value="Huge impact">Huge impact</option>
						   			</select>
						            </div>
						            
						            </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Scenario Solved</label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyScenarioSol" value="YES">YES</label> 
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioSol" value="NO">NO</label>   
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioSol" value="NA">NA</label>   
						             </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Within SLA</label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveySla" value="YES">YES</label> 
										<label class="radio-inline"><input required type="radio" name="cSurveySla" value="NO">NO</label>   
										<label class="radio-inline"><input required type="radio" name="cSurveySla" value="NA">NA</label>   
						             </div>
                                </div>
<!--                                 <div class="form-group"><label class="col-sm-2 control-label">Scenario Quality</label> -->
<!--                                     <div class="col-sm-10"> -->
<!-- 				                       	<label class="radio-inline"><input required type="radio" name="cSurveyScenarioQual" value="YES">YES</label>  -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioQual" value="NO">NO</label>    -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioQual" value="NA">NA</label>    -->
<!-- 						             </div> -->
<!--                                 </div> -->
<!--                                 <div class="form-group"><label class="col-sm-2 control-label">Senario Scheduling</label> -->
<!--                                     <div class="col-sm-10"> -->
<!-- 				                       	<label class="radio-inline"><input required type="radio" name="cSurveyScenarioSch" value="YES">YES</label>  -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioSch" value="NO">NO</label>    -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioSch" value="NA">NA</label>    -->
<!-- 						             </div> -->
<!--                                 </div> -->
                                <div class="hr-line-dashed"></div>
                                <H3>TEAM EVALUATION  </H3>
                                <div class="form-group"><label class="col-sm-2 control-label">Staff Readiness<br/>
                                    <small class="text-navy">In case of POOR/FAIR, specify the reason</small></label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyStaffRead" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyStaffRead" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyStaffRead" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyStaffRead" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyStaffRead" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyStaffRead" value="NA">NA</label>
						             </div>
						             <hr>
						             <div class="col-xs-5">
										<input type="text" maxlength="300" class="form-control input-sm" name="cSurveyStaffReadText">
									</div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Roles & Responsibility clearly understood <br/>
                                    <small class="text-navy">In case of POOR/FAIR, specify the reason</small></label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyRnR" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRnR" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRnR" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRnR" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRnR" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRnR" value="NA">NA</label>
						             </div>
						             <hr>
						             <div class="col-xs-5">
										<input type="text" maxlength="300" class="form-control input-sm" name="cSurveyRnRText">
									</div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Communication Procedures (Venue-TOC-CTOC or between Venue team) <br/>
                                    <small class="text-navy">In case of POOR/FAIR, specify the reason</small></label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyCommPro" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyCommPro" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyCommPro" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyCommPro" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyCommPro" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyCommPro" value="NA">NA</label>
						             </div>
						             <hr>
						             <div class="col-xs-5">
										<input type="text" maxlength="300" class="form-control input-sm" name="cSurveyCommProText">
									</div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Ability to handles in un-happy situation<br/>
                                    <small class="text-navy">In case of POOR/FAIR, specify the reason</small></label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyUnhappy" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnhappy" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnhappy" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnhappy" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnhappy" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnhappy" value="NA">NA</label>
						             </div>
						             <hr>
						             <div class="col-xs-5">
										<input type="text" maxlength="300" class="form-control input-sm" name="cSurveyUnhappyText">
									</div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Relationship with other FA teams <br/>
                                    <small class="text-navy">In case of POOR/FAIR, specify the reason</small></label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyRelFa" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRelFa" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRelFa" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRelFa" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRelFa" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyRelFa" value="NA">NA</label>
						             </div>
						             <hr>
						             <div class="col-xs-5">
										<input type="text" maxlength="300" class="form-control input-sm" name="cSurveyRelFaText">
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <H3>SCENARIOS</H3>
                                <div class="form-group"><label class="col-sm-2 control-label">The scenario was documented with clear execution  instruction </label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDoc" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDoc" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDoc" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDoc" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDoc" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDoc" value="NA">NA</label>
						             </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">The scenario was documented with clear resolution steps</label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDocStep" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDocStep" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDocStep" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDocStep" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDocStep" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioDocStep" value="NA">NA</label>
						             </div>
                                </div>
<!--                                 <div class="form-group"><label class="col-sm-2 control-label">The TRO required support from TR Team to better understand the scenario target</label> -->
<!--                                     <div class="col-sm-10"> -->
<!-- 				                       	<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTarget" value="POOR">POOR</label> -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTarget" value="FAIR">FAIR</label> -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTarget" value="GOOD">GOOD</label> -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTarget" value="VERY GOOD">VERY GOOD</label> -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTarget" value="EXCELLENT">EXCELLENT</label> -->
<!-- 										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioTarget" value="NA">NA</label> -->
<!-- 						             </div> -->
<!--                                 </div> -->
                                <div class="form-group"><label class="col-sm-2 control-label">The scneario was useful to evaluate the readiness of the Technology team </label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyScenarioReadiness" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioReadiness" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioReadiness" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioReadiness" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioReadiness" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyScenarioReadiness" value="NA">NA</label>
						             </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <H3>CUSTOMERS (TR2 only)</H3>
                                <div class="form-group"><label class="col-sm-2 control-label">Impacted customer was properly attended</label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyImpactedCustomer" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyImpactedCustomer" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyImpactedCustomer" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyImpactedCustomer" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyImpactedCustomer" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyImpactedCustomer" value="NA">NA</label>
						             </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Team understands the service  needs of customers</label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyUnderstandService" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnderstandService" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnderstandService" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnderstandService" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnderstandService" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyUnderstandService" value="NA">NA</label>
						             </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Overall, how satisfied is the customer with the service? </label>
                                    <div class="col-sm-10">
				                       	<label class="radio-inline"><input required type="radio" name="cSurveyOverall" value="POOR">POOR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyOverall" value="FAIR">FAIR</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyOverall" value="GOOD">GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyOverall" value="VERY GOOD">VERY GOOD</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyOverall" value="EXCELLENT">EXCELLENT</label>
										<label class="radio-inline"><input required type="radio" name="cSurveyOverall" value="NA">NA</label>
						             </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <H3>TRO Notes</H3>
                                <div class="form-group"><label class="col-sm-2 control-label">Feedback for venue team:</label>
                                    <div class="col-sm-10"><textarea required class="form-control" maxlength="3000" name="cSurveyFeedbackVenue"></textarea></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">General Comments </label>
                                    <div class="col-sm-10"><textarea required class="form-control" maxlength="3000" name="cSurveyGeneralComments"></textarea></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-primary" type="submit" onclick="return confirm('Do you want to submit?')">Submit</button>
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
function selectProductOne(ref){
	$.post( "selectRaw/"+ref)
       .done(function( data ) {
         	var vo = JSON.parse(JSON.stringify(data));
			$("#cRawVen").val(vo.cRawVen);
			$("#cRawDat").val(vo.cRawDat);
			$("#cRawTim").val(vo.cRawTim);
			$("#cRawSev").val(vo.cRawSev);
       });
}

$( "#cRawId" ).change(function() {
  var id = $("#cRawId").val();
  selectProductOne(id);
});

$("#ifNotExecuted").hide();
$('input').on('change', function() {
 if($('input[name=cSurveyScenarioTri]:checked').val() == "NO"){
	 $("#ifNotExecuted").show();
 }else{
	 $("#ifNotExecuted").hide();
 }
});

$(document).ready(function(){

    $("#surveyForm").validate({
        
    });
});

</script>
</html>

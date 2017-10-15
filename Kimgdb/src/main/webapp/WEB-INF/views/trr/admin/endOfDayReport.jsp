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
                    <h2>TRO End of Day Report </h2>
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
                            <form method="post" class="form-horizontal" action="eodFormAction">
                                <div class="form-group"><label class="col-sm-2 control-label">Excution date</label>
                                    <div class="col-sm-10"><input type="date" id="theDate" class="form-control" readonly name="dEodDate"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">TRO Name </label>
                                    <div class="col-sm-10"><input type="text" class="form-control" readonly value="${sessionScope.cred.cUserId }" name="cEodTroName"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Venue</label>
                                    <div class="col-sm-10">
                                    <select class="selectpicker form-control m-b" data-live-search="true" id="cEodVenue" name="cEodVenue">
                                    <option value="ACC">ACC</option>
                                    <option value="ASJ">ASJ</option>
                                    <option value="JAL">JAL</option>
                                    <option value="GIA">GIA</option>
                                    <option value="BSP">BSP</option>
                                    <option value="ASL">ASL</option>
                                    <option value="ABT">ABT</option>
                                    <option value="GIA">GIA</option>
                                    <option value="GHC">GHC</option>
                                    <option value="KHC">KHC</option>
                                    <option value="GCC">GCC</option>
                                    <option value="GOV">GOV</option>
                                    <option value="YAL">YAL</option>
                                    <option value="ITL">ITL</option>
                                    <option value="CTOC">CTOC</option>
                                    <option value="TOC">TOC</option>
                                    <option value="TSD">TSD</option>
                                    <option value="MULTI">MULTI</option>
                                    </select>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Sports</label>
                                    <div class="col-sm-10">
                                    <select class="selectpicker form-control m-b" data-live-search="true" id="cEodSports" name="cEodSports" multiple="multiple">
                                    <option value="CCS">CCS</option>
                                    <option value="NCB">NCB</option>
                                    <option value="SJP">SJP</option>
                                    <option value="ALP">ALP</option>
                                    <option value="STK">STK</option>
                                    <option value="FRS">FRS</option>
                                    <option value="SBD">SBD</option>
                                    <option value="BOB">BOB</option>
                                    <option value="LUG">LUG</option>
                                    <option value="SKN">SKN</option>
                                    <option value="BTH">BTH</option>
                                    <option value="FSK">FSK</option>
                                    <option value="IHO">IHO</option>
                                    <option value="CUR">CUR</option>
                                    <option value="SSK">SSK</option>
                                    <option value="NA">NA</option>
                                    </select>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">Good points</label>
                                    <div class="col-sm-10"><textarea class="form-control" maxlength="3000" name="cEodGood"></textarea></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Points to be improved</label>
                                    <div class="col-sm-10"><textarea class="form-control" maxlength="3000" name="cEodBad"></textarea></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">Other comments</label>
                                    <div class="col-sm-10"><textarea class="form-control" maxlength="3000" name="cEodOther"></textarea></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
<!--                                         <button class="btn btn-primary" type="submit">Submit</button> -->
                                        <button class="btn btn-primary" type="submit" onclick="return confirm('Do you want to submit?')" >Submit</button>
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
 var today = new Date();
 var dd = today.getDate();
 var mm = today.getMonth()+1; //January is 0!

 var yyyy = today.getFullYear();
 if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm} today = yyyy+'-'+mm+'-'+dd;

 $('#theDate').attr('value', today);

 //alert($('#theDate').attr('value'));
 
 </script>
</html>

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
                <div class="col-lg-2">
                    <h2>품목</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>품목</strong></a>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">


            <div class="ibox-content m-b-sm border-bottom">
            	<form id="searchItemForm" action="product" method="post">
                <div class="row">
                	<div class="col-sm-3">
                		<div class="form-group">
                            <label class="control-label" for="cPrdLocalName">품목명(한글)</label>
                            <input type="text" id="cPrdLocalNameSrc" name="cPrdLocalName" value="" placeholder="Product Local Name" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cPrdName">품목명(영문)</label>
                            <input type="text" id="cPrdNameSrc" name="cPrdName" value="" placeholder="Product Name" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cPrdCode">품목코드</label>
                            <input type="text" id="cPrdCodeSrc" name="cPrdCode" value="" placeholder="Product Code" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cPrdCat">카테고리</label>
                            <select class="form-control m-b" id="cPrdCatSrc" name="cPrdCat">                           		
                              		<c:forEach items="${catList }" var="ele">
                              		<option value="${ele.cCatType }">${ele.cCatName }</option>
                              		</c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                </form>                
				<div class="row">
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3">
                		<c:if test='${sessionScope.cred.cPerCom eq "adm"}'>
                		<button type="button" class="btn btn-primary btn-sm btn-block" type="button" id="addProductBtn">생성</button>
                		</c:if>
                	</div>
                	<div class="col-sm-3">
                		<button type="button" class="btn btn-primary btn-sm btn-block" onclick="searchItem()">검색</button>
                	</div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>

                                    <th data-hide="phone">번호</th>
                                    <th>품목코드</th>
                                    <th data-hide="phone">품목명(영문)</th>
                                    <th data-hide="phone">품목명(한글)</th>
                                    <th data-hide="phone" >카테고리</th>
<!--                                     <th data-hide="phone, tablet">설명</th> -->
                                    <!-- <th class="text-right">행동</th> -->
                                </tr>
                                </thead>
                                <tbody>
								<c:forEach items="${productList}" var="ele">
                                <tr>
                                	<td>
                                        ${ele.nPrdCnt}
                                    </td>
                                    <td>
                                        ${ele.cPrdCode}
                                    </td>
                                     <td>
                                        ${ele.cPrdName}
                                    </td>
                                    <td>
                                       	${ele.cPrdLocalName}
                                    </td>
                                    <td>
                                        <c:if test="${ele.cPrdCat eq 'lok'}"><span class="label label-primary">룩</span></c:if>
                                        <c:if test="${ele.cPrdCat eq 'sin'}"><span class="label label-success">사이니지</span></c:if>
                                        <c:if test="${ele.cPrdCat eq 'spc'}"><span class="label label-danger">스펙타큘러</span></c:if>
                                        <c:if test="${ele.cPrdCat eq 'eqi'}"><span class="label label-warning">스포츠장비</span></c:if>
                                    </td>
<!--                                     <td> -->
<%--                                         ${ele.cPrdDesc} --%>
<!--                                     </td> -->
                                    <td class="text-right">
                                        <div class="btn-group">
                                        <c:choose>
                                        	<c:when test='${sessionScope.cred.cPerCom eq "adm"}'>
                                        	  <button class="btn-white btn btn-xs" onclick="selectProductOne('${ele.nPrdCnt}')">보기 / 수정</button>
                                        	</c:when>
                                        	<c:otherwise>
                                        	  <button class="btn-white btn btn-xs" onclick="selectProductOne('${ele.nPrdCnt}')">보기</button>
                                        	</c:otherwise>
                                        </c:choose>
                                          
                                            <c:if test='${sessionScope.cred.cPerCom eq "adm"}'>
                                            <button class="btn-white btn btn-xs" onclick="deleteProduct('${ele.nPrdCnt}')">삭제</button>
                                            </c:if>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="7">
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
        
      	<jsp:include page="../footer.jsp" flush="true">
		<jsp:param name="param" value="value1" />
		</jsp:include>
		
		</div>
    </div>
                            <div class="modal inmodal" id="addProductModal" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated fadeIn">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
                                            <i class="fa fa-clock-o modal-icon"></i>
                                            <h4 class="modal-title">제품 관리</h4>
                                        </div>
                                        <div class="modal-body">
                                         <form method="POST" class="form-horizontal" id="addProductForm">
                                         	<input type="hidden" class="form-control" name="nPrdCnt" id="nPrdCnt" maxlength="30" value=0>
                                            <div class="form-group"><label class="col-sm-2 control-label">품목코드</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cPrdCode" id="cPrdCode" maxlength="6"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">품목이름(영)</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cPrdName" id="cPrdName" maxlength="100"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">품목이름(한)</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cPrdLocalName" id="cPrdLocalName" maxlength="200"></div>
			                                </div>
			                                <c:choose>
												<c:when test='${(sessionScope.cred.cPerCom eq "adm") || (sessionScope.cred.cPerCom eq "POC") }'>
												<div style="display: block;">
												</c:when>
												<c:otherwise>
												<div style="display: none;">
												</c:otherwise>
											</c:choose>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위재료비</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="nPrdPriceOcog" id="nPrdPriceOcog" step=any value="0"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위 노무비+경비</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="nPrdLaborOcog" id="nPrdLaborOcog" step=any value="0"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">조직위합계</label>
			                                    <div class="col-sm-10" id="OcogTotal"></div>
			                                </div>
			                                </div>
			                                <c:choose>
												<c:when test='${sessionScope.cred.cPerCom eq "POC" }'>
												<div style="display: none;">
												</c:when>
												<c:otherwise>
												<div style="display: block;">
												</c:otherwise>
											</c:choose>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주재료비</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="nPrdPriceCont" id="nPrdPriceCont" step=any value="0"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주 노무비+경비</label>
			                                    <div class="col-sm-10"><input type="number" class="form-control" name="nPrdLaborCont" id="nPrdLaborCont" step=any value="0"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">외주합계</label>
			                                    <div class="col-sm-10" id="ContTotal"></div>
			                                </div>
			                                </div>
			                                
			                                <div class="form-group"><label class="col-sm-2 control-label">카테고리</label>
			                                    <div class="col-sm-10">
			                                   	<select class="form-control m-b" name="cPrdCat" id="cPrdCat">
			                                   		<c:forEach items="${catList }" var="ele">
			                                   		<option value="${ele.cCatType }">${ele.cCatName }</option>
			                                   		</c:forEach>
			                                    </select>
			                                    </div>
			                                </div>
			                                
			                                <div class="form-group"><label class="col-sm-2 control-label">개수 단위</label>
			                                    <div class="col-sm-10">
			                                   	<select class="form-control m-b" name="cPrdScale" id="cPrdScale" >
			                                   		<option value="ea">EA</option>
			                                   		<option value="m2">m2</option>
			                                   		<option value="set">set</option>
			                                    </select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">설명</label>
			                                    <div class="col-sm-10"><textarea class="form-control" name="cPrdDesc" id="cPrdDesc" maxlength="500"></textarea></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">사진</label>
			                                <div class="col-sm-10"><div id="fine-uploader"></div></div>
			                                 </div>
			                                 <input type="hidden" id="photoUid" name="photoUid">
			                                 <div id="pictureDom"></div>
			                             </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">닫기</button>
                                            <c:if test='${sessionScope.cred.cPerCom eq "adm"}'>
                                            <button type="button" class="btn btn-primary" onclick="submitAddForm();" id="addBtn">제출</button>
                                            <button type="button" class="btn btn-primary" onclick="submitUpdateForm();" id="updateBtn">수정</button>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <script src="https://cdn.ckeditor.com/4.7.1/basic/ckeditor.js"></script>
							<script>
							            CKEDITOR.replace( 'cPrdDesc' );
							</script>
                            <script>
					        var uploader = new qq.FineUploader({
					            debug: true,
					            element: document.getElementById('fine-uploader'),
					            request: {
					              inputName: 'file',
					                endpoint: 'upload'
					            },
					//             deleteFile: {
					//                 enabled: true,
					//                 endpoint: 'admin/upload'
					//             },
					// 			validation: {
					//                 allowedExtensions: ['jpeg', 'jpg', 'gif', 'png']
					//             },
					            scaling: {
					                sendOriginal: false,
					               // includeExif: true,
					                sizes: [
					                    {maxSize: 600}
					                ]
					            }
					            ,autoUpload: true
					//             retry: {
					//                enableAuto: true
					//             }
					            ,callbacks: {
					            	onAllComplete: function(succeeded) {
					            		var uuid = "";
					            		var tempUuid;
					            		for(i = 0; i < succeeded.length; i++) {
					            			if(i != 0){
					            				uuid = uuid + ", " + uploader.getUuid(succeeded[i]);
					            			}else{
					            				uuid = uploader.getUuid(succeeded[i]);
					            			}
					            		}
					                	
					                	if($('#photoUidTmp').val() == ''){
					                		$('#photoUidTmp').val(uuid);
					                	}else{
					                		$('#photoUidTmp').val($('#photoUidTmp').val() + ", " +uuid);
					                	}
					                	console.log($('#photoUid').val());
					                	//uploader.clearStoredFiles();
					            	}
					            }
					        });
					        $('#trigger-upload').click(function() {
					           // $('#fine-uploader').fineUploader('uploadStoredFiles');
					           uploader.uploadStoredFiles();
					        });
					    </script>
                            <script>
                            $("#cPrdLocalNameSrc").val("${srcPar.cPrdLocalName}")
                            $("#cPrdNameSrc").val("${srcPar.cPrdName}")
                            $("#cPrdCodeSrc").val("${srcPar.cPrdCode}")
                            $("#cPrdCatSrc").val("${srcPar.cPrdCat}")
                            
                            function searchItem(){
                            	$("#searchItemForm").submit();
                            }
                            
							$("#srcBtn").click(function() {
								var srcPar = $("#srcVal").val();
								location.href = "profile?srcPar="+srcPar;
							});
							
							$('#srcVal').keypress(function(event){
							  if(event.keyCode == 13){
							    $('#srcBtn').click();
							  }
							});
							
							
							
							$('#addProductBtn').click(function(){
								$("#addBtn").hide();
								$("#updateBtn").hide();
								$("#addBtn").show();
								
								CKEDITOR.instances['cPrdDesc'].setData('');
								
								showProductModal();
							});
							
							function showProductModal(){
								$("#addProductForm")[0].reset();
								uploader.clearStoredFiles();
								$('#addProductModal').modal("show");
								
								$("#OcogTotal").text(0);
								$("#ContTotal").text(0);
							}
							
							function submitAddForm(){
								$("#photoUid").val($("#photoUidTmp").val());
								$("#addProductForm").attr('action', 'addProduct');
								$("#addProductForm").submit();
							}
							
							function submitUpdateForm(){
								$("#photoUid").val($("#photoUidTmp").val());
								$("#addProductForm").attr('action', 'updateProduct');
								$("#addProductForm").submit();
							}
							
							function selectProductOne(ref){
								$.post( "selectDetail/prd/"+ref)
							       .done(function( data ) {
							    	    showProductModal();
							         	var vo = JSON.parse(JSON.stringify(data));
							         	
							         	$("#addBtn").hide();
										$("#updateBtn").hide();
										$("#updateBtn").show();
										
										$("#nPrdCnt").val(vo[0].nPrdCnt);
										$("#cPrdCode").val(vo[0].cPrdCode);
										$("#cPrdName").val(vo[0].cPrdName);
										$("#cPrdLocalName").val(vo[0].cPrdLocalName);
										$("#cPrdCat").val(vo[0].cPrdCat);
										$("#nPrdPriceOcog").val(vo[0].nPrdPriceOcog);
										$("#nPrdPriceCont").val(vo[0].nPrdPriceCont);
										$("#nPrdLaborOcog").val(vo[0].nPrdLaborOcog);
										$("#nPrdLaborCont").val(vo[0].nPrdLaborCont);
										$("#OcogTotal").text(vo[0].nPrdPriceOcog+vo[0].nPrdLaborOcog);
										$("#ContTotal").text(vo[0].nPrdPriceCont+vo[0].nPrdLaborCont);
										$("#cPrdScale").val(vo[0].cPrdScale);
										CKEDITOR.instances['cPrdDesc'].setData(vo[0].cPrdDesc);
										$("#pictureDom").empty();
										for(var i = 0; i < vo.length; i++){
											if(vo[i].cPhoName){
												$("#pictureDom").append("<div class='row' id='Pho"+vo[i].nPhoCnt+"'><div><a downlaod='"+vo[i].nPhoCnt+"' href='https://www.kimgdb.com/image/"+vo[i].cPhoName+"'><img class='img-responsive' src='https://www.kimgdb.com/image/"+vo[i].cPhoName+"'></a></div><div><button type='button' class='btn btn-primary' onclick='deletePhoto("+vo[i].nPhoCnt+")' >삭제</button></div></div><br>")
											}
										}
										
							       });
							}
							
							function deletePhoto(ref){
								$.post( "deletePhoto/"+ref)
									.done(function(data){
										$("#Pho"+ref).fadeOut();
										console.log(data+" deleted");
									});
							}
							
							function deleteProduct(ref){
								
								var r = confirm("삭제 하시겠습니까?");
								if(r == true){
									location.href = "deleteProduct?ref="+ref;
								}else{
									
								}
							}
							

							function refreshCal(){
								$("#OcogTotal").text(parseFloat($("#nPrdPriceOcog").val())+parseFloat($("#nPrdLaborOcog").val()));
								$("#ContTotal").text(parseFloat($("#nPrdPriceCont").val())+parseFloat($("#nPrdLaborCont").val()));
							}
							
							
							$( "#nPrdPriceOcog" ).change(function() {
								refreshCal();
							});
							
							$( "#nPrdLaborOcog" ).change(function() {
								refreshCal();
							});
							
							$( "#nPrdPriceCont" ).change(function() {
								refreshCal();
							});
							
							$( "#nPrdLaborCont" ).change(function() {
								refreshCal();
							});
							
							</script>
							
</body>

</html>
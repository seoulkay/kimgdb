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
                <h2>아이템 세부사항</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="dash">홈</a>
                    </li>
                    <li>
                        <a href="item">아이템</a>
                    </li>
                    <li class="active">
                        <strong>아이템 세부사항</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">

            <div class="row">
                <div class="col-lg-12">

                    <div class="ibox product-detail">
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="product-images">
										<c:forEach items="${item.photos }" var="ele">
                                        <div>
                                            <a downlaod='${ele.cPhoName }' href='https://www.kimgdb.com/image/${ele.cPhoName }'>
                                            	<img class='img-responsive' src='https://www.kimgdb.com/image/${ele.cPhoName }'>
                                            </a>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="col-md-7">

                                    <h3 class="font-bold m-b-xs">
                                        ${item.cVenName } : ${item.cPrdName }
                                    </h3>
                                    <div class="m-t-md">${item.cItmCode }</div>
                                    <!-- <div class="m-t-md">
                                        <h2 class="product-main-price">$406,602 <small class="text-muted">Exclude Tax</small> </h2>
                                    </div> -->
                                    <hr><!-- 

                                    <h4>아이템 설명</h4> -->

                                    <div class="m-t-md">
                                    	<%-- <strong>아이템:</strong> ${item.cItmCode }<br>
                                       	<strong>품목:</strong> ${item.cPrdName }<br>
                                       	<strong>업체 :</strong> ${item.cItmCom }<br>
                                       	<strong>베뉴 :</strong>  ${item.cVenName }<br>                                       	
                                       	<strong>게임 :</strong> ${item.cEvnName }<br>
                                       	<strong>스포츠 :</strong> ${item.cSptName }<br>
                                       	<strong>FA :</strong> ${item.cDptName }<br>
                                       	<strong>카테고리 :</strong> ${item.cCatName }<br>
                                       	<strong>재질 :</strong> ${item.cItmMate }<br>
                                       	<strong>위치 :</strong> ${item.cItmFloor } --%>
                                       	 <table class="table">
                                       		<tbody>                                       		                                       		
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">게임 :</td>	<td style="border-top: none; width:85%">${item.cEvnName }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">스포츠 :</td> <td style="border-top: none; width:85%">${item.cSptName }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">FA :</td>   <td style="border-top: none; width:85%">${item.cDptName }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">카테고리 :</td><td style="border-top: none; width:85%">${item.cCatName }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">재질 :</td>	<td style="border-top: none; width:85%">${item.cItmMate }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">위치 :</td>	<td style="border-top: none; width:85%">${item.cItmFloor }</td></tr>
                                       		<tr><td style="border-top: none; width:15%; font-weight: bold;">담당업체 :</td>	<td style="border-top: none; width:85%">${item.cItmCom }</td></tr>
                                       		
                                       		</tbody>
                                       	</table>
                                    </div>
                                    
                                    <hr>

                                    <div>
                                        <div class="btn-group">
                                            <c:if test='${sessionScope.cred.cPerCom eq "adm"}'><button class="btn btn-primary btn-sm" id="addItemBtn"><i class="fa fa-star"></i> 작업추가 </button></c:if>
                                        </div>
                                        <div class="btn-group">
	                                        <c:if test='${sessionScope.cred.cPerCom eq "adm"}'><button class="btn btn-primary btn-sm" onclick="showPrice();"><i class="fa fa-star"></i> 단가보기 </button></c:if>
	                                    </div>
                                    </div>



                                </div>
                            </div>
                            <hr>
							<div class="row">
							<div class="col-lg-12">
			                    <div class="ibox">
			                        <div class="ibox-content">
							<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>작업구분</th>
                                    <th>업체</th>
                                    <th>작업상태</th>
                                    <th>생성일</th>
                                    <th>수정일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${taskList}" var="ele">
                                <tr>
                                     <td>${ele.nTskCnt}</td>
                                     <td>${ele.cTtpName}</td>
                                     <td>${ele.cTskComp}</td>
                                     <td>${ele.cTstName}</td>
                                     <td><fmt:formatDate pattern = "yyyy-MM-dd"  value = "${ele.dTskCrt}" /></td>
                                     <td><fmt:formatDate pattern = "yyyy-MM-dd"  value = "${ele.dTskMod}" /></td>
                                     <td class="text-right">                                    
                                        <div class="btn-group">
                                        	<c:if test='${sessionScope.cred.cPerCom ne "adm" && ele.cTstType ne "CNF"}'>
                                        		<button class="btn-white btn btn-xs" onclick="selectItemOne(${ele.nTskCnt})">보기 / 수정</button>
                                        	</c:if>
                                        	<c:if test='${sessionScope.cred.cPerCom ne "adm" && ele.cTstType eq "CNF"}'>
                                        		<button class="btn-white btn btn-xs" onclick="selectItemOneReadOnly(${ele.nTskCnt})">보기</button>
                                        	</c:if>
                                            <c:if test='${sessionScope.cred.cPerCom eq "adm"}'><button class="btn-white btn btn-xs" onclick="selectItemOne(${ele.nTskCnt})">보기 / 수정</button></c:if>
                                            <button class="btn-white btn btn-xs <c:if test='${sessionScope.cred.cPerCom ne "adm"}'>disabled</c:if>" onclick="<c:if test='${sessionScope.cred.cPerCom eq "adm"}'>deleteItem(${ele.nTskCnt})</c:if>">삭제</button>
                                        </div>
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
                        <div class="ibox-footer">
                            <span class="pull-right">
                               최종수정 : ${item.cItmModUsr }  <i class="fa fa-clock-o"></i> <fmt:formatDate pattern = "yyyy-MM-dd"  value = "${item.dItmMod }" />
                            </span>
                            최초 생성 : ${item.cItmCrtUsr } <i class="fa fa-clock-o"></i> <fmt:formatDate pattern = "yyyy-MM-dd"  value = "${item.dItmCrt }" />
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
    						<div class="modal inmodal" id="addItemModal" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated fadeIn">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
                                            <i class="fa fa-clock-o modal-icon"></i>
                                            <h4 class="modal-title">작업 관리</h4>
                                        </div>
                                        <div class="modal-body">
                                         <form method="POST" class="form-horizontal" id="addItemForm">
                                         	<input type="hidden" class="form-control" name="nTskCnt" id="nTskCnt" maxlength="6" value=0>
                                         	<input type="hidden" class="form-control" name="nRefItm" id="nRefItm" maxlength="6" value=0>
			                                <div class="form-group"><label class="col-sm-2 control-label">작업구분</label>
			                                    <div class="col-sm-10">
				                                    <select class="selectpicker form-control m-b" data-live-search="true" id="cTskType" name="cTskType">
					                           		<option value="">전체</option>
					                            	<c:forEach items="${taskType }" var="ele">
					                            	<option value="${ele.cTtpType }">${ele.cTtpName }</option> 
					                            	</c:forEach>
					                            	</select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">업체</label>
			                                    <div class="col-sm-10">
			                                    	<select class="selectpicker form-control m-b" data-live-search="true" name="cTskComp" id="cTskComp">
					                            	<option value="">전체</option>
					                            	<c:forEach items="${companyList }" var="ele">
					                            	<option value="${ele.cComCode }">${ele.cComName }</option> 
					                            	</c:forEach>
					                            	</select>
			                                    </div>
			                                </div>
			                                 <div class="form-group"><label class="col-sm-2 control-label">작업상태</label>
			                                    <div class="col-sm-10">
                                                  	<select class="selectpicker form-control m-b" data-live-search="true" name="cTskStatus" id="cTskStatus" >
					                           		<option value="">전체</option>
					                            	<c:forEach items="${taskStatus }" var="ele">
					                            	<option value="${ele.cTstType }">${ele.cTstName }</option> 
					                            	</c:forEach>
					                            	</select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">작업노트</label>
			                                    <div class="col-sm-10"><textarea class="form-control" name="cTskNote" id="cTskNote" maxlength="3000"></textarea></div>
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
                                            <button type="button" class="btn btn-primary" onclick="submitAddForm();" id="addBtn">제출</button>
                                            <button type="button" class="btn btn-primary" onclick="submitUpdateForm();" id="updateBtn">수정</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <c:if test='${sessionScope.cred.cPerCom eq "adm"}'>
                            <div class="modal inmodal" id="priceModal" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated fadeIn">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
                                            <i class="fa fa-clock-o modal-icon"></i>
                                            <h4 class="modal-title">단가</h4>
                                        </div>
                                        <div class="modal-body">
                                         <form method="POST" class="form-horizontal">
			                                <div class="form-group"><label class="col-sm-4 control-label">조직위 단가 합계</label>
			                                    <div class="col-sm-8">${item.cItmUnitPrice1 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">조직위 금액 합계</label>
			                                    <div class="col-sm-8">${item.cItmPrice1 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">조직위 재료비 단가</label>
			                                    <div class="col-sm-8">${item.cItmMateUnitPrice1 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">조직위 재료비 금액</label>
			                                    <div class="col-sm-8">${item.cItmMatePrice1 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">조직위 노무비 단가</label>
			                                    <div class="col-sm-8">${item.cImtLaborUnitPrice1 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">조직위 노무비 금액</label>
			                                    <div class="col-sm-8">${item.cItmLaborPrice1 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">하도급 단가 합계</label>
			                                    <div class="col-sm-8">${item.cItmUnitPrice2 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">하도급 금액 합계</label>
			                                    <div class="col-sm-8">${item.cItmPrice2 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">하도급 재료비 단가</label>
			                                    <div class="col-sm-8">${item.cItmMateUnitPrice2 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">하도급 재료비 금액</label>
			                                    <div class="col-sm-8">${item.cItmMatePrice2 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">하도급 노무비 단가</label>
			                                    <div class="col-sm-8">${item.cImtLaborUnitPrice2 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">하도급 노무비 금액</label>
			                                    <div class="col-sm-8">${item.cItmLaborPrice2 }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">생성일</label>
			                                    <div class="col-sm-8">${item.dItmCrt }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">생성한 유저</label>
			                                    <div class="col-sm-8">${item.cItmCrtUsr }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">수정일</label>
			                                    <div class="col-sm-8">${item.dItmMod }</div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-4 control-label">수정한 유저</label>
			                                    <div class="col-sm-8">${item.cItmModUsr }</div>
			                                </div>
			                                </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">닫기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:if>
                            
</body>
<script>
    $(document).ready(function(){
        $('.product-images').slick({
            dots: true
        });
    });
</script>
<script src="https://cdn.ckeditor.com/4.7.1/basic/ckeditor.js"></script>
							<script>
							function showPrice(){
								$("#priceModal").modal('show');
							}
							
							CKEDITOR.replace( 'cTskNote' );
							
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
         
		        //현재 아이템        
		       //    console.log(getParameterByName("nItmCnt" ,document.URL));          
		
		$('#addItemBtn').click(function(){
			$("#addBtn").hide();
			$("#updateBtn").hide();
			$("#addBtn").show();
			
			CKEDITOR.instances['cTskNote'].setData('');
			
			showItemModal();
		});
		
		function showItemModal(){
			$("#addItemForm")[0].reset();
			uploader.clearStoredFiles();
			$('#addItemModal').modal("show");
		}
		
		function submitAddForm(){
			$("#nRefItm").val(getParameterByName("nItmCnt" ,document.URL));
			
			$('.selectpicker').selectpicker('deselectAll');
			$("#photoUid").val($("#photoUidTmp").val());
			$("#addItemForm").attr('action', 'addTask');
			$("#addItemForm").submit();
		}
		
		function submitUpdateForm(){
			$("#photoUid").val($("#photoUidTmp").val());
			$("#addItemForm").attr('action', 'updateTask');
			$("#addItemForm").submit();
		}
		
		function selectItemOne(ref){
			$.post( "selectDetail/tsk/"+ref)
		       .done(function( data ) {
		    	    showItemModal();
		         	var vo = JSON.parse(JSON.stringify(data));
		         	
		         	$("#addBtn").hide();
					$("#updateBtn").hide();
					$("#updateBtn").show();
					
					
					CKEDITOR.instances['cTskNote'].setData(vo[0].cTskNote);
					
					$("#nTskCnt").val(vo[0].nTskCnt);
					$("#nRefItm").val(vo[0].nRefItm);
					$('#cTskType').selectpicker('val', vo[0].cTskType);
					$('#cTskComp').selectpicker('val', vo[0].cTskComp);
					$('#cTskStatus').selectpicker('val', vo[0].cTskStatus);
					
					
					$("#pictureDom").empty();
					for(var i = 0; i < vo.length; i++){
						if(vo[i].cPhoName){
							$("#pictureDom").append("<div class='row' id='Pho"+vo[i].nPhoCnt+"'><div><a downlaod='"+vo[i].nPhoCnt+"' href='https://www.kimgdb.com/image/"+vo[i].cPhoName+"'><img class='img-responsive' src='https://www.kimgdb.com/image/"+vo[i].cPhoName+"'></a></div><div><button type='button' class='btn btn-primary' onclick='deletePhoto("+vo[i].nPhoCnt+")' >삭제</button></div></div><br>")
						}
					}
					
		       });
		}
		
		function selectItemOneReadOnly(ref){
			$.post( "selectDetail/tsk/"+ref)
		       .done(function( data ) {
		    	    showItemModal();
		         	var vo = JSON.parse(JSON.stringify(data));
		         	
		         	$("#addBtn").hide();
					$("#updateBtn").hide();
					//$("#updateBtn").show();
					
					
					CKEDITOR.instances['cTskNote'].setData(vo[0].cTskNote);
					
					$("#nTskCnt").val(vo[0].nTskCnt);
					$("#nRefItm").val(vo[0].nRefItm);
					$('#cTskType').selectpicker('val', vo[0].cTskType);
					$('#cTskComp').selectpicker('val', vo[0].cTskComp);
					$('#cTskStatus').selectpicker('val', vo[0].cTskStatus);
					
					
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
		
	
		function deleteItem(ref){

			var r = confirm("삭제 하시겠습니까?");
			if(r == true){
				location.href = "deleteTask?ref="+ref;
			} else{
				
			}
			
		}
		
		function getParameterByName(name, url) {
		    if (!url) url = window.location.href;
		    name = name.replace(/[\[\]]/g, "\\$&");
		    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
		        results = regex.exec(url);
		    if (!results) return null;
		    if (!results[2]) return '';
		    return decodeURIComponent(results[2].replace(/\+/g, " "));
		}
</script>
</html>

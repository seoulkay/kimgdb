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
                    <h2>아이템</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>아이템</strong></a>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

			<form action="item" id="searchItemForm" method="post">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmCode">아이템코드</label>
                            <input type="text" id="cItmCode" name="cItmCode" value="" placeholder="Item Code" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmProd">품목</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmProd" name="cItmProd">
                           		<option value="">전체</option>
                            	<c:forEach items="${productList }" var="ele">
                            	<option value="${ele.cPrdCode }">${ele.cPrdName } - ${ele.cPrdLocalName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmMate">재질</label>
                            <select class="selectpicker form-control m-b" data-live-search="true" name="cItmMate" id="cItmMate">
                            	<option value="">전체</option>
                            	<c:forEach items="${cItmMateList }" var="ele">
                            	<option value="${ele }">${ele }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmCom">업체</label>
                            <select class="selectpicker form-control m-b" data-live-search="true" name="cItmCom" id="cItmCom">
                            	<option value="">전체</option>
                            	<c:forEach items="${companyList }" var="ele">
                            	<option value="${ele.cComCode }">${ele.cComName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmVenue">베뉴</label>                       		
                           	<select class="selectpicker form-control m-b" data-live-search="true" name="cItmVenue" id="cItmVenue" >
                           		<option value="">전체</option>
                            	<c:forEach items="${venueList }" var="ele">
                            	<option value="${ele.cVenCode }">${ele.cVenName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmSport">스포츠</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmSport" name="cItmSport">
                           		<option value="">전체</option>
                            	<c:forEach items="${sportList }" var="ele">
                            	<option value="${ele.cSptCode }">${ele.cSptName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmDept">FA</label>
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmDept" name="cItmDept">
                           		<option value="">전체</option>
                            	<c:forEach items="${departmentList }" var="ele">
                            	<option value="${ele.cDptCode }">${ele.cDptName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmEvent">게임</label>                            
                           	<select class="selectpicker form-control m-b" data-live-search="true" id="cItmEvent" name="cItmEvent">
                            	<option value="">전체</option>
                            	<c:forEach items="${eventList }" var="ele">
                            	<option value="${ele.cEvnCode }">${ele.cEvnName }</option> 
                            	</c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3">
                		<button type="button" class="btn btn-primary btn-sm btn-block" id="addItemBtn">생성</button>
                	</div>
                	<div class="col-sm-3">
                		<button type="button" class="btn btn-primary btn-sm btn-block" onclick="searchItem()">검색</button>
                	</div>
                </div>
            </div>
            </form>
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>

                                    <th>아이템코드</th>
                                    <th>품목</th>
                                    <th data-hide="phone">업체</th>
                                    <th data-hide="phone">베뉴</th>
                                    <th data-hide="phone">스포츠</th>                                    
                                    <th data-hide="all" >FA</th>
                                    <th data-hide="all" >게임</th>
                                    <th data-hide="all">제품</th>
                                    <th data-hide="phone" >카테고리</th>
                                    <th data-hide="all">재질</th>
                                    <th data-hide="all">Floor</th>
                                    <th data-hide="all">Location</th>
                                    <th data-hide="all">W (가로)</th>
                                    <th data-hide="all">H (세로)</th>
                                    <th data-hide="all">D (폭)</th>
                                    <th data-hide="all">개수</th>
                                    <th data-hide="all">개수 단위</th>
                                    <th data-hide="all">수량</th>
                                    <th data-hide="all">수량 단위</th>
                                    <th data-hide="all">비고</th>
                                    <th data-hide="phone">제작</th>
                                    <th data-hide="phone">설치</th>
                                    <th data-hide="phone">철거</th> 
                                    <th data-hide="phone">이슈</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${itemList}" var="ele">
                                <tr>
                                     <td>
                                        ${ele.cItmCode}
                                    </td>
                                    <td>
                                    	${ele.cPrdName }
                                    </td>
                                    <td>
                                        ${ele.cItmCom}
                                    </td>
                                    <td>
                                        ${ele.cItmVenue}
                                    </td>
                                    <td>
                                        ${ele.cItmSport}
                                    </td>
                                    <td>
                                        ${ele.cItmDept}
                                    </td>
                                    <td>
                                        ${ele.cItmEvent}
                                    </td>                                    
                                    <td>
                                        ${ele.cItmProd}
                                    </td>
                                    <td>
                                        ${ele.cCatName}
                                    </td>
                                    <td>
                                        ${ele.cItmMate}
                                    </td>
                                    <td>
                                        ${ele.cItmFloor}
                                    </td>
                                    <td>
                                        ${ele.cItmLocation}
                                    </td>
                                    <td>
                                        ${ele.cItmWidth}
                                    </td>
                                    <td>
                                        ${ele.cItmHeight}
                                    </td>
                                    <td>
                                        ${ele.cItmDimen}
                                    </td>
                                    <td>
                                        ${ele.cItmQty1}
                                    </td>
                                    <td>
                                        ${ele.cItemUnit1}
                                    </td>
                                    <td>
                                        ${ele.cItmQty2}
                                    </td>
                                    <td>
                                        ${ele.cItmUnit2}
                                    </td>
                                    <td>
                                        ${ele.cItmDesc}
                                    </td>
                                    <td class="text-center">
	                                    <span class="pie">1,0
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <span class="pie">0,1
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <span class="pie">0,1
		                                    <svg class="peity" height="16" width="16">
		                                    	<path d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z" fill="#1ab394"></path>
		                                    	<path d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z" fill="#d7d7d7"></path>
	                                    	</svg>
	                                    </span>
                                    </td>
                                    <td class="text-center">
	                                    <span class="label label-danger">3</span>
                                    </td>                                    
                                    <td class="text-right">                                    
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="location.href='itemDetail?nItmCnt= ${ele.nItmCnt}' ">보기</button>
                                            <button class="btn-white btn btn-xs">수정</button>
                                            <button class="btn-white btn btn-xs">삭제</button>
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
                                            <h4 class="modal-title">아이템 관리</h4>
                                        </div>
                                        <div class="modal-body">
                                         <form method="POST" class="form-horizontal" id="addItemForm">
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
			                                <div class="form-group"><label class="col-sm-2 control-label">카테고리</label>
			                                    <div class="col-sm-10">
			                                   	<select class="form-control m-b" name="cPrdCat" id="cPrdCat">
			                                   		<c:forEach items="${catList }" var="ele">
			                                   		<option value="${ele.cCatType }">${ele.cCatName }</option>
			                                   		</c:forEach>
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
                                            <button type="button" class="btn btn-primary" onclick="submitAddForm();" id="addBtn">제출</button>
                                            <button type="button" class="btn btn-primary" onclick="submitUpdateForm();" id="updateBtn">수정</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
</body>
<script>
function searchItem(){
	$("#searchItemForm").submit();
}


$("#cItmCode").val("${srcPar.cItmCode}")
$('#cItmProd').selectpicker('val', "${srcPar.cItmProd}");
$('#cItmCom').selectpicker('val', "${srcPar.cItmCom}");
$('#cItmVenue').selectpicker('val', "${srcPar.cItmVenue}");
$('#cItmSport').selectpicker('val', "${srcPar.cItmSport}");
$('#cItmDept').selectpicker('val', "${srcPar.cItmDept}");
$('#cItmEvent').selectpicker('val', "${srcPar.cItmEvent}");
$('#cItmMate').selectpicker('val', "${srcPar.cItmMate}");

</script>
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
		
		
		
		$('#addItemBtn').click(function(){
			$("#addBtn").hide();
			$("#updateBtn").hide();
			$("#addBtn").show();
			
			CKEDITOR.instances['cPrdDesc'].setData('');
			
			showItemModal();
		});
		
		function showItemModal(){
			$("#addItemForm")[0].reset();
			uploader.clearStoredFiles();
			$('#addItemModal').modal("show");
		}
		
		function submitAddForm(){
			$("#photoUid").val($("#photoUidTmp").val());
			$("#addItemForm").attr('action', 'addItem');
			$("#addItemForm").submit();
		}
		
		function submitUpdateForm(){
			$("#photoUid").val($("#photoUidTmp").val());
			$("#addItemForm").attr('action', 'updateItem');
			$("#addItemForm").submit();
		}
		
		function selectProductOne(ref){
			$.post( "selectDetail/itm/"+ref)
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
			confirm("삭제 하시겠습니까?");
			location.href = "deleteItem?ref="+ref;
			
		}
</script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h2>이슈</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>이슈</strong></a>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

			<form action="issue" method="post" id="searchForm">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                	<div class="col-sm-6">
                        <div class="form-group">
                            <label class="control-label" for="status">아이템코드</label>
                            <input type="text" id="cItmCodeSrc" name="cItmCode" placeholder="Item Code" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="order_id">번호</label>
                            <input type="number" id="nTskCntSrc" name="nTskCnt" placeholder="Issue ID" class="form-control">
                        </div>
                    </div>
                    
<!--                     <div class="col-sm-3"> -->
<!--                         <div class="form-group"> -->
<!--                             <label class="control-label" for="">이슈 상태</label>                       		 -->
<!--                         	<select class="selectpicker form-control m-b" data-live-search="true" name="cTskStatus" id="cTskStatusSrc" > -->
<!--                           		<option value="">전체</option> -->
<%--                            	<c:forEach items="${taskStatus }" var="ele"> --%>
<%--                            	<option value="${ele.cTstType }">${ele.cTstName }</option>  --%>
<%--                            	</c:forEach> --%>
<!--                            	</select> -->
<!--                         </div> -->
<!-- 						<label class="control-label" for="cTskNote">설명</label>                       		 -->
<!--                        	<input type="text" id="cTskNoteSrc" name="cTskNote" placeholder="note" class="form-control"> -->
<!--                     </div> -->
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="control-label" for="cItmVenue">베뉴</label>                       		
                           	<select class="selectpicker form-control m-b" data-live-search="true" name="cItmVenue" id="cItmVenueSrc" >
                          		<option value="">전체</option>
                           	<c:forEach items="${venueList }" var="ele">
                           	<option value="${ele.cVenCode }">${ele.cVenName }</option> 
                           	</c:forEach>
                           	</select>
                        </div>
                    </div>
                </div>

                
                <div class="row">
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3"></div>
                	<div class="col-sm-3">
                		<button type="button" class="btn btn-primary btn-sm btn-block" type="button" id="addItemBtn">생성</button>
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
                                    <th>이슈번호</th>
                                    <th data-hide="phone">아이템코드</th>
                                    <th data-hide="phone">베뉴</th>
<!--                                     <th data-hide="phone">설명</th> -->
                                    <th data-hide="phone">이슈 생성자</th>
                                    <th data-hide="phone">이슈 생성일</th>
                                    <th data-hide="phone">상태</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${issueList }" var="ele">
                                <tr>
                                    <td>${ele.nTskCnt }</td>
                                    <td>${ele.cItmCode }</td>
                                    <td>${ele.cItmVenue }</td>
<%--                                     <td style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;">${ele.cTskNote}</td> --%>
                                    <td>${ele.cTskCrtUsr }</td>
                                    <td><fmt:formatDate pattern = "yyyy-MM-dd HH:mm"  value = "${ele.dTskMod }" /></td>
                                    <td>
                                    <c:if test="${ele.cTskStatus ne 'TRQ' }"><span class="label label-success">처리완료</span></c:if>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <c:if test='${sessionScope.cred.cPerCom eq "adm"}'><button class="btn-white btn btn-xs" onclick="selectItemOne(${ele.nTskCnt})">보기 / 수정</button></c:if>
                                            <c:if test='${sessionScope.cred.cPerCom ne "adm"}'><button class="btn-white btn btn-xs" onclick="selectItemOneReadOnly(${ele.nTskCnt})">보기</button></c:if>
                                            <button class="btn-white btn btn-xs <c:if test='${sessionScope.cred.cPerCom ne "adm"}'>disabled</c:if>" onclick="<c:if test='${sessionScope.cred.cPerCom eq "adm"}'>deleteItem(${ele.nTskCnt})</c:if>">삭제</button>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="8">
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
</body>
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
                                         	<input type="hidden" class="form-control" name="redirect" id="redirect" value="issue">
                                         	<input type="hidden" class="form-control" name="nTskCnt" id="nTskCnt" maxlength="6" value=0>
<!--                                          	<input type="hidden" class="form-control" name="nRefItm" id="nRefItm" maxlength="6" value=0> -->
			                                 <div class="form-group"><label class="col-sm-2 control-label">아이템코드</label>
			                                    <div class="col-sm-10">
				                                    <select class="selectpicker form-control m-b" data-live-search="true" id="nRefItm" name="nRefItm">
					                           		<option value="">전체</option>
					                            	<c:forEach items="${defItemList }" var="ele">
					                            	<option value="${ele.nItmCnt}" >${ele.cItmCode }</option> 
					                            	</c:forEach>
					                            	</select>
			                                    </div>
			                                </div>
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
                                            <button type="button" class="btn btn-primary <c:if test='${sessionScope.cred.cPerCom ne "adm"}'>disabled</c:if>" onclick="<c:if test='${sessionScope.cred.cPerCom eq "adm"}'>submitUpdateForm();</c:if>" id="updateBtn">수정</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
<script>
//검색
function searchItem(){
	if($("#nTskCntSrc").val() == ""){
		$("#nTskCntSrc").val(0);
	};
	$("#searchForm").submit();
}
$("#nTskCntSrc").val("${srcPar.nTskCnt}");
$("#cItmCodeSrc").val("${srcPar.cItmCode}");
$('#cTskStatusSrc').selectpicker('val', "${srcPar.cTskStatus}");
$('#cItmVenueSrc').selectpicker('val', "${srcPar.cItmVenue}");
$("#cTskCrtUsrSrc").val("${srcPar.cTskCrtUsr}");
$("#cTskNoteSrc").val("${srcPar.cTskNote}");




</script>
<script src="https://cdn.ckeditor.com/4.7.1/basic/ckeditor.js"></script>
							<script>
							            CKEDITOR.replace( 'cTskNote' );
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
			//$("#nRefItm").val(getParameterByName("nItmCnt" ,document.URL));
			//var a = parseInt(document.getElementById("ausgangssprache").value);
			
			
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
					$("#nRefItm").selectpicker('val', vo[0].nRefItm);
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
					//readonly$("#updateBtn").show();
					
					
					CKEDITOR.instances['cTskNote'].setData(vo[0].cTskNote);
					
					$("#nTskCnt").val(vo[0].nTskCnt);
					$("#nRefItm").val(vo[0].nRefItm);
					$("#nRefItm").selectpicker('val', vo[0].nRefItm);
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
				location.href = "deleteTask?redirect=issue&ref="+ref;
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
		
		//링크타고 오기
		var link = "${ref}";
		if(link){
			selectItemOne(link);
		}
</script>
</html>

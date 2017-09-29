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
                    <h2>프로필</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>홈</a>
                        </li>
                        <li class="active">
                            <a><strong>프로필</strong></a>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">


           <div class="row">
                <div class="col-sm-8">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h2>프로필</h2>
                            <p>
                                이름과 아이디로 검색이 가능합니다.
                            </p>
                            <div class="input-group">
                                <input type="text" placeholder="검색어" class="input form-control" id="srcVal">
                                <span class="input-group-btn">
                                        <button type="button" class="btn btn btn-primary" id="srcBtn"> <i class="fa fa-search"></i> Search</button>
                                </span>
                            </div>
                            <div class="clients-list">
                            <ul class="nav nav-tabs">
                                <span class="pull-right small text-muted">${fn:length(personList)} 명</span>
                                <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> 계정</a></li>
                                <li class=""><a data-toggle="tab" href="#tab-2"><i class="fa fa-briefcase"></i> 회사</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="full-height-scroll">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-hover">
                                                <tbody>
                                                <c:forEach items="${personList }" var="ele" varStatus="var" >
                                                <tr>
                                                    <td class="client-avatar"><img alt="image" src="https://www.kimgdb.com/image/${ele.cPhoName }"> </td>
                                                    <td><a data-toggle="tab" href="#contact-${var.count }" class="client-link">${ele.cPerName }</a></td>
                                                    <%-- <td> ${ele.cPerId }</td> --%>
                                                    <td> ${ele.cPerPos }</td>
                                                    <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                                    <td> ${ele.cPerCon }</td>
                                                    <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                                    <td> ${ele.cComName }</td>
                                                    <td class="client-status"><span class="label label-primary">수정</span></td>
                                                </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-2" class="tab-pane">
                                    <div class="full-height-scroll">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-hover">
                                                <tbody>
                                                <c:forEach items="${companyList }" var="ele">
                                                <tr>
                                                    <td><a data-toggle="tab" href="#company-1" class="client-link">${ele.nComCnt }</a></td>
                                                    <td>${ele.cComCode }</td>
                                                    <td><i class="fa fa-flag"></i> ${ele.cComName }</td>
                                                    <td class="client-status"><span class="label label-primary">Active</span></td>
                                                </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            </div>
                            <button type="button" class="btn btn-w-m btn-primary" id="addAccountBtn">계정 추가</button>
                            <div class="modal inmodal" id="addAccountModal" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated fadeIn">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">닫기</span></button>
                                            <i class="fa fa-clock-o modal-icon"></i>
                                            <h4 class="modal-title">계정 추가</h4>
                                        </div>
                                        <div class="modal-body">
                                         <form method="POST" class="form-horizontal" action="addAccount" id="addAccountForm">
                                            <div class="form-group"><label class="col-sm-2 control-label">아이디</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cPerId" maxlength="30"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">비밀번호</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cPerPwd" maxlength="30"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">이름</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cPerName" maxlength="30"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">소속</label>
			                                    <div class="col-sm-10">
			                                   	<select class="form-control m-b" name="cPerCom">
			                                   		<c:forEach items="${companyList }" var="ele">
			                                   		<option value="${ele.cComCode }">${ele.cComName }</option>
			                                   		</c:forEach>
			                                    </select>
			                                    </div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">직급</label>
			                                    <div class="col-sm-10"><input type="text" class="form-control" name="cPerPos" maxlength="100"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">연락처</label>
			                                    <div class="col-sm-10"><input type="tel" class="form-control" name="cPerCon" maxlength="30"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">이메일</label>
			                                    <div class="col-sm-10"><input type="email" class="form-control" name="cPerEmail" maxlength="50"></div>
			                                </div>
			                                <div class="form-group"><label class="col-sm-2 control-label">사진</label>
			                                <div class="col-sm-10"><div id="fine-uploader"></div></div>
			                                 </div>
			                                 <input type="hidden" id="photoUid" name="photoUid">
			                             </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">닫기</button>
                                            <button type="button" class="btn btn-primary" onclick="submitAddForm();">제출</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="ibox ">

                        <div class="ibox-content">
                            <div class="tab-content">
                            <c:forEach items="${personList }" var="ele" varStatus="var" >
                                <div id="contact-${var.count }" class="tab-pane <c:if test="${var.count eq 1 }">active</c:if>">
                                    <div class="row m-b-lg">
                                        <div class="col-lg-12 text-center">
                                            <h2>${ele.cPerName}</h2>

                                            <div class="m-b-sm">
                                                <img alt="image" class="img-circle" src="https://www.kimgdb.com/image/${ele.cPhoName }"
                                                     style="width: 62px">
                                            </div>
                                        </div>
                                        <!-- <div class="col-lg-8">
                                            <button type="button" class="btn btn-primary btn-sm btn-block"><i
                                                    class="fa fa-envelope"></i> 수정
                                            </button>
                                        </div> -->
                                    </div>
                                    <div class="client-detail">
                                    <div class="full-height-scroll">

                                        <strong>프로필 정보</strong>
										<%-- <td> ${ele.cPerId }</td> --%>
                                        <ul class="list-group clear-list">
                                            <li class="list-group-item fist-item">
                                                <span class="pull-right"> ${ele.cPerId }</span>
                                                아이디
                                            </li>
                                            <li class="list-group-item">
                                                <span class="pull-right"> ${ele.cComName } </span>
                                                소속
                                            </li>
                                            <li class="list-group-item">
                                                <span class="pull-right"> ${ele.cPerPos } </span>
                                                직급
                                            </li>
                                            <li class="list-group-item">
                                                <span class="pull-right"> ${ele.cPerCon } </span>
                                                연락처
                                            </li>
                                            <li class="list-group-item">
                                                <span class="pull-right"> ${ele.cPerEmail } </span>
                                                이메일
                                            </li>
                                        </ul>
                                         <p>
                                             <span class="text-muted small">유저 생성 : ${ele.cPerCrtUsr }<br>
                                              <i class="fa fa-clock-o"></i> ${ele.dPerCrt }</span><br>
                                              <span class="text-muted small">유저 수정 : ${ele.cPerModUsr }<br>
                                              <i class="fa fa-clock-o"></i> ${ele.dPerMod }</span>
                                         </p>
                                    </div>
                                    </div>
                                </div>
                                </c:forEach>
                                
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
                    {maxSize: 200}
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
$("#srcBtn").click(function() {
	var srcPar = $("#srcVal").val();
	location.href = "profile?srcPar="+srcPar;
});

$('#srcVal').keypress(function(event){
  if(event.keyCode == 13){
    $('#srcBtn').click();
  }
});
$('#addAccountBtn').click(function(){
	uploader.clearStoredFiles();
	$('#addAccountModal').modal("show");
});

function submitAddForm(){
	$("#photoUid").val($("#photoUidTmp").val());
	$("#addAccountForm").submit();
}
</script>

</html>

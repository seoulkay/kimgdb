<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

    <!-- Fine Uploader New/Modern CSS file
    ====================================================================== -->
<%--     <link href="${pageContext.request.contextPath}/resources/fineupload/fine-uploader-gallery.min.css" rel="stylesheet"> --%>
    <link href="${pageContext.request.contextPath}/resources/fineupload/fine-uploader-new.min.css" rel="stylesheet">

    <!-- Fine Uploader jQuery JS file
    ====================================================================== -->
<%--     <script src="${pageContext.request.contextPath}/resources/fineupload/jquery.fine-uploader.min.js"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/fineupload/all.fine-uploader.min.js"></script>

    <!-- Fine Uploader Gallery template
    ====================================================================== -->
   <!-- The element where Fine Uploader will exist. -->
 </head>
 <body>
    <div id="fine-uploader">
    </div>
 
    <!-- Fine Uploader -->
<%--     <script src="<%=request.getContextPath()%>/js/all.fine-uploader/all.fine-uploader.js" type="text/javascript"></script> --%>
 
    <script type="text/template" id="qq-template">
        <div class="qq-uploader-selector qq-uploader" qq-drop-area-text="Drop files here">
            <div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">
                <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div>
            </div>
            <div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>
                <span class="qq-upload-drop-area-text-selector"></span>
            </div>
            <div class="qq-upload-button-selector qq-upload-button">
                <div>Upload a file</div>
            </div>
			<button type="button" id="trigger-upload" class="btn btn-primary">
                    <i class="icon-upload icon-white"></i> Upload
            </button>
            <span class="qq-drop-processing-selector qq-drop-processing">
                <span>Processing dropped files...</span>
                <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
            </span>
            <ul class="qq-upload-list-selector qq-upload-list" aria-live="polite" aria-relevant="additions removals">
                <li>
                    <div class="qq-progress-bar-container-selector">
                        <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-progress-bar-selector qq-progress-bar"></div>
                    </div>
                    <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
                    <img class="qq-thumbnail-selector" qq-max-size="100" qq-server-scale>
                    <span class="qq-upload-file-selector qq-upload-file"></span>
                    <span class="qq-edit-filename-icon-selector qq-edit-filename-icon" aria-label="Edit filename"></span>
                    <input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">
                    <span class="qq-upload-size-selector qq-upload-size"></span>
                    <button type="button" class="qq-btn qq-upload-cancel-selector qq-upload-cancel">Cancel</button>
                    <button type="button" class="qq-btn qq-upload-retry-selector qq-upload-retry">Retry</button>
                    <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">Delete</button>
                    <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
                </li>
            </ul>
 
            <dialog class="qq-alert-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">Close</button>
                </div>
            </dialog>
 
            <dialog class="qq-confirm-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">No</button>
                    <button type="button" class="qq-ok-button-selector">Yes</button>
                </div>
            </dialog>
 
            <dialog class="qq-prompt-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <input type="text">
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">Cancel</button>
                    <button type="button" class="qq-ok-button-selector">Ok</button>
                </div>
            </dialog>
        </div>
    </script>
 
    <script>
        var uploader = new qq.FineUploader({
            debug: true,
            element: document.getElementById('fine-uploader'),
            request: {
              inputName: 'file',
                endpoint: 'admin/upload'
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
            ,autoUpload: false
//             retry: {
//                enableAuto: true
//             }
        });
        $('#trigger-upload').click(function() {
           // $('#fine-uploader').fineUploader('uploadStoredFiles');
           uploader.uploadStoredFiles();
        });
    </script>
</body>
</html>
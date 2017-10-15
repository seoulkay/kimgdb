<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Technical Rehearsal Report</title>

    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name" style="font-size: 120px">TRR</h1>
            </div>
            <h3>Please log in.</h3>
            <c:if test="${!empty errMsg }">
            <div class="alert alert-danger alert-dismissable">
                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                ${errMsg }
            </div>
            </c:if>
            <p>Pyeongchang 2018 Technology Rehearsal Report System</p>
            <form class="m-t" role="form" action="trrloginAction" method="POST">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="ID" required="required" name="cUserId" maxlength="30">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" required="required" name="cUserPass" maxlength="30">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">log in</button>

<!--                 <a href="#"><small>비밀번호를 잊으셨나요?</small></a> -->
            </form>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

</body>

</html>

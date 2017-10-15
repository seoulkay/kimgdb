<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <nav class="navbar-default navbar-static-side" role="navigation">
    
    <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
<%--                             <img alt="image" class="img-circle" src="https://www.kimgdb.com/image/${sessionScope.cred.cPhoName }" style="max-width: 7em"/> --%>
                             </span>
<!--                         <a data-toggle="dropdown" class="dropdown-toggle" href="#"> -->
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${sessionScope.cred.cUserId }</strong></span></span>
<%--                              </span> <span class="text-muted text-xs block">${sessionScope.cred.cPerPos } </span> </span> </a> --%>
                    </div>
                    <div class="logo-element">
                        TRR
                    </div>
                </li>
                <li <c:if test="${selectedMenu eq 'runSheet' }">class="active"</c:if>>
                    <a href="runSheet"><i class="fa fa-th-large"></i> <span class="nav-label">Run Sheet</span></a>
                </li>
                <li <c:if test="${selectedMenu eq 'surveyForm' }">class="active"</c:if>>
                    <a href="surveyForm"><i class="fa fa-edit"></i> <span class="nav-label">Survey Form</span></a>
                </li>
                <li <c:if test="${selectedMenu eq 'endOfDayReport' }">class="active"</c:if>>
                    <a href="endOfDayReport"><i class="fa fa-cubes"></i> <span class="nav-label">End of day report</span></a>
                </li>
                <li <c:if test="${selectedMenu eq 'teamInfo' }">class="active"</c:if>>
                    <a href="teamInfo"><i class="fa fa-address-book-o"></i> <span class="nav-label">Team info</span></a>
                </li>
           </ul>
        </div>
    </nav>
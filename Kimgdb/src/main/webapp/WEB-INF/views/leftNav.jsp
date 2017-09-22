<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <nav class="navbar-default navbar-static-side" role="navigation">
    
    <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="${pageContext.request.contextPath}/resources/img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">최성준</strong>
                             </span> <span class="text-muted text-xs block">프로젝트 관리자 </span> </span> </a>
                    </div>
                    <div class="logo-element">
                        KIMG
                    </div>
                </li>
                <li <c:if test="${selectedMenu eq 'dash' }">class="active"</c:if>>
                    <a href="dash"><i class="fa fa-th-large"></i> <span class="nav-label">대시보드</span></a>
                </li>
                <li <c:if test="${selectedMenu eq 'profile' }">class="active"</c:if>>
                    <a href="profile"><i class="fa fa-sitemap"></i> <span class="nav-label">프로필 </span></a>
                </li>
                <li <c:if test="${selectedMenu eq 'product' }">class="active"</c:if>>
                    <a href="product"><i class="fa fa-diamond"></i> <span class="nav-label">제품</span></a>
                </li>
                <li <c:if test="${selectedMenu eq 'item' }">class="active"</c:if>>
                    <a href="item"><i class="fa fa-shopping-cart"></i> <span class="nav-label">아이템</span></a>
                </li>
                <li <c:if test="${selectedMenu eq 'issue' }">class="active"</c:if>>
                    <a href="issue"><i class="fa fa-edit"></i> <span class="nav-label">이슈</span></a>
                </li>
                 <li <c:if test="${selectedMenu eq 'account' }">class="active"</c:if>>
                    <a href="account"><i class="fa fa-edit"></i> <span class="nav-label">정산</span></a>
                </li>
                
           </ul>
        </div>
    </nav>
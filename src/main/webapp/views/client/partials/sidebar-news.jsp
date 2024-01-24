<%-- Document : sidebarNews Created on : Nov 27, 2023, 9:42:10 PM Author : Moc Lan --%>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="/common/includes.jsp" %>

<head>
    <link rel="stylesheet" href="<c:url value='/static/css/sidebar.css?v=${randomNumber}' />">
</head>

<aside id="sidebar">
    <h5 class="fs-6 text-uppercase fw-bold">Tất cả sản phẩm</h5>
    <div class="d-flex justify-content-between align-items-center mt-3 fs-6">
        <h5 class="fs-6 fw-bold text-uppercase">Menu</h5>
        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseMenu" aria-expanded="true"
            aria-controls="collapseMenu">
            <i class="fa fa-chevron-right rotate90" aria-hidden="true"></i>
        </button>
    </div>

    <ul class="collapse sidebar-list sidebar-menu-list show" id="collapseMenu">
        <li><a href="/home">Trang chủ</a></li>
        <li>
            <div class="d-flex justify-content-between align-items-center">
                <a href="/courses">Danh sách khoá học</a>
                <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseCourses"
                    aria-expanded="false" aria-controls="collapseExample">
                    <i class="fa fa-chevron-right" aria-hidden="true"></i>
                </button>
            </div>
            <ul class="collapse" id="collapseCourses">
                <c:forEach items="${categories}" var="category" varStatus="status">
                    <li><a href="/courses/${category.getCode()}" class="text-decoration-none" style="color: #92909A;">${category.getName()}</a></li>
                </c:forEach>
            </ul>
        </li>
        <li><a href="/news">Tin tức</a></li>
        <li><a href="/reviews">Đánh giá</a></li>
        <li><a href="/about">Giới thiệu</a></li>
        <li><a href="/courses/love">Khoá học yêu thích</a></li>
    </ul>
</aside>
<script src="<c:url value='/static/js/partials/sidebar.js?v=${randomNumber}' />"></script>
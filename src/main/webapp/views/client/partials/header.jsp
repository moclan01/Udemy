<%-- 
    Document   : header-new
    Created on : Sep 19, 2023, 2:12:23 PM
    Author     : Masato
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <link rel="stylesheet" href="<c:url value='/static/css/header.css'/>"/>
</head>

<header>
    <div class=" py-3 header-info d-flex justify-content-center align-items-center text-white gap-3">
        <div>
            <i class="fa-solid fa-clock"></i>
            <span>Thời gian làm việc: Từ <span class="fw-bold">8h00 đến 22h00</span> các ngày</span>
        </div>

        <div>
            <i class="fa-solid fa-phone"></i>
            <span>Hotline: <span class="fw-bold">1900 6750</span></span>
        </div>
    </div>

    <div class="header-main shadow bg-body-tertiary py-3">
        <div class="container">
            <div class="row">
                <div class="col-2 header-main-left">
                    <img class="header-logo-img" src="<c:url value='/static/imgs/logo/logo.png' />">
                </div>
                <div class="col-8">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-9">
                            <div class="row align-items-center">
                                <div class="header-navigation col-3 d-flex align-items-center">
                                <i class="fa-solid fa-bars me-3"></i>
                                <div>Danh mục</div>
                            </div>

                                <div class="header-search-group col-9 d-flex align-items-center">
                                    <input class="input-header" type="text" placeholder="Tìm kiếm..." />
                                    <i class="las la-search text-main d-block h-100 search-icon"></i>
                                </div>
                            </div>    
                        </div>

                        <div class="header-cart col-3">
                            <a href="/" class="text-decoration-none text-secondary">Tất cả khoá học</a>
                            <i class="las la-shopping-cart fs-4 text-main"></i>
                        </div>
                    </div>

                </div>
                <div class="col-2 d-flex">
                    <a class="text-secondary auth-btn">Đăng ký</a>
                    <a class="auth-btn btn-main">Đăng nhập</a>
                </div>
            </div>
        </div>
    </div>
</header>

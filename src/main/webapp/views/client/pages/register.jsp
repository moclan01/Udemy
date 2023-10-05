<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/includes.jsp" %>

<head>
    <link rel="stylesheet" href="<c:url value='/static/css/login.css?v=${randomNumber}'/>">
</head>

<div class="auth-container mt-5">
    <h2 class="text-uppercase">Đăng ký</h2>
    <p>Vui lòng nhập thông tin cá nhân</p>

    <form action="/auth/register" method="POST" id="registerForm">

        <c:if test="${not empty error}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>${error}</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>

        <div class="form-group mt-3">
            <label for="registerFirstName" class="fw-bold">Họ *</label>
            <input type="text" name="firstName" id="registerFirstName" placeholder="Nguyễn, ..." required>
        </div>

        <div class="form-group mt-3">
            <label for="registerLastName" class="fw-bold">Tên *</label>
            <input type="text" name="lastName" id="registerLastName" placeholder="Văn A, ..." required>
        </div>

        <div class="form-group mt-3">
            <label for="registerPhone" class="fw-bold">SĐT *</label>
            <input type="text" name="phone" id="registerPhone" placeholder="+84..." required>
        </div>

        <div class="form-group mt-3">
            <label for="registerEmail" class="fw-bold">Email *</label>
            <input type="email" name="email" id="registerEmail" placeholder="example@gmail.com" required>
        </div>

        <div class="form-group my-3">
            <label for="registerPassword" class="fw-bold">Mật khẩu *</label>
            <input type="password" name="password" id="registerPassword" placeholder="Mật khẩu" required>
        </div>

        <div class="form-group my-3">
            <label for="registerPasswordConfirmation" class="fw-bold">Nhập lại mật khẩu *</label>
            <input type="password" name="passwordConfirmation" id="registerPasswordConfirmation" placeholder="Nhập lại mật khẩu" required>
            <span class="text-danger password-alert">
                <i class="fa-solid fa-xmark"></i>
                Nhập lại mật khẩu chưa khớp
            </span>

        </div>

        <button type="submit" class="d-block w-100 btn-main-auth">Đăng ký</button>

        <p class="mt-3">Bạn đã có tài khoản? <a href="/login" class="text-danger">Đăng nhập tại đây</a></p>
    </form>
</div>

<script src="<c:url value='/static/js/auth/form.js' />"></script>
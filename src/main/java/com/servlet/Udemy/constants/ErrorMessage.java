package com.servlet.Udemy.constants;

public class ErrorMessage {
    public static final String VERIFY_EMAIL_PROCESS_FIND_USER_MESSAGE = "Không tìm thấy người dùng email verify";
    public static final String CART_NOT_LOGIN_MESSAGE = "Chưa đăng nhập, chưa thể xem giỏ hàng";
    public static final String LOGIN_USER_NOT_FOUND = "Chưa đăng nhập vào hệ thống";
    public static final String ADMIN_LOGIN_NOT_FOUND = "Sai tên đăng nhập hoặc mật khẩu";
    public static final String ADMIN_LOGIN_WRONG_ROLE = "Bạn không có quyền đăng nhập vào đây";
    public static final String CHANGE_PASSWORD_ERROR = "Mật khẩu cũ không đúng";
    public static final String RESET_PASSWORD_ERROR = "Không tìm thấy email đăng ký";
    public static final String DELETE_CATEGORY_ERROR = "Xoá thể loại thất bại";

    //API
    public static final String FIND_TEACHER_ERROR = "Không tìm thấy giáo viên";
    public static final String ADD_TO_CART_NOT_LOGIN_ERROR = "Không thể thêm giỏ hàng khi chưa đăng nhập";
}

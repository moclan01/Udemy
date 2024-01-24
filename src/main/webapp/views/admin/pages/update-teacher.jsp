<%-- 
    Document   : update-teachers
    Created on : Jan 23, 2024, 7:20:15 PM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/includes.jsp" %>

<main id="updateTeacher">
    <div class="container mt-5">
        <div class="bg-body-tertiary">
            <h2 class="fw-bold mt-5">Cập nhật giáo viên</h2>
            <div class="shadow p-3">
    
                <c:if test="${not empty message}">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>${message}</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                      </div>
                </c:if>
    
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-3 col-12">
                            <div class="form-group thumbnail-group">
                                <h4>Ảnh avatar</h4>
                                <div class="d-flex justify-content-center border border-secondary-subtle">
                                    <div class="uploaded d-none">
                                        <div class="dismiss-btn d-flex justify-content-end">
                                            <i class="fa-solid fa-xmark text-body-tertiary"></i>
                                        </div>
                                        <img class="w-100" height="160" src="" alt="Upload Avatar" id="updateTeacherUploadImg" upload-link="${teacher.getAvatar()}">
                                    </div>
                                    <div class="no-upload d-block open-file-explorer-btn">
                                        <div class="text-center">
                                            <span class="text-primary fw-bold d-block">Browse from device</span>
                                            <i class="fa-regular fa-images"></i>
                                        </div>
                                    </div>
                                </div>
                                <input id="updateIconFile" type="file" class="d-none" name="icon" accept="image/png, image/gif, image/jpeg image/webp image/ico">
                            </div>
                        </div>
    
                        <div class="col-md-9 col-12">
                            <div class="form-group">
                                <h4>Tên giáo viên</h4>
                                <input id="teacherName" name="name" value="${teacher.getName()}" class="form-control" type="text" placeholder="Nhập tên thể loại">
                            </div>
                            
                            <div class="form-group">
                                <h4>Môn học giảng dạy</h4>
                                <select id="id" name="category_id" class="form-select">
                                    <c:forEach items="${categories}" var="category">
                                        <c:choose>
                                            <c:when test="${category.getId() eq teacher.getCategoryId()}">
                                                <option value="${category.getId()}" selected>
                                                    ${category.getName()}
                                                </option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="${category.getId()}">
                                                    ${category.getName()}
                                                </option>
                                            </c:otherwise>
                                        </c:choose>
                                        
                                    </c:forEach>
                                </select>
    
                            </div>
    
                            <div class="d-md-flex d-block justify-content-end gap-3 mt-5">
                                <a href="/admin/teachers" class="text-decoration-none btn btn-sm btn-outline-danger">Huỷ</a>
                                <button type="submit" class="btn btn-sm btn-primary">Cập nhật</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>

<script src="<c:url value='/static/js/pages/update-teacher.js?v=${randomNumber}' />"></script>
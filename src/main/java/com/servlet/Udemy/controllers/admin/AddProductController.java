package com.servlet.Udemy.controllers.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.servlet.Udemy.constants.SuccessMessage;
import com.servlet.Udemy.models.CourseModel;
import com.servlet.Udemy.models.ThumbnailModel;
import com.servlet.Udemy.page.AdminPage;
import com.servlet.Udemy.page.Page;
import com.servlet.Udemy.services.CategoryService;
import com.servlet.Udemy.services.CourseService;
import com.servlet.Udemy.services.LevelService;
import com.servlet.Udemy.services.ThumbnailService;
import javax.servlet.http.HttpSession;

@WebServlet("/admin/product/add-product")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 20)

public class AddProductController extends HttpServlet {

    private CategoryService categoryService = new CategoryService();
    private LevelService levelService = new LevelService();
    private CourseService courseService = new CourseService();
    private ThumbnailService thumbnailService = new ThumbnailService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Page page = new AdminPage(req, resp, "add-product.jsp", "master.jsp");
        page.setObject("title", "Thêm khoá học mới");
        page.setObject("categories", categoryService.findAll());
        page.setObject("levels", levelService.findAll());
        page.render();

        if (session.getAttribute("addProductMessage") != null) {
            session.removeAttribute("addProductMessage");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        String name = req.getParameter("name");
        String description = req.getParameter("description");
        double oldPrice = Double.parseDouble(req.getParameter("old_price"));
        double salePrice = Double.parseDouble(req.getParameter("sale_price"));
        int categoryId = Integer.parseInt(req.getParameter("category_id"));
        int levelId = Integer.parseInt(req.getParameter("level_id"));
        boolean isNewCourse = req.getParameter("is_new_course") == null ? false : true;
        boolean isPopularCourse = req.getParameter("is_popular_course") == null ? false : true;

        CourseModel courseModel = new CourseModel();
        courseModel.setName(name);
        courseModel.setDescription(description);
        courseModel.setPrice(oldPrice);
        courseModel.setSalePrice(salePrice);
        courseModel.setNewCourse(isNewCourse);
        courseModel.setPopularCourse(isPopularCourse);
        courseModel.setCategoryId(categoryId);
        courseModel.setLevelId(levelId);

        courseService.insert(courseModel);
        CourseModel course = courseService.findLast();
        List<Part> fileParts = (List<Part>) req.getParts();
        for (Part filePart : fileParts) {
            if (filePart != null && filePart.getSize() > 0 && filePart.getSubmittedFileName() != null) {
                String realPath = req.getServletContext().getRealPath("/static/imgs/courses");
                String fileName = filePart.getSubmittedFileName();
                String location = realPath + File.separator + fileName;
                filePart.write(location);
                ThumbnailModel thumbnailModel = new ThumbnailModel();
                thumbnailModel.setCourseId(course.getId());
                thumbnailModel.setImg("/static/imgs/courses/" + fileName);
                thumbnailService.insert(thumbnailModel);
            }
        }

        req.getSession().setAttribute("addProductMessage",
                SuccessMessage.ADD_NEW_COURSE_SUCCESS_MESSAGE);
        resp.sendRedirect("/admin/product/add-product");
    }
}

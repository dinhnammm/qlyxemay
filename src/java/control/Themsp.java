/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import dao.Dao;
import entity.Product;

/**
 *
 * @author halucky
 */
public class Themsp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter out = response.getWriter()) {
            Dao obj_dao = new Dao();
            Product products = null;
            String id;
            String Action = request.getParameter("action");
            if (Action == null || Action.equals("")) {
                request.setAttribute("PRODUCT", new Product("", "", 0, "", ""));
                request.setAttribute("ACTION", "SaveOrUpdate");
                request.getRequestDispatcher("themsp.jsp").forward(request, response);
            }
            switch (Action) {
                case "SaveOrUpdate":
                    id = request.getParameter("id");
                    String tensp = request.getParameter("tensp");
                    float giaxe = Float.parseFloat(request.getParameter("giaxe"));
                    String hinhanh = request.getParameter("hinhanh");
                    String thongso = request.getParameter("thongso");
                    if (id == null || id.equals("")) {
                        request.getRequestDispatcher("themsp.jsp").forward(request, response);
        
                    }else{
                        products = new Product(id, tensp, giaxe, hinhanh, thongso);
                        if(obj_dao.getAllProductByID(id) == null){
                           obj_dao.insert(products);
                        }else{
                           obj_dao.update(products);
                        }   
                        request.getRequestDispatcher("themsp.jsp").forward(request, response);
                    }
                    break;
            case "list":
                request.getRequestDispatcher("themsp.jsp").forward(request, response);
                
            case "AddOrEdit":
                id = request.getParameter("id");
                products = (Product) obj_dao.getAllProductByID(id);
                if (products == null) {
                    request.setAttribute("PRODUCTS", new Product("", "", 0, "", ""));
                    
                } else {
                    request.setAttribute("PRODUCTS", products);
                }
                request.setAttribute("ACTION", "SaveOrUpdate");
                request.getRequestDispatcher("suasp.jsp").forward(request, response);
                break;
                
            case "Delete":
                id = request.getParameter("id");
                products = obj_dao.getAllProductByID(id);
                if (products != null) {
                    obj_dao.delete(id);
                }
                request.getRequestDispatcher("themsp.jsp").forward(request, response);
                    break;
            }
     }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

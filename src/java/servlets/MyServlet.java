/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.Customer;
import entity.Item;
import entity.Producer;
import facade.CustomerFacade;
import facade.ItemFacade;
import facade.ProducerFacade;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angelina
 */
@WebServlet(name = "MyServlet", urlPatterns = {
    "/myServlet",
    "/addCustomer",
    "/createCustomer",
    "/addItem",
    "/createItem",
    "/addProducer",
    "/createProducer"
})
public class MyServlet extends HttpServlet {

    @EJB
    private ProducerFacade producerFacade;  // внедрение зависимостей, паттерн реализован в GlassFish
    @EJB
    private CustomerFacade customerFacade;
    @EJB
    private ItemFacade itemFacade;

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
        String path = request.getServletPath();
        switch (path) {
            case "/myServlet":
                String info = "Hello from MyServlet!";
                request.setAttribute("infoText", info);
                request.getRequestDispatcher("/page1.jsp").forward(request, response);
                break;
            case "/addCustomer":
                info = "Добавление покупателя";
                request.setAttribute("infoText", info);
                request.getRequestDispatcher("/addCustomer.jsp").forward(request, response);
                break;
            case "/createCustomer":
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String telephone = request.getParameter("telephone");
                String balance = request.getParameter("balance");

                Customer customer = new Customer();
                customer.setFirstName(firstName);
                customer.setLastName(lastName);
                customer.setTelephone(telephone);
                customer.setBalance(Integer.parseInt(balance));

                customerFacade.create(customer);

                info = "Покупатель добавлен!";
                request.setAttribute("infoText", info);
                request.getRequestDispatcher("/page1.jsp").forward(request, response);
                break;
            case "/addItem":
                info = "Добавление обуви";
                request.setAttribute("infoText", info);
                List<Producer> producers = producerFacade.findAll();
                request.setAttribute("producers", producers);
                request.getRequestDispatcher("/addItem.jsp").forward(request, response);
                break;
            case "/createItem":
                String itemName = request.getParameter("itemName");
                String color = request.getParameter("color");
                String itemSize = request.getParameter("itemSize");
                String chosenProducer = request.getParameter("chosenProducer");
                String itemCost = request.getParameter("itemCost");
                String quantity = request.getParameter("quantity");

                Item item = new Item();
                item.setItemName(itemName);
                item.setColor(color);
                item.setItemSize(Integer.parseInt(itemSize));
                item.setProducers(producerFacade.find(Long.parseLong(chosenProducer)));
                item.setItemCost(Integer.parseInt(itemCost));
                item.setQuantity(Integer.parseInt(quantity));
                item.setCount(item.getQuantity());

                itemFacade.create(item);

                info = "Обувь добавлена!";
                request.setAttribute("infoText", info);
                request.getRequestDispatcher("/page1.jsp").forward(request, response);
                break;
            case "/addProducer":
                info = "Добавление производителя";
                request.setAttribute("infoText", info);
                request.getRequestDispatcher("/addProducer.jsp").forward(request, response);
                break;
            case "/createProducer":
                String producerName = request.getParameter("producerName");
                String producerCountry = request.getParameter("producerCountry");

                Producer producer = new Producer();
                producer.setProducerName(producerName);
                producer.setProducerCountry(producerCountry);

                producerFacade.create(producer);

                info = "Производитель добавлен!";
                request.setAttribute("infoText", info);
                request.getRequestDispatcher("/page1.jsp").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }
//        Producer producer = new Producer();
//        producer.setProducerName("Nike");
//        producer.setProducerCountry("USA");
//        Producer producer = producerFacade.find(1L);  // long
//        Customer customer = customerFacade.find(1L);
//
//        request.setAttribute("producer", producer);
//        request.setAttribute("customer", customer);
//
//        request.getRequestDispatcher("/page1.jsp").forward(request, response);

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

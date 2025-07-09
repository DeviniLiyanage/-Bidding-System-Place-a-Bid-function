package Biddingsystem;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServelet")
public class InsertServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the bid parameters from the request
        String fullname = request.getParameter("fullname");
        String bidnumber = request.getParameter("bidnumber");
        String date = request.getParameter("date");
        double price = 0.0;


        if (fullname == null || fullname.isEmpty() || 
                bidnumber == null || bidnumber.isEmpty() || 
                date == null || date.isEmpty()) {
                request.setAttribute("errorMessage", "All fields are required.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("Wrong.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // Handle price conversion
            try {
                price = Double.parseDouble(request.getParameter("price"));
            } catch (NumberFormatException e) {
                request.setAttribute("errorMessage", "Invalid price value.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("Wrong.jsp");
                dispatcher.forward(request, response);
                return;
            }

            boolean isInserted = bidcontroller.insertData(fullname, bidnumber, date, price);

            // Check if the insertion was successful
            if (isInserted) {
                String alertMessage = "Bid Insert Successful";
                response.getWriter().println("<script> alert('" + alertMessage + "'); window.location.href='ReadServlet'</script>");
            } else {
                request.setAttribute("errorMessage", "Bid insertion failed.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("Wrong.jsp");
                dispatcher.forward(request, response);
            }
        }
    }

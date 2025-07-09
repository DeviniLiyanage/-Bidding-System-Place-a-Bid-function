package Biddingsystem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // You might want to implement this if needed for displaying the update form
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int bidId = Integer.parseInt(request.getParameter("bidId"));
    	String fullname = request.getParameter("fullname");
        String bidnumber = request.getParameter("bidnumber");
        String date = request.getParameter("date");
        double price = Double.parseDouble(request.getParameter("price"));


        boolean isTrue = bidcontroller.updateData(bidId, fullname, bidnumber, date, price);

        if (isTrue) {
            List<bidmodel> bidDetails = bidcontroller.getByID(bidId);
            request.setAttribute("bidDetails", bidDetails);

            String alertMessage = "Bid Update Successful";
            response.getWriter().println("<script> alert('" + alertMessage + "'); window.location.href='ReadServlet'</script>");
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("Wrong.jsp");
            dis2.forward(request, response);
        }
    }
}

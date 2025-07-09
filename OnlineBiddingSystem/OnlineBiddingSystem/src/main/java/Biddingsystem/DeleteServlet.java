package Biddingsystem;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // You can implement any logic for GET if needed
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bidIdParam = request.getParameter("bidId");
        
        if (bidIdParam == null || bidIdParam.isEmpty()) {
            request.setAttribute("errorMessage", "Bid ID is missing.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("Wrong.jsp");
            dispatcher.forward(request, response);
            return;
        }

        int bidId = Integer.parseInt(bidIdParam);
        boolean isTrue = bidcontroller.deleteData(bidId);

        if (isTrue) {
            String alertMessage = "Bid Deletion Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='ReadServlet';</script>");
        } else {
            List<bidmodel> bidDetails = bidcontroller.getByID(bidId);
            request.setAttribute("bidDetails", bidDetails);
            RequestDispatcher dispatcher = request.getRequestDispatcher("Wrong.jsp");
            dispatcher.forward(request, response);
        }
    }

    }


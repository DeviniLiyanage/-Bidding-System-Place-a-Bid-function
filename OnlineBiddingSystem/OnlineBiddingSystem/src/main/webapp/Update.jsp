<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Bid</title>
</head>
<body>
    <%
    int bidId = Integer.parseInt(request.getParameter("bidId"));
        String fullname = request.getParameter("fullname");
        String bidnumber = request.getParameter("bidnumber");
        String date = request.getParameter("date");
        String price = request.getParameter("price");
    %>
    <h2>Update Bid Details</h2>
    <form action="UpdateServlet" method="post">
        <table>
            <tr>
                <td>ID :</td>
                <td><input type="text" name="bidId" value=<%=bidId%> readonly></td>
            </tr>
            <tr>
                <td>fullName :</td>
                <td><input type="text" name="fullname" value=<%=fullname%> required></td>
            </tr>
            <tr>
                <td>Bid Number :</td>
                <td><input type="text" name="bidnumber" value=<%=bidnumber%> required></td>
            </tr>
            <tr>
                <td>Bid Date :</td>
                <td><input type="text" name="date" value=<%=date%> required></td>
            </tr>
            <tr>
                <td>Bid Price :</td>
                <td><input type="text" name="price" value=<%=price%> required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Update Bid"></td>
            </tr>      
        </table>      
    </form>
</body>
</html>

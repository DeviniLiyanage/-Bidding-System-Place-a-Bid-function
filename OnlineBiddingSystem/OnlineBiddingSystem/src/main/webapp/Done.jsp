<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Done</h2>

    <table border="1">
        <tr>
            <th>Bid ID</th>
            <th>Bidder Name</th>
            <th>Bid Number</th>
            <th>Bid Date</th>
            <th>Bid Price</th>
            <th>Action</th>
        </tr>
        <c:forEach var="bid" items="${bidDetails}">
            <tr>
                <td>${bid.bidId}</td>
                <td>${bid.fullname}</td>
                <td>${bid.bidnumber}</td>
                <td>${bid.date}</td>
                <td>${bid.price}</td>
                <td>
                <a href="Update.jsp?bidId=${bid.bidId}&fullname=${bid.fullname}&bidnumber=${bid.bidnumber}&date=${bid.date}&price=${bid.price}">
                        <button type="button">Update</button>
                    </a>
                    
                    <form action="DeleteServlet" method="post" style="Done:inline;">
                        <input type="hidden" name="id" value="${bid.bidId}">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Place a Bid</title>
</head>
<body>
<h2>Insert Bid Details</h2>
    <form action="InsertServelet" method="post">
        <table>
            <tr>
                <td>Bid Name:</td>
                <td><input type="text" name="fullame" required></td>
            </tr>
            <tr>
                <td>Bid Number:</td>
                <td><input type="text" name="bidnumber" required></td>
            </tr>
            <tr>
                <td>Date:</td>
                <td><input type="date" name="date" required></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="number" step="0.01" name="price" required></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Submit"></td>
            </tr>        
        </table>        
    </form>
</body>
</html>

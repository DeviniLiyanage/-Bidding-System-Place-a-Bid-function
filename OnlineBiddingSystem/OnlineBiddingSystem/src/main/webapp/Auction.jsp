<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auction Form</title>

    <style>
        /* Navigation bar styles */
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #32012f;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            font-weight: bold;
            color: white;
            text-align: center;
            padding: 20px 25px;
            text-decoration: none;
        }

        .right {
            float: right;
        }

        li a:hover {
            background-color: #555;
            color: white;
        }

        /* Page styling */
        body {
            font-family: Arial, sans-serif;
        }

        .img01 {
            text-align: center;
            margin: 20px 0;
        }

        /* Container for form and slider */
        .form-and-slider-container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin: 20px;
        }

        .container {
            flex: 1;
            margin-right: 20px;
        }

        .container label {
            font-size: 18px;
        }

        .container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
        }

        /* Button container and styling */
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
            margin-bottom: 40px;
        }

        button {
            background-color: #001f3f;
            color: black;
            padding: 15px 20px;
            font-size: 18px;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #004080;
            color: black;
        }

        .cancel-btn {
            background-color: red;
            color: white;
        }

        .cancel-btn:hover {
            background-color: #ff4d4d;
        }

        footer {
            padding: 20px;
            background-color: #32012f;
            color: white;
            text-align: center;
        }

        .footer-left, .footer-right {
            display: inline-block;
            vertical-align: top;
            width: 45%;
            text-align: left;
            padding: 10px;
        }

        .footer-right {
            text-align: right;
        }

        /* Image Slider CSS */
        .slider {
            flex: 0.6;
            margin-left: 20px;
            position: relative;
            height: 300px;
            overflow: hidden;
        }

        .slides {
            display: flex;
            height: 100%;
            transition: transform 0.5s ease;
        }

        .slides img {
            width: 100%;
            height: auto;
            flex: 0 0 100%;
        }

        .nav-btn {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            font-size: 24px;
            padding: 10px;
            cursor: pointer;
        }

        .nav-left {
            left: 10px;
        }

        .nav-right {
            right: 10px;
        }
    </style>

    <script>
        function validateAuctionForm() {
            // Fetching form elements
            var bidId = document.forms["auctionForm"]["bidId"].value;
            var fullName = document.forms["auctionForm"]["fullname"].value;
            var bidNumber = document.forms["auctionForm"]["bidnumber"].value;
            var date = document.forms["auctionForm"]["date"].value;
            var price = document.forms["auctionForm"]["price"].value;

            // Bid ID validation
            if (bidId === "") {
                alert("Bid ID must be filled out");
                return false;
            }

            // Full Name validation
            if (fullName === "") {
                alert("Full Name must be filled out");
                return false;
            }

            // Bid Number validation
            if (bidNumber === "" || isNaN(bidNumber)) {
                alert("Bid Number must be a valid number");
                return false;
            }

            // Date validation
            if (date === "") {
                alert("Date must be filled out");
                return false;
            }

            // Price validation
            if (price === "" || isNaN(price) || parseFloat(price) <= 0) {
                alert("Price must be a valid number greater than 0");
                return false;
            }

            return true; // All validations passed
        }

        let currentSlide = 0;

        function showSlide(slideIndex) {
            const slides = document.querySelectorAll('.slides img');
            currentSlide = slideIndex;
            if (currentSlide >= slides.length) {
                currentSlide = 0;
            } else if (currentSlide < 0) {
                currentSlide = slides.length - 1;
            }
            document.querySelector('.slides').style.transform = `translateX(-${currentSlide * 100}%)`;
        }

        function nextSlide() {
            showSlide(currentSlide + 1);
        }

        function prevSlide() {
            showSlide(currentSlide - 1);
        }

        // Auto-slide every 3 seconds
        setInterval(nextSlide, 3000);
    </script>
</head>
<body>
    <!-- Header Section -->
    <div class="img01">
        <img src="logo.png" class="logo">  
    </div>

    <ul>
        <li><a href="Home.jsp">HOME</a></li>
        <li><a href="Auction.jsp">AUCTION</a></li>
        <li><a href="HelpCenter.jsp">HELP CENTER</a></li>
        <li><a href="AboutUs.jsp">ABOUT US</a></li>    
        <li class="right"><a href="login.jsp">LOGIN</a></li>
        <li class="right"><a href="register.jsp">REGISTER</a></li>
    </ul>

    <!-- Container for form and slider -->
    <div class="form-and-slider-container">
        <!-- Data Entering Part -->
        <form action="InsertServelet" method="post" class="container" name="auctionForm" id="auctionForm">
            
            <label for="fullName">Full Name:</label><br>
            <input type="text" id="fullName" name="fullname" placeholder="Enter your name" required><br>
            
            <label for="bidNumber">Item ID:</label><br>
            <input type="text" id="bidNumber" name="bidnumber" placeholder="Enter your item id" required><br>
            
            <label for="date">Date:</label><br>
            <input type="date" id="date" name="date" required><br>
            
            <label for="price">Price:</label><br>
            <input type="text" id="price" name="price" placeholder="Enter your price" required><br>
            
             <!-- Button Container -->
    	<div class="button-container">
        	<input  type="submit" value="Place a Bid">
        	<button type="button" class="cancel-btn" onclick="window.location.href='Viewdetails.jsp'">Cancel</button>
    	</div>
        </form>

        <!-- Image Slider Section -->
        <div class="slider">
            <div class="slides">
                <img src="1.jpg" alt="Image 1">
                <img src="2.jpg" alt="Image 2">
                <img src="3.jpg" alt="Image 3">
                <img src="4.jpg" alt="Image 4">
            </div>
            <button class="nav-btn nav-left" onclick="prevSlide()">❮</button>
            <button class="nav-btn nav-right" onclick="nextSlide()">❯</button>
        </div>
    </div>

   

    

  
  <!-- Footer -->
    <footer>
        <div class="footer-left">        
            <p>Contact: +94 11 234 5678</p>
            <p>Email: AuctionSystem@gmail.com</p>
            <p>Address: 102/5, Galle Road, Colombo 03, Sri Lanka</p>
        </div>
        <div class="footer-right">
            <p>Copyright © 2024 Auction. All rights reserved.</p>
        </div>
    </footer>

    <!-- JavaScript for slider -->
    <script>
        let currentSlide = 0;
        const slides = document.querySelectorAll('.slides img');

        function showSlide(slideIndex) {
            if (slideIndex >= slides.length) {
                currentSlide = 0;
            } else if (slideIndex < 0) {
                currentSlide = slides.length - 1;
            } else {
                currentSlide = slideIndex;
            }
            const offset = -currentSlide * 100;
            document.querySelector('.slides').style.transform = `translateX(${offset}%)`;
        }

        function nextSlide() {
            showSlide(currentSlide + 1);
        }

        function prevSlide() {
            showSlide(currentSlide - 1);
        }

        // Auto-slide every 3 seconds
        setInterval(nextSlide, 3000);
    </script>

</body>
</html>

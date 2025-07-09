<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Bidding System</title>

<style>
	
	body{
	 background-color: white;
        color: white;
	}
	
	
	ul {
	  list-style-type: none;
	  margin: 0;
	  padding: 0;
	  overflow: hidden;
	  background-color: #32012f;
	}
	
	li {
	  float: Left;
	}
	
	li a {
	  display: block;
	  font-weight: bold;
	  color: white;
	  text-align: center;
	  padding: 20px 25px;
	  text-decoration: none;
	}
	
	.right{
		float: Right;
	}
	
	.center{
		text-align: center;
		}
	
	footer {
	        padding: 5px 0px;
	        background-color: #32012f;
	        color: white;
	        bottom: 0;
	        width: 100%;    
	        }
	        
	.footer-left{
			margin: 20px;
			text-align: left;
	}
	.footer-right{
			 text-align: center;
	}
	
	.welcome-head {
	        text-align: center;
	        color: #32012f;
	        font-family: Times New Roman;
	        font-weight: bold;
	    }
	    
	.welcome-body{
			text-align: left;
	        color: #32012f;
	        font-family: Times New Roman;
			font-size: 20px;
	}
	
	.img02{
		float: left;
		margin-left: 50px;
		margin-right: 20px;
		marigin-bottom: 40px;
		width: 700px;
        height: 700px;
	
	}
	

	
	.home-txt-02{
		color: #32012f;
		font-size:30px;
		text-align: right;
		font-weight: bold;
		
	}
	
	.home-txt-03{
		color: #32012f;
		font-size:30px;
		text-align: left;
	}
	

	
	.txt2 {
        display: flex; /* Establishes a flex container */
        align-items: center;
        justify-content: flex-start;
        width: 100%; /* Vertically centers the items in the container */
    }
	
	.txt2 img{
		flex-shrink: 0; /* Prevents the image from shrinking */
        max-width: 700px; /* Maximum width of the image */
        height: auto;
	}
	
	.txt2 .home-txt-01{

		color: #32012f;
		font-size:35px;
		font-weight: bold;
		
	}
	
	
	
	
	
	.img01{
		text-align:center;
	
	}
	
	

	
	.companies-value {
	    list-style-type: none;
	    display: flex;
	    justify-content: space-around; 
	    padding: 0;
	}
	
	.companies-value li {
	    font-size: 30px;
	    font-weight: bold;
	    text-align: center;
	    color: black;
	}
	
	.companies h2{
	    text-align: center;
		color:#863A6F
	}
	
	.companies-value a {
	    text-decoration: none;
	    display: block; 
	    padding: 10px 20px;
	    background-color: rgb(34, 141, 203);
	    color: white;
	    border-radius: 20px;
	    transition: background-color 0.3s ease;
	    margin-bottom: 20px;
	    width: 100px;
	}
	
	.job-info {
	    font-size: 14px;
	    color: #863A6F;
	    padding-bottom: 20px;
	}
	
	
	.companies-value a:hover {
	    background-color: #32012f;
	    border-color: #32012f;
	    color: white;
	}
	
	.service-container {
	    display: flex;
	    
	}
	
	.service-box {
	    background-color: #32012f;
	    padding: 10px;
	    margin: 10px;
	    border: 2px solid black;
	    border-radius: 5px;
	    text-align: center;
	    font-size: 16px;
	    font-weight: bold;
	    width: 30%;
	    float: left;
	  
	}
	
	.button {
        background-color: white; 
        color: black; 
        border: 2px  solid black; 
        padding: 10px 20px;
        font-family: Times New Roman;
        font-weight: bold; 
        text-align: center; 
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s; 
    }

    .button:hover {
        background:#32012F;
    	color: white;
    	 border: 2px  solid black; 
    }
	

</style>

</head>

<body>


<!-- header -->
<div class= "img01">
	<img src="logo.png" class="logo">  
</div>

          
<ul>
	<li><a href="">HOME</a></li>
	<li><a href="">AUTION</a></li>
	<li><a href="">HELP CENTER</a></li>
	<li><a href="">ABOUT US</a></li>	
	<li class="right"><a href="login.asp">LOGIN</a></li>
	<li class="right"><a href="register.asp">REGISTER</a></li>
</ul>



<br>
<!-- end of header -->
<div class="img02">
	<img src="" class="welcomeimg" style="width: 500px; height: auto;">  
</div>

<div class="welcome-head">
	<h1>Auction History</h1>
	</div>
	
<div class="welcome-body">
	<p>The earliest forms of bidding likely date back to the origins of trade and barter systems in ancient civilizations. People would negotiate over the value of goods, with the seller accepting the highest offer, a rudimentary form of auction.
As the world became more interconnected in the early 20th century, auction houses expanded their reach. Fine art, luxury items, and collectibles were increasingly traded internationally.Modern platforms (e.g., eBay, Alibaba) facilitate billions of
 dollars in transactions daily. These platforms utilize both manual and automatic bidding systems, where users can set maximum bid limits and allow algorithms to bid on their behalf.
	</p>
</div>
<div class="center">
	<button class="button">More
	</button>
</div>


<div class="Center">
	<h2>Empowering Excellence in Over 10,000 Workplaces</h2>



<div class="txt2">


	
	<img src="emp01 .jpg" class="10000+">
</div>>


<br><br><br>


<div class="service-box">
        <h3>TRANSPARENCY</h3>
    </div>
    <div class="service-box">
        <h3>USER-FRIENDLY AUCTIONING-BIDDING PLATFORM</h3>
    </div>
    <div class="service-box">
        <h3>100% SECURED ONLINE AUCTION MARKET</h3>
    </div>
<br>

<div class="companies">
        <h2>AUCTION AND ONLINE BIDDING SERVICES PROVIDED BY US</h2>
    </div>
    <div class="companies-value">
      <li>
          <a href="#">+10,000</a>
          <div class="job-info">
              Auction Items
          </div>
      </li>
      <li>
          <a href="#">+8,000</a>
          <div class="job-info">          
              Sellers
              
          </div>
      </li>
      <li>
          <a href="#">+2,500</a>
          <div class="job-info">             
             Companies
             
          </div>
      </li>
      <li>
          <a href="#">+15,820</a>
          <div class="job-info">
                  Auctioneers
          </div>
      </li>
  </div>


<br>


<footer>
	<div class="footer-left">		
		<p>Contact: +94 11 234 5678</p>
		<p>Email: AuctionSystem@gmai.com</p>
		<p>Address: 102/5, Galle Road, Colombo 03, Sri Lanka</p>
	</div>
	<div class="footer-right">
		<p>Copyright © 2024 Aucation. All rights reserved.</p>
	</div>
	    
</footer>

</body>

</html>
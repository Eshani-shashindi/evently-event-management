<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Evently - Home Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/home.css">
</head>
<body>

    <nav>
        <a href="#home">Home</a>
        <a href="#about">About Us</a>
        <a href="#testimonials">Testimonials</a>
        <a href="#contact">Contact</a>
        <a href="#feedback">Feedback</a>
    </nav>

    
    <div class="hero">
        <h1>Plan Your Perfect Event with Us</h1>
    </div>

    
    <div class="content">
        <h2>Welcome to Evently</h2>
        <p>Your one-stop platform to plan, manage, and host memorable events effortlessly.</p>
        
        
        <button class="button" onclick="window.location.href='events.html'">View Events</button>
        <button class="button" onclick="window.location.href='createBooking.jsp'">Book an Event</button>

        
        <div class="about-section" id="about">
            <h2>About Us</h2>
            <p>At Evently, we are committed to simplifying event management for individuals, companies, and organizations. 
               Whether it's a corporate event, a wedding, or a social gathering, we provide the tools you need to create 
               a flawless experience from start to finish.</p>
        </div>

        

        
        <div class="testimonials-section" id="testimonials">
            <h2>What Our Clients Say</h2>
            <div class="testimonial">
                <p>"Evently made our corporate retreat seamless and enjoyable! Highly recommend their services!"</p>
                <cite>- Jane Doe, Corporate Client</cite>
            </div>
            <div class="testimonial">
                <p>"I loved how easy it was to book my wedding with Evently. They took care of everything!"</p>
                <cite>- John Smith, Bride</cite>
            </div>
        </div>

     
     
	          <div id="feedback">
	    <h2>Feedback</h2>
	    <button class="button" onclick="window.location.href='indexfeedback.jsp'">Feedback</button>
	 	</div>
        <div class="contact-form" id="contact">
            <h2>Contact Us</h2>
            <form>
                <input type="text" placeholder="Your Name" required>
                <input type="email" placeholder="Your Email" required>
                <textarea placeholder="Your Message" rows="4" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>
   
   
 	<div>
    <%@ include file="footer.jsp" %>
   </div>
</body>
</html>
     
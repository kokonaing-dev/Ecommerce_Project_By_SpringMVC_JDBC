<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="layout/header.jsp" />
<style>
    .about-section {
        background-color: transparent;
        padding: 40px 0;
        text-align: center;
    }

    .slideshow-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        max-width: 70%; /* Adjust the width as needed */
        height: 400px; /* Fixed height for the container */
        border-radius: 10px; /* Add rounded corners */
        overflow: hidden; /* Ensure content does not overflow rounded corners */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
    }
    .mySlides {
        display: none;
        max-height: 300px; /* Adjust the max height as needed */
        width: auto;
    }
    .mySlides img {
        max-width: 100%;
        max-height: 100%;
        border-radius: 10px; /* Add rounded corners to images */
    }

    .about-section h2 {
        color: #333;
        margin-bottom: 20px;
    }

    .about-content {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .about-box {
        flex: 1;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        background-color: #fff;
        text-align: center;
    }

    .about-image img {
        border-radius: 8px;
        max-width: 90%;
        height: auto;
    }

    .about-details {
        margin-top: 20px;
    }

    .about-details h2 {
        color: #db9214;
        margin-bottom: 10px;
    }

    .about-details p {
        color: orangered;
        line-height: 1.6;
    }
    .chef-section {
        background-color: #fff;
        padding: 40px 0;
        text-align: center;
    }

    .chef-section h2 {
        color: #333;
        margin-bottom: 20px;
    }

    .chef-content {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .chef-box {
        flex: 1;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        background-color:transparent;
        text-align: center;
    }

    .chef-image img {
        border-radius: 50%;
        max-width: 200px;
        height: auto;
    }

    .chef-details {
        margin-top: 20px;
    }

    .chef-details h3 {
        color: #db9214;
        margin-bottom: 10px;
    }

    .chef-details p {
        color: orangered;
        line-height: 1.6;
    }
    .info-box {
        background-color:transparent;
        padding: 40px 0;
        text-align: center;
    }

    .info-box h2 {
        color: #333;
        margin-bottom: 20px;
    }

    .info-content {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }

    .info-item {
        flex: 1;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        margin: 10px;
        background-color: #fff;
        text-align: center;
    }

    .info-item h3 {
        color: #db9214;
        margin-bottom: 10px;
    }

    .info-item p {
        color: #777;
        line-height: 1.6;
    }

    .event-section {
        background-color: #fff;
        padding: 40px 0;
        text-align: center;
    }

    .event-section h2 {
        color: #333;
    }

    .event-content {
        display: flex;
        justify-content: center;
        margin-top: 30px;
    }

    .event-box {
        flex: 1;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 2px 10px rgba(204, 152, 152, 0.1);
        margin: 0 10px;
    }

    .event-box h3 {
        color: #db9214;
        margin-bottom: 10px;
    }

    .event-box p {
        color: #777;
    }
    /*body {*/
    /*    margin: 0;*/
    /*    display: flex;*/
    /*    justify-content: center;*/
    /*    align-items: center;*/
    /*    height: 100vh;*/
    /*    background-color: #f4f4f4;*/
    /*}*/
</style>
<body class="sub_page">
<c:import url="layout/navbar.jsp"/>


<section class="about-section">
    <!-- ... Your existing about section ... -->
    <section class="about-section">
        <div class="container">
            <div class="about-content">
                <div class="about-box">
                    <div class="about-image">
                        <img src="../assets/imgs/Main.jpeg" alt="Restaurant Interior">
                    </div>
                    <div class="about-details">
                        <h2>About Our Restaurant</h2>
                        <p>Welcome to NgoYinSarr, where we bring you an unforgettable dining experience. Our restaurant is a haven for food lovers who appreciate exquisite flavors and a warm atmosphere.</p>
                        <p>Whether you're joining us for a romantic dinner, a family celebration, or a business meeting, we strive to create a memorable culinary journey for you.</p>

                    </div>
                </div>
            </div>
        </div>
    </section>
</section>

<section class="chef-section">
    <!-- ... Your existing chef section ... -->
    <section id="chef-section" class="chef-section">
        <div class="container">
            <div class="chef-content">
                <div class="chef-box">
                    <div class="chef-image">
                        <img src="../assets/imgs/Chef.jpg" alt="Chef Name">
                    </div>
                    <div class="chef-details">
                        <h2>Our Chef</h2>
                        <h3>Mr Kyaw Zaw</h3>
                        <p>Chef Name is a passionate culinary artist with over X years of experience in the culinary world. With a keen sense of creativity and an unwavering dedication to quality, Chef Name has crafted a menu that showcases the finest flavors from around the world.</p>
                        <p>From the freshest ingredients to innovative techniques, Chef Name's culinary expertise ensures that each dish is a masterpiece that delights the senses.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>

<%--<section class="info-box">--%>
<%--    <!-- ... Your existing info box section ... -->--%>
<%--    <div class="container">--%>
<%--        <h2>Special Offers</h2>--%>
<%--        <div class="info-content">--%>
<%--            <div class="info-item">--%>
<%--                <h3>Weekday Discounts</h3>--%>
<%--                <p>Enjoy a special 15% discount on weekdays from 3:00 PM - 6:00 PM.</p>--%>
<%--            </div>--%>
<%--            <div class="info-item">--%>
<%--                <h3>Happy Hour</h3>--%>
<%--                <p>Join us for Happy Hour every Friday, with half-priced drinks and appetizers from 5:00 PM - 7:00 PM.</p>--%>
<%--            </div>--%>
<%--            <!-- Add more info items as needed -->--%>
<%--        </div>--%>
<%--    </div>--%>

<%--</section>--%>

<%--<section class="event-section">--%>
<%--    <div class="container">--%>
<%--        <h2>Upcoming Events</h2>--%>
<%--        <div class="event-content">--%>
<%--            <div class="event-box">--%>
<%--                <h3>Special Menu Tasting</h3>--%>
<%--                <p>Join us on <strong>August 15th</strong> for an exclusive tasting of our new seasonal menu.</p>--%>
<%--            </div>--%>
<%--            <div class="event-box">--%>
<%--                <h3>Wine & Dine Night</h3>--%>
<%--                <p>Experience an evening of exquisite wines and delectable dishes on <strong>September 10th</strong>.</p>--%>
<%--            </div>--%>
<%--            <!-- Add more event boxes as needed -->--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<div class="slideshow-container">
    <h1>Our Memories</h1>
    <div class="mySlides">
        <img src="../assets/imgs/C1.jpeg" alt="Image 1">
    </div>
    <div class="mySlides">
        <img src="../assets/imgs/C2.jpg" alt="Image 2">
    </div>
    <div class="mySlides">
        <img src="../assets/imgs/C3.jpg" alt="Image 3">
    </div>
    <h3>Thanks</h3>
</div>


<script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let slides = document.getElementsByClassName("mySlides");
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex = (slideIndex + 1) % slides.length;
        slides[slideIndex].style.display = "block";
        setTimeout(showSlides, 3000); // Change image every 3 seconds
    }
</script>

<c:import url="layout/footer.jsp"/>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title >Bus Tracker | Find your Bus Instantly Anytime Anywhere</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
     <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="icon" href="Logo_thumb28(black).png" type="image/x-icon"/>
  <style>
      body {
          font: 400 15px/1.8 Lato, sans-serif;
          color: #777;
      }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 1px;
      font-size: 20px;
      color: #111;
  }
  h2{
      margin: 10px 0 30px 0;
      letter-spacing: 1px;
      font-size: 25px;
      color: #fff;
  }
  .color{
      color:#000;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .greyscale{
      filter:greyscale(90%);
      margin: auto;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
    .center{
        float:inherit;
    }
    .left{
        float:left;
        margin:10px;
    }
    .right{
        float:right;
        margin:10px;
    }
  .card{
       font-family: 'PT Sans',sans-serif;
        font-size: 17px !important;
      width:540px;
      height:660px;
      elevation:level;
      border-radius:5px;
      background-color:#2d2d30;
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }
  .margin_left{
      margin-left:20px;
  }
  .navbar {
      padding-left:10px;
      font-family: 'Pacifico',sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 17px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar_font_size{
      font-size:20px;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .logo{
      margin-right:10px;
      padding:10px;
      margin-bottom: 0;
      opacity:0.9;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }
  .form-control {
     
      width:70%;
      border-radius: 5px;
  }
  textarea {
      resize: none;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand logo" href="#myPage"><img src="Logomakr_5lNvlC.png" height="35px" width="35px"/></a>
      <a class="navbar-brand navbar_font_size" href="#myPage">Bus Tracker</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">Home</a></li>
        <li><a href="#band">Track</a></li>
        <li><a href="#tour">About Us</a></li>
        <li><a href="#contact">Contact Us</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="bus.jpg" alt="Pimpri" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Pune</h3>
        </div>
      </div>

      <div class="item">
        <img src="pmpml2.JPG" alt="Chicago" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Pimpri</h3>
        </div>
      </div>
    
      <div class="item">
        <img src="pmpml3.jpg" alt="Los Angeles" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Nigdi</h3>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h3>Bus Tracker</h3>
  <p><em>Live Bus Tracking </em></p>
  <p>Never Miss a Bus Anymore!</p>
  <br>
    <div class="row">
        <div class="col-sm-4">
    <div class="card color right">
        <br>
        <h2>Check Your Bus On the Go with Bus Tracker</h2>
        <br>
        <div class="form-group">
  <p>Name:</p>
  <input type="text" class="form-control" id="usr">
</div>
    </div>
            </div>
        <div class="col-sm-4">
            </div>
        <div class="col-sm-4">
    <div class="card color left">
        <br>
        <h2>Check Your Bus On the Go with Bus Tracker</h2>
    </div>
            </div>
        </div>
</div>

<!-- Container (About section) -->
<div id="tour" class="bg-1">
  <div class="container">
    <h3 class="text-center">Bus Tracker - Track your Bus anytime anywhere</h3>
    <p class="text-center">Bus Tracker lets you to track the PMPL & BRTS<br>We need just the bus no!!!</p>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Tickets</h4>
        </div>
        <div class="modal-body">
          <form role="form">
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23 per person</label>
              <input type="number" class="form-control" id="psw" placeholder="How many?">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
              <button type="submit" class="btn btn-block">Pay
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>Need Help ?</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Any Suggestions...</p>
        <p>We will Like to here from You...</p>
        <p>Drop a note..</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Akurdi,Pune</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +91 9145738378</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: bus_tracker@gmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
  <br>
  <h3 class="text-center">From The Blog</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Shreerag</a></li>
    <li><a data-toggle="tab" href="#menu1">Vivek</a></li>
    <li><a data-toggle="tab" href="#menu2">Akshar</a></li>
      <li><a data-toggle="tab" href="#menu2">Swanand</a></li>
      <li><a data-toggle="tab" href="#menu2">Aditya</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>Mike Ross, Manager</h2>
      <p>Will come Soon !!</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Chandler Bing, Guitarist</h2>
      <p>Will come Soon !!</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Peter Griffin, Bass player</h2>
      <p>Will come Soon !!</p>
    </div>
  </div>
</div>

<div id="googleMap"></div>

<!-- Add Google Maps -->
   <script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
    var myCenter = new google.maps.LatLng(18.4638871, 73.8657832);

    function initialize() {
        var mapProp = {
            center: myCenter,
            zoom: 12,
            scrollwheel: false,
            draggable: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

        var marker = new google.maps.Marker({
            position: myCenter,
        });

        marker.setMap(map);
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Bus Tracker | Live Bus Tracking</p>
<br>
    <p></p>
</footer>

<script>
    $(document).ready(function () {
        // Initialize Tooltip
        $('[data-toggle="tooltip"]').tooltip();

        // Add smooth scrolling to all links in navbar + footer link
        $(".navbar a, footer a[href='#myPage']").on('click', function (event) {

            // Make sure this.hash has a value before overriding default behavior
            if (this.hash !== "") {

                // Prevent default anchor click behavior
                event.preventDefault();

                // Store hash
                var hash = this.hash;

                // Using jQuery's animate() method to add smooth page scroll
                // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                $('html, body').animate({
                    scrollTop: $(hash).offset().top
                }, 900, function () {

                    // Add hash (#) to URL when done scrolling (default click behavior)
                    window.location.hash = hash;
                });
            } // End if
        });
    })
</script>

</body>
</html>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<%@include file="header.jsp" %>



<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

<br>
<br>
<br>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <img src="./resources/m1.jpg" alt="shopping1" style="width:100%;" style="height:50%;"/>
       
      </div>

      <div class="item">
       <img src="./resources/m2.jpg" alt="shopping2" style="width:100%;"style="height:50%;"/>
      </div>
    
      <div class="item">
       <img src="./resources/m5.jpg" alt="shopping3" style="width:100%;"style="height:50%;"/>
      </div>
      
       <div class="item">
        <img src="./resources/m4.jpg" alt="shopping4" style="width:100%;"style="height:50%;"/>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
</div>

<%@include file="footer.jsp" %>
</body>
</html>

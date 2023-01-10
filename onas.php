<?php
  include("index.php")
?>
<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <title>3 akordy darcie mordy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" type="image/x-icon" href="images/cart-check.svg">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+Arabic:wght@300&family=Lato:ital@1&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-xl navbar-dark bg-dark m-0">
        <div class="container-fluid">
          <a class="navbar-brand" href="file.php">\m/</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item h4 mx-5">
                <a class="nav-link active" aria-current="page" href="file.php">Strona główna</a>
              </li>
              <li class="nav-item h4 mx-5">
                <a class="nav-link active" href="gitary.php">Gitary</a>
              </li>
              <li class="nav-item h4 mx-5">
                <a class="nav-link active" href="onas.php">O nas</a>
              </li>
            </ul>
          </div>
        </div>
    </nav>

    <section class="jumbotron text-center bg-dark text-light">
      <div class="container">
        <h1 class="jumbotron-heading">Jesteśmy sklepem z gitarami</h1>
        <p class="lead text-muted">Tyle musisz wiedzieć. Poniżej są ładne zdjęcia gitar, których nie ma w naszym sklepie</p>
      </div>
    </section>

    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-item active">
          <img src="images/1.jpg" class="d-block w-70" alt="...">
        </div>
        <div class="carousel-item">
          <img src="images/2.jpg" class="d-block w-70" alt="...">
        </div>
        <div class="carousel-item">
          <img src="images/3.jpg" class="d-block w-70" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

    <div class="row">
        <div class="card text-center text-light bg-dark mt-5">
            <div class="card-header">
            Kontakt
            </div>
            <div class="card-body mt-5">
            <h5 class="card-title">Można się z nami skontaktować na wiele różnych sposobów!!!</h5>
            <h5 class="card-title mt-5"></h5>
            <p class="card-text mb-3">
              Żartowałem
            </p>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
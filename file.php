<?php
  include("index.php")
?>
<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <title>3 akordy darcie mordy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="script" href="index.php">
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
        <h1 class="jumbotron-heading">Witamy w naszym sklepie</h1>
        <p class="lead text-muted">Jesteśmy najmniejszym i nasłabiej prosperującym tego typu przedsięwzięciem w internecie</p>
      </div>
    </section>

    <div class="album py-2 bg-white my-5">
      <div class="container">

        <div class="row">
          <div class="col-md-4">
            <div class="card mb-4 box-shadow">
              <img src="images/5.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <p class="card-text"> <?php echo $row[0]['recenzja']; ?> </p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">5 mins</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card mb-4 box-shadow">
              <img src="images/6.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <p class="card-text"><?php echo $row[1]['recenzja']; ?></p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">1 mins</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card mb-4 box-shadow">
              <img src="images/9.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <p class="card-text"><?php echo $row[2]['recenzja']; ?></p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">5 mins</small>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card mb-4 box-shadow">
              <img src="images/7.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <p class="card-text"><?php echo $row[3]['recenzja']; ?></p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">9 mins</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card mb-4 box-shadow">
              <img src="images/8.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <p class="card-text"><?php echo $row[4]['recenzja']; ?></p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">22 mins</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card mb-4 box-shadow">
              <img src="images/10.png" class="card-img-top" alt="...">
              <div class="card-body">
                <p class="card-text"><?php echo $row[5]['recenzja']; ?></p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">40 mins</small>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
        <div class="card text-center text-light bg-dark mt-5">
            <div class="card-header mb-5">
            Kontakt
            </div>
            <div class="card-body mt-5">
            <h5 class="card-title mb-5">Można się z nami skontaktować na wiele różnych sposobów!!!</h5>
            <h5 class="card-title mb-5"></h5>
            <p class="card-text mb-5">
              Żartowałem
            </p>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
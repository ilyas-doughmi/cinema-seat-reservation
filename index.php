<?php

require_once("Classes/connect.php");
require_once("Classes/Movie.php");

$movies = new Movie();
$available_movies = $movies->getAllMovies();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php foreach($available_movies as $mv){?>
        <h1><?= $mv["movie_name"] ?></h1>
        <img src="<?= $mv["movie_image"] ?>" alt="">
  <?php  } ?>
</body>
</html>
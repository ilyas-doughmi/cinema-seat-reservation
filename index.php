<?php

require_once("Classes/connect.php");
require_once("Classes/Movie.php");

$movies = new Movie();
$available_movies = $movies->getAllMovies();

?>
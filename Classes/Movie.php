<?php
Class Movie extends db{

    public function getAllMovies(){
        $query = "SELECT * FROM movie";
        $stmt = $this->connect()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function getMovieData($id){
        $query = "SELECT * FROM movie WHERE movie_id = :id";
        $stmt = $this->connect()->prepare($query);
        $stmt->bindParam(":id",$id);
        $stmt->execute();
        return $stmt->fetch();
    }

}
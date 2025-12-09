CREATE DATABASE cinema_reservation;
USE cinema_reservation;

CREATE TABLE movie(
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(255),
    movie_description VARCHAR(255),
    price INT
);
CREATE TABLE showtimes(
    st_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    start_time DATETIME,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);
CREATE TABLE booking(
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    price DECIMAL(5,2),
    user_name VARCHAR(100),
    seat_number INT,
    show_id INT,
    FOREIGN KEY (show_id) REFERENCES showtimes(st_id)

);


ALTER TABLE movie 
ADD movie_image VARCHAR(255);

INSERT INTO movie (movie_name, movie_description, price, movie_image) VALUES
('The Dark Knight', 'Batman faces the Joker in Gotham City.', 50, 'https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg'),
('Inception', 'A thief steals secrets through dream invasion.', 45, 'https://image.tmdb.org/t/p/w500/edv5CZvWj09upOsy2Y6IwDhK8bt.jpg'),
('Interstellar', 'A crew travels through a wormhole to save mankind.', 60, 'https://image.tmdb.org/t/p/w500/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg'),
('The Matrix', 'A hacker learns reality is a simulation.', 40, 'https://image.tmdb.org/t/p/w500/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg'),
('Avatar', 'A marine explores the alien moon Pandora.', 55, 'https://image.tmdb.org/t/p/w500/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg'),
('Titanic', 'Two lovers fight to survive the sinking ship.', 30, 'https://image.tmdb.org/t/p/w500/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg'),
('The Shawshank Redemption', 'A banker imprisoned for a crime he didn’t commit.', 35, 'https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg'),
('The Godfather', 'The story of the powerful Corleone family.', 45, 'https://image.tmdb.org/t/p/w500/iVZ3JAcAjmguGPnRNfWFOtLHOuY.jpg'),
('Pulp Fiction', 'Intertwined stories of crime in Los Angeles.', 40, 'https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg'),
('Forrest Gump', 'A simple man witnesses major historical events.', 30, 'https://image.tmdb.org/t/p/w500/saHP97rTPS5eLmrLQEcANmKrsFl.jpg'),
('Gladiator', 'A betrayed general seeks revenge in Rome.', 50, 'https://image.tmdb.org/t/p/w500/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg'),
('The Lion King', 'A lion prince must claim his destiny.', 25, 'https://image.tmdb.org/t/p/w500/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg'),
('Jurassic Park', 'Dinosaurs return due to cloning technology.', 35, 'https://image.tmdb.org/t/p/w500/9i3plLl89DHMz7mahksDaAo7HIS.jpg'),
('Star Wars: A New Hope', 'A farm boy joins rebels against the Empire.', 50, 'https://image.tmdb.org/t/p/w500/6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg'),
('The Avengers', 'Earth’s mightiest heroes unite to stop Loki.', 55, 'https://image.tmdb.org/t/p/w500/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg'),
('Spider-Man: No Way Home', 'Spider-Man faces multiverse villains.', 60, 'https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg'),
('Black Panther', 'T’Challa returns to Wakanda as king.', 50, 'https://image.tmdb.org/t/p/w500/uxzzxijgPIY7slzFvMotPv8wjKA.jpg'),
('Guardians of the Galaxy', 'A group of misfits saves the galaxy.', 45, 'https://image.tmdb.org/t/p/w500/y31QB9kn3XSudA15tV7UWQ9XLuW.jpg'),
('The Hunger Games', 'A girl fights for her life in deadly games.', 30, 'https://image.tmdb.org/t/p/w500/1ewwtjqAcx8COc742G3rb8XsTQw.jpg'),
('John Wick', 'An ex-hitman seeks vengeance.', 40, 'https://image.tmdb.org/t/p/w500/fZPSd91yGE9fCcCe6OoQr6E3Bev.jpg'),
('Mad Max: Fury Road', 'A chase through a desert wasteland.', 50, 'https://image.tmdb.org/t/p/w500/hA2ple9q4qnwxp3hKVXuJpHmtvU.jpg'),
('The Wolf of Wall Street', 'A broker rises and falls in scandal.', 45, 'https://image.tmdb.org/t/p/w500/pwh2DqbFSjMop5gVxEjWkS9ikt5.jpg'),
('Frozen', 'Two sisters deal with a kingdom trapped in winter.', 25, 'https://image.tmdb.org/t/p/w500/mmdu0d45Z1TLkF2KWnPzBfCGNwb.jpg'),
('Coco', 'A boy enters the Land of the Dead.', 30, 'https://image.tmdb.org/t/p/w500/gGEsBPAijhVUFoiNpgZXqRVWJt2.jpg'),
('Minions', 'Yellow creatures in a comedic adventure.', 20, 'https://image.tmdb.org/t/p/w500/kpHJ1UuUHdTUoK6Dlw0qXXpRgrf.jpg'),
('Shrek', 'An ogre rescues a princess.', 20, 'https://image.tmdb.org/t/p/w500/dyhaB19AICF7VUpEldYqg1pMv2.jpg'),
('Toy Story', 'Toys come to life when humans are away.', 25, 'https://image.tmdb.org/t/p/w500/uXDfjJbdP4ijW5hWSBrPrlKpxab.jpg'),
('Finding Nemo', 'A father crosses the ocean to find his son.', 25, 'https://image.tmdb.org/t/p/w500/xYF1FZ8G6mJ67dImgQeTRNAAlaV.jpg'),
('Harry Potter and the Sorcerer\'s Stone', 'A boy learns he is a wizard.', 45, 'https://image.tmdb.org/t/p/w500/hziiv14OpD73u9gAak4XDDfBKa2.jpg'),
('The Lord of the Rings: The Fellowship of the Ring', 'A group attempts to destroy an evil ring.', 50, 'https://image.tmdb.org/t/p/w500/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg');

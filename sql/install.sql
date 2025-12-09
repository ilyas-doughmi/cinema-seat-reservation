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


INSERT INTO showtimes (movie_id, start_time) VALUES
-- Movie 1
(1, '2025-01-10 14:00:00'),
(1, '2025-01-10 18:00:00'),
(1, '2025-01-11 12:00:00'),
(1, '2025-01-11 20:00:00'),

-- Movie 2
(2, '2025-01-12 13:00:00'),
(2, '2025-01-12 19:30:00'),
(2, '2025-01-13 16:00:00'),
(2, '2025-01-13 21:00:00'),

-- Movie 3
(3, '2025-01-14 15:00:00'),
(3, '2025-01-14 20:30:00'),
(3, '2025-01-15 13:45:00'),
(3, '2025-01-15 22:00:00'),

-- Movie 4
(4, '2025-01-16 12:00:00'),
(4, '2025-01-16 17:30:00'),
(4, '2025-01-17 14:30:00'),
(4, '2025-01-17 21:30:00'),

-- Movie 5
(5, '2025-01-18 13:20:00'),
(5, '2025-01-18 18:10:00'),
(5, '2025-01-19 15:30:00'),
(5, '2025-01-19 22:00:00'),

-- Movie 6
(6, '2025-01-20 11:45:00'),
(6, '2025-01-20 16:45:00'),
(6, '2025-01-21 13:00:00'),
(6, '2025-01-21 20:15:00'),

-- Movie 7
(7, '2025-01-22 12:15:00'),
(7, '2025-01-22 19:00:00'),
(7, '2025-01-23 14:30:00'),
(7, '2025-01-23 21:00:00'),

-- Movie 8
(8, '2025-01-24 13:00:00'),
(8, '2025-01-24 17:30:00'),
(8, '2025-01-25 16:00:00'),
(8, '2025-01-25 22:20:00'),

-- Movie 9
(9, '2025-01-26 14:00:00'),
(9, '2025-01-26 18:45:00'),
(9, '2025-01-27 15:20:00'),
(9, '2025-01-27 23:00:00'),

-- Movie 10
(10, '2025-01-28 13:40:00'),
(10, '2025-01-28 20:00:00'),
(10, '2025-01-29 15:00:00'),
(10, '2025-01-29 22:15:00'),

-- Movie 11
(11, '2025-01-30 14:00:00'),
(11, '2025-01-30 18:00:00'),
(11, '2025-01-31 13:00:00'),
(11, '2025-01-31 21:00:00'),

-- Movie 12
(12, '2025-02-01 12:00:00'),
(12, '2025-02-01 17:00:00'),
(12, '2025-02-02 15:00:00'),
(12, '2025-02-02 20:30:00'),

-- Movie 13
(13, '2025-02-03 11:30:00'),
(13, '2025-02-03 18:40:00'),
(13, '2025-02-04 14:00:00'),
(13, '2025-02-04 22:00:00'),

-- Movie 14
(14, '2025-02-05 12:00:00'),
(14, '2025-02-05 19:00:00'),
(14, '2025-02-06 16:30:00'),
(14, '2025-02-06 22:45:00'),

-- Movie 15
(15, '2025-02-07 14:00:00'),
(15, '2025-02-07 18:15:00'),
(15, '2025-02-08 12:30:00'),
(15, '2025-02-08 21:00:00'),

-- Movie 16
(16, '2025-02-09 13:00:00'),
(16, '2025-02-09 17:00:00'),
(16, '2025-02-10 15:30:00'),
(16, '2025-02-10 22:00:00'),

-- Movie 17
(17, '2025-02-11 12:30:00'),
(17, '2025-02-11 19:30:00'),
(17, '2025-02-12 14:20:00'),
(17, '2025-02-12 21:00:00'),

-- Movie 18
(18, '2025-02-13 11:10:00'),
(18, '2025-02-13 18:10:00'),
(18, '2025-02-14 16:00:00'),
(18, '2025-02-14 22:15:00'),

-- Movie 19
(19, '2025-02-15 14:00:00'),
(19, '2025-02-15 20:00:00'),
(19, '2025-02-16 13:00:00'),
(19, '2025-02-16 23:00:00'),

-- Movie 20
(20, '2025-02-17 12:00:00'),
(20, '2025-02-17 18:00:00'),
(20, '2025-02-18 15:45:00'),
(20, '2025-02-18 21:30:00'),

-- Movie 21
(21, '2025-02-19 13:30:00'),
(21, '2025-02-19 19:00:00'),
(21, '2025-02-20 16:30:00'),
(21, '2025-02-20 22:00:00'),

-- Movie 22
(22, '2025-02-21 11:30:00'),
(22, '2025-02-21 17:30:00'),
(22, '2025-02-22 15:00:00'),
(22, '2025-02-22 23:00:00'),

-- Movie 23
(23, '2025-02-23 12:00:00'),
(23, '2025-02-23 18:30:00'),
(23, '2025-02-24 14:45:00'),
(23, '2025-02-24 21:45:00'),

-- Movie 24
(24, '2025-02-25 14:00:00'),
(24, '2025-02-25 20:00:00'),
(24, '2025-02-26 13:00:00'),
(24, '2025-02-26 22:00:00'),

-- Movie 25
(25, '2025-02-27 12:00:00'),
(25, '2025-02-27 18:00:00'),
(25, '2025-02-28 15:00:00'),
(25, '2025-02-28 21:30:00'),

-- Movie 26
(26, '2025-03-01 11:15:00'),
(26, '2025-03-01 17:40:00'),
(26, '2025-03-02 14:20:00'),
(26, '2025-03-02 22:00:00'),

-- Movie 27
(27, '2025-03-03 13:00:00'),
(27, '2025-03-03 19:00:00'),
(27, '2025-03-04 15:30:00'),
(27, '2025-03-04 21:00:00'),

-- Movie 28
(28, '2025-03-05 12:00:00'),
(28, '2025-03-05 18:20:00'),
(28, '2025-03-06 14:30:00'),
(28, '2025-03-06 20:45:00'),

-- Movie 29
(29, '2025-03-07 14:00:00'),
(29, '2025-03-07 20:30:00'),
(29, '2025-03-08 13:40:00'),
(29, '2025-03-08 23:00:00'),

-- Movie 30
(30, '2025-03-09 12:00:00'),
(30, '2025-03-09 17:00:00'),
(30, '2025-03-10 15:00:00'),
(30, '2025-03-10 22:00:00');

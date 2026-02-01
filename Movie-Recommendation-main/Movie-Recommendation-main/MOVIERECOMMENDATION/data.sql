CREATE DATABASE movie_recommendation;

USE movie_recommendation;

CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    language VARCHAR(50) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_year INT,
    rating FLOAT
);

INSERT INTO movies (title, language, genre, release_year, rating) VALUES
-- Existing Movies
('Inception', 'English', 'Sci-Fi', 2010, 8.8),
('Parasite', 'Korean', 'Thriller', 2019, 8.6),
('Dangal', 'Hindi', 'Sports', 2016, 8.4),
('Spirited Away', 'Japanese', 'Animation', 2001, 8.6),
('Interstellar', 'English', 'Sci-Fi', 2014, 8.7),
('3 Idiots', 'Hindi', 'Comedy', 2009, 8.4),
('Train to Busan', 'Korean', 'Horror', 2016, 7.6),

-- Additional 100 Movies (Hindi, English, Korean, Japanese) (Comedy, Thriller, Sports, Sci-Fi)

-- Hindi Comedy
('Hera Pheri', 'Hindi', 'Comedy', 2000, 8.2),
('Munna Bhai MBBS', 'Hindi', 'Comedy', 2003, 8.1),
('Dhamaal', 'Hindi', 'Comedy', 2007, 7.4),
('Chupke Chupke', 'Hindi', 'Comedy', 1975, 8.3),
('Andaz Apna Apna', 'Hindi', 'Comedy', 1994, 8.2),
('Welcome', 'Hindi', 'Comedy', 2007, 7.0),
('Hungama', 'Hindi', 'Comedy', 2003, 7.6),
('Fukrey', 'Hindi', 'Comedy', 2013, 7.4),
('Chennai Express', 'Hindi', 'Comedy', 2013, 6.0),
('Housefull', 'Hindi', 'Comedy', 2010, 5.5),

-- Hindi Thriller
('Drishyam', 'Hindi', 'Thriller', 2015, 8.2),
('Kahaani', 'Hindi', 'Thriller', 2012, 8.1),
('Badla', 'Hindi', 'Thriller', 2019, 7.8),
('A Wednesday', 'Hindi', 'Thriller', 2008, 8.1),
('Talaash', 'Hindi', 'Thriller', 2012, 7.2),
('Race', 'Hindi', 'Thriller', 2008, 6.7),
('Article 15', 'Hindi', 'Thriller', 2019, 8.2),
('Raazi', 'Hindi', 'Thriller', 2018, 7.7),
('Special 26', 'Hindi', 'Thriller', 2013, 8.0),
('Ittefaq', 'Hindi', 'Thriller', 2017, 7.1),

-- Hindi Sports
('Chak De! India', 'Hindi', 'Sports', 2007, 8.2),
('Bhaag Milkha Bhaag', 'Hindi', 'Sports', 2013, 8.2),
('MS Dhoni: The Untold Story', 'Hindi', 'Sports', 2016, 7.9),
('Lagaan', 'Hindi', 'Sports', 2001, 8.1),
('Iqbal', 'Hindi', 'Sports', 2005, 8.2),
('Paan Singh Tomar', 'Hindi', 'Sports', 2012, 8.2),
('Gold', 'Hindi', 'Sports', 2018, 7.3),
('83', 'Hindi', 'Sports', 2021, 7.5),
('Jersey', 'Hindi', 'Sports', 2022, 7.5),
('Sultan', 'Hindi', 'Sports', 2016, 7.0),

-- Hindi Sci-Fi
('Koi Mil Gaya', 'Hindi', 'Sci-Fi', 2003, 7.1),
('Krrish', 'Hindi', 'Sci-Fi', 2006, 6.4),
('Robot', 'Hindi', 'Sci-Fi', 2010, 7.1),
('2.0', 'Hindi', 'Sci-Fi', 2018, 6.2),
('Tumbbad', 'Hindi', 'Sci-Fi', 2018, 8.2),

-- English Comedy
('The Hangover', 'English', 'Comedy', 2009, 7.7),
('Superbad', 'English', 'Comedy', 2007, 7.6),
('Dumb and Dumber', 'English', 'Comedy', 1994, 7.3),
('Step Brothers', 'English', 'Comedy', 2008, 6.9),
('21 Jump Street', 'English', 'Comedy', 2012, 7.2),
('The Dictator', 'English', 'Comedy', 2012, 6.4),
('Zombieland', 'English', 'Comedy', 2009, 7.6),
('Ace Ventura: Pet Detective', 'English', 'Comedy', 1994, 6.9),
('Hot Fuzz', 'English', 'Comedy', 2007, 7.8),
('Tropic Thunder', 'English', 'Comedy', 2008, 7.0),

-- English Thriller
('Gone Girl', 'English', 'Thriller', 2014, 8.1),
('Shutter Island', 'English', 'Thriller', 2010, 8.2),
('Prisoners', 'English', 'Thriller', 2013, 8.1),
('Se7en', 'English', 'Thriller', 1995, 8.6),
('Fight Club', 'English', 'Thriller', 1999, 8.8),

-- English Sports
('Rocky', 'English', 'Sports', 1976, 8.1),
('Million Dollar Baby', 'English', 'Sports', 2004, 8.1),
('The Blind Side', 'English', 'Sports', 2009, 7.6),
('Remember the Titans', 'English', 'Sports', 2000, 7.8),
('Coach Carter', 'English', 'Sports', 2005, 7.3),

-- English Sci-Fi
('Dune', 'English', 'Sci-Fi', 2021, 8.1),
('The Matrix', 'English', 'Sci-Fi', 1999, 8.7),
('Avatar', 'English', 'Sci-Fi', 2009, 7.8),
('Blade Runner 2049', 'English', 'Sci-Fi', 2017, 8.0),
('Star Wars: A New Hope', 'English', 'Sci-Fi', 1977, 8.6),

-- Korean Comedy
('Extreme Job', 'Korean', 'Comedy', 2019, 7.1),
('Sunny', 'Korean', 'Comedy', 2011, 7.8),
('Miracle in Cell No. 7', 'Korean', 'Comedy', 2013, 8.1),

-- Korean Thriller
('Oldboy', 'Korean', 'Thriller', 2003, 8.4),
('Memories of Murder', 'Korean', 'Thriller', 2003, 8.1),

-- Japanese Comedy
('My Neighbor Totoro', 'Japanese', 'Comedy', 1988, 8.2),

-- Japanese Thriller
('Battle Royale', 'Japanese', 'Thriller', 2000, 7.6),

-- Japanese Sci-Fi
('Akira', 'Japanese', 'Sci-Fi', 1988, 8.0),
('Ghost in the Shell', 'Japanese', 'Sci-Fi', 1995, 8.0);
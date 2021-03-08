CREATE DATABASE survey_page;
USE survey_page;

CREATE TABLE fcc_user (
    fcc_user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    email VARCHAR(100),
    age INT,
    occupation VARCHAR(20)
);

CREATE TABLE fcc_user_feedback (
    fcc_feedback INT PRIMARY KEY AUTO_INCREMENT,
    fcc_user_id INT,
    fcc_recommend INT,
    fcc_like_most INT,
    fcc_future_improve VARCHAR(300),
    fcc_suggestion VARCHAR(1000),
    FOREIGN KEY (fcc_user_id) REFERENCES fcc_user(fcc_user_id)
);

CREATE TABLE fcc_feedback_recommend (
    recommend_id INT PRIMARY KEY AUTO_INCREMENT,
    response VARCHAR(30),
    rating INT
);

CREATE TABLE fcc_feedback_likemost (
    likemost_id INT PRIMARY KEY AUTO_INCREMENT,
    response VARCHAR(30),
    rating INT
);

INSERT INTO fcc_feedback_recommend(response, rating) VALUES('definitely', 0);
INSERT INTO fcc_feedback_recommend(response, rating) VALUES('maybe', 0);
INSERT INTO fcc_feedback_recommend(response, rating) VALUES('not sure', 0);

INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Front-End Projects', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Back-End Projects', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Data Visualization', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Challenges', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Open Source Community', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Gitter Help Rooms', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Videos', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('City Meetups', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Wiki', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Forum', 0);
INSERT INTO fcc_feedback_likemost(response, rating) VALUES('Additional Courses', 0);
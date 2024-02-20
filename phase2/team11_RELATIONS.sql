DROP TABLE IF EXISTS Tips;
DROP TABLE IF EXISTS BusinessAttributes;
DROP TABLE IF EXISTS BusinessCategories;
DROP TABLE IF EXISTS Friends;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Business;

CREATE TABLE Users (
    average_stars FLOAT,
    cool_score INT,
    num_fans INT,
    funny_score INT,
    name VARCHAR,
    tip_count INT,
    useful_score INT,
    user_id VARCHAR,
    yelping_since TIMESTAMP,
    PRIMARY KEY (user_id)
);

CREATE TABLE Friends (
    user_id VARCHAR,
    friend_id VARCHAR,
    PRIMARY KEY (user_id, friend_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (friend_id) REFERENCES Users(user_id)
);

CREATE TABLE Business (
    business_id VARCHAR,
    name VARCHAR,
    street_address VARCHAR,
    city VARCHAR,
    state CHAR(2),
    zipcode VARCHAR,
    latitude FLOAT,
    longitude FLOAT,
    star_rating FLOAT,
    num_tips INT,
    is_open INT,
    PRIMARY KEY (business_id)
);

CREATE TABLE BusinessCategories (
    business_id VARCHAR,
    category_name VARCHAR,
    PRIMARY KEY (business_id, category_name),
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);

CREATE TABLE BusinessAttributes (
    business_id VARCHAR,
    attribute_name VARCHAR,
    value VARCHAR,
    PRIMARY KEY (business_id, attribute_name),
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);

CREATE TABLE Tips (
    business_id VARCHAR,
    user_id VARCHAR,
    tipdate TIMESTAMP,
    tip_text VARCHAR,
    likes INT,
    PRIMARY KEY (business_id, user_id, tipdate),
    FOREIGN KEY (business_id) REFERENCES Business(business_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
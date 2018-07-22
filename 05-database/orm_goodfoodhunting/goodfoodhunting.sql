CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  image_url VARCHAR(400)
);

INSERT INTO dishes (name, image_url) VALUES ('birthday cake', 'http://happybirthdaycakepic.com/pic-preview/Clint/107/nuts-birthday-cake-for-Clint.');

INSERT INTO dishes (name, image_url) VALUES ('pudding', 'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/10/cherry-chocolate-pudding.jpg?itok=dNPboDsi');

INSERT INTO dishes (name, image_url) VALUES ('bbq ribs', 'https://americaschoicegourmet.com/wp-content/uploads/2018/05/ribs-2.jpg');

CREATE TABLE comments (
  id SERIAL4 PRIMARY KEY,
  content TEXT NOT NULL,
  dish_id INTEGER NOT NULL,
  FOREIGN KEY (dish_id) REFERENCES dishes (id) ON DELETE RESTRICT
);

insert into comments (content, dish_id) values
('yum', 2);

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(300),
  password_digest VARCHAR(400)
);
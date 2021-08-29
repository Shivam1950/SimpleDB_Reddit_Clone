CREATE TABLE User (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  last_name varchar(255),
  created_date datetime NOT NULL,
  PRIMARY KEY (user_id),
  UNIQUE KEY id (user_id)
);

CREATE TABLE Post (
  post_id int(11) NOT NULL AUTO_INCREMENT,
  created_date datetime NOT NULL,
  post varchar(1000) CHARACTER SET utf8 NOT NULL,
  user_id int(11),
  PRIMARY KEY (post_id),
  FOREIGN KEY (user_id) REFERENCES User(user_id),
  UNIQUE KEY id (post_id)
);

CREATE TABLE Comment (
  comment_id int(11) NOT NULL AUTO_INCREMENT,
  comment varchar(1000) CHARACTER SET utf8 NOT NULL,
  user_id int(11),
  post_id int(11),
  created_date datetime NOT NULL,
  modified_date datetime NOT NULL,
  upvote int(11) NOT NULL,
  downvote int(11) NOT NULL,
  PRIMARY KEY (comment_id),
  FOREIGN KEY (user_id) REFERENCES User(user_id),
  FOREIGN KEY (post_id) REFERENCES Post(post_id),
  UNIQUE KEY id (comment_id)
);

CREATE TABLE ParentChildComment (
  parentComment_id int(11),
  childComment_id int(11),
  FOREIGN KEY (parentComment_id) REFERENCES Comment(comment_id),
  FOREIGN KEY (childComment_id) REFERENCES Comment(comment_id)
);

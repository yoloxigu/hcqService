CREATE TABLE user_account (
  id INT(10) not null auto_increment,
  name CHAR(18) not null,
  password VARCHAR(30) not null,
  type TINYINT(1) default 0,
  level TINYINT(2) default 0,
  email VARCHAR(50) not null,
  primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE user_info (
  id INT(10) not null auto_increment,
  account_id INT(10) not null,
  gender TINYINT(1) default -1,
  age SMALLINT(3),
  primary key(id),
  CONSTRAINT FK_account foreign key(account_id) references user_account(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
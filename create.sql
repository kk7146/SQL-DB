CREATE TABLE show_grade (
  code NUMBER(1) PRIMARY KEY,
  grade VARCHAR2(5) CHECK (grade='정6품' or grade='정5품' or grade='정4품' or grade='정3품' or grade='정2품' or grade='정1품')
);

CREATE TABLE usr (
  user_id VARCHAR2(20) PRIMARY KEY,
  passwrd VARCHAR2(20) NOT NULL,
  user_name VARCHAR2(100) NOT NULL,
  phone_number VARCHAR2(13) UNIQUE NOT NULL,
  profile VARCHAR2(255),
  nickname VARCHAR2(100) UNIQUE NOT NULL,
  gender CHAR(1) NOT NULL CHECK (gender='M' or gender='F'),
  email VARCHAR2(255) UNIQUE NOT NULL,
  birth DATE NOT NULL,
  state VARCHAR2(5) DEFAULT 'E' CHECK (state='E' or state='D'),
  score INT DEFAULT 0 CHECK (score >= 0),
  grade NUMBER(3)
);
ALTER TABLE usr ADD FOREIGN KEY (grade) REFERENCES show_grade (code);

CREATE TABLE general_usr (
  user_id VARCHAR2(20) PRIMARY KEY,
  point INT DEFAULT 0 CHECK (point >= 0),
  basic_addr VARCHAR2(255) NOT NULL
);
ALTER TABLE general_usr ADD FOREIGN KEY (user_id) REFERENCES usr (user_id);

CREATE TABLE designer_usr (
  user_id VARCHAR2(20) PRIMARY KEY,
  ret_addr VARCHAR2(255) NOT NULL,
  account VARCHAR2(30) NOT NULL,
  career_cert VARCHAR2(255) NOT NULL
);
ALTER TABLE designer_usr ADD FOREIGN KEY (user_id) REFERENCES usr (user_id);

CREATE TABLE follow (
  usr_sub VARCHAR2(20),
  usr_ob VARCHAR2(20),
  follow_date DATE DEFAULT SYSDATE,
  PRIMARY KEY (usr_sub, usr_ob)
);
ALTER TABLE follow ADD FOREIGN KEY (usr_sub) REFERENCES general_usr (user_id);
ALTER TABLE follow ADD FOREIGN KEY (usr_ob) REFERENCES designer_usr (user_id);



CREATE TABLE pt_category (
  pt_id NUMBER(1) PRIMARY KEY,
  pt_type VARCHAR2(20) CHECK (pt_type='일상' or pt_type='고민' or pt_type='궁금증' or pt_type='패션' or pt_type='지식 및 제작 노하우' or pt_type='기타')
);

CREATE TABLE post (
  pt_num NUMBER(8) PRIMARY KEY,
  pt_title VARCHAR2(255) NOT NULL,
  pt_category_id NUMBER(1) NOT NULL,
  pt_writing VARCHAR2(3000) NOT NULL,
  pt_photo VARCHAR2(4000),
  pt_date DATE DEFAULT SYSDATE,
  pt_likes INT NOT NULL,
  pt_views INT NOT NULL
);
ALTER TABLE post ADD FOREIGN KEY (pt_category_id) REFERENCES pt_category (pt_id);

CREATE TABLE post_writing (
  user_id VARCHAR2(20),
  pt_num NUMBER(8),
  PRIMARY KEY (user_id, pt_num)
);
ALTER TABLE post_writing ADD FOREIGN KEY (user_id) REFERENCES usr (user_id);
ALTER TABLE post_writing ADD FOREIGN KEY (pt_num) REFERENCES post (pt_num);

CREATE TABLE post_comment (
  user_id VARCHAR2(20),
  pt_num NUMBER(8),
  com_date DATE DEFAULT SYSDATE,
  com_content VARCHAR2(400) NOT NULL,
  PRIMARY KEY (user_id, pt_num, com_date)
);
ALTER TABLE post_comment ADD FOREIGN KEY (user_id) REFERENCES usr (user_id);
ALTER TABLE post_comment ADD FOREIGN KEY (pt_num) REFERENCES post (pt_num);

CREATE TABLE post_like_in (
  user_id VARCHAR2(20),
  pt_num NUMBER(8),
  PRIMARY KEY (user_id, pt_num)
);
ALTER TABLE post_like_in ADD FOREIGN KEY (user_id) REFERENCES usr (user_id);
ALTER TABLE post_like_in ADD FOREIGN KEY (pt_num) REFERENCES post (pt_num);



CREATE TABLE design (
  design_num NUMBER(8) PRIMARY KEY,
  design_name VARCHAR2(255) NOT NULL,
  design_price NUMBER(10) DEFAULT 0,
  sketch VARCHAR2(4000) NOT NULL,
  sketch_explain VARCHAR2(3000) NOT NULL,
  trade_state VARCHAR2(50) NOT NULL CHECK (trade_state='판매중' or trade_state='판매완료'),
  design_views INT DEFAULT 0,
  design_date DATE DEFAULT SYSDATE,
  design_likes INT DEFAULT 0
);

CREATE TABLE design_sign_up (
  design_num NUMBER(8),
  user_id VARCHAR2(20),
  in_design_date DATE DEFAULT SYSDATE,
  design_sale_state VARCHAR2(4) NOT NULL CHECK (design_sale_state='Y' or design_sale_state='N'),
  PRIMARY KEY (design_num, user_id)
);
ALTER TABLE design_sign_up ADD FOREIGN KEY (design_num) REFERENCES design (design_num);
ALTER TABLE design_sign_up ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);

CREATE TABLE design_buy (
  design_num NUMBER(8),
  user_id VARCHAR2(20),
  buy_design_date DATE DEFAULT SYSDATE,
  PRIMARY KEY (design_num, user_id, buy_design_date)
);
ALTER TABLE design_buy ADD FOREIGN KEY (design_num) REFERENCES design (design_num);
ALTER TABLE design_buy ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);

CREATE TABLE design_like_in (
  design_num NUMBER(8),
  user_id VARCHAR2(20),
  PRIMARY KEY (design_num, user_id)
);
ALTER TABLE design_like_in ADD FOREIGN KEY (design_num) REFERENCES design (design_num);
ALTER TABLE design_like_in ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);



CREATE TABLE showroom (
  show_num NUMBER(8) PRIMARY KEY,
  show_name VARCHAR2(255) NOT NULL,
  show_place VARCHAR2(255) NOT NULL,
  show_period VARCHAR2(255) NOT NULL,
  min_res_time NUMBER(1) NOT NULL CHECK (min_res_time >= 1 and min_res_time <= 8),
  max_res_time NUMBER(1) NOT NULL CHECK (max_res_time >= 1 and max_res_time <= 8),
  user_id VARCHAR2(20)
);
ALTER TABLE showroom ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);

CREATE TABLE reservation_time (
  show_num NUMBER(8),
  res_day VARCHAR2(18) UNIQUE,
  PRIMARY KEY (show_num, res_day)
);
ALTER TABLE reservation_time ADD FOREIGN KEY (show_num) REFERENCES showroom (show_num);

CREATE TABLE reserve (
  user_id VARCHAR2(20),
  show_num NUMBER(8),
  res_now_day TIMESTAMP,
  res_day VARCHAR2(18),
  progress VARCHAR2(50) DEFAULT '예약전' CHECK (progress='예약전' or progress='예약후'),
  PRIMARY KEY (user_id, show_num, res_now_day)
);
ALTER TABLE reserve ADD FOREIGN KEY (show_num) REFERENCES showroom (show_num);
ALTER TABLE reserve ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);
ALTER TABLE reserve ADD FOREIGN KEY (res_day) REFERENCES reservation_time (res_day);



CREATE TABLE designer_page (
  page_num NUMBER(8) PRIMARY KEY,
  page_info VARCHAR2(500)
);

CREATE TABLE news (
  news_num NUMBER(8) PRIMARY KEY,
  news_title VARCHAR2(255) NOT NULL,
  news_board VARCHAR2(4000) NOT NULL,
  news_img VARCHAR2(4000),
  news DATE DEFAULT SYSDATE,
  news_like_count INT DEFAULT 0,
  news_view_count NUMBER(10) DEFAULT 0
);

CREATE TABLE news_write (
  user_id VARCHAR2(20),
  news_num NUMBER(8),
  PRIMARY KEY (user_id, news_num)
);
ALTER TABLE news_write ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);
ALTER TABLE news_write ADD FOREIGN KEY (news_num) REFERENCES news (news_num);

CREATE TABLE news_register (
  news_num NUMBER(8),
  page_num NUMBER(8),
  PRIMARY KEY (news_num, page_num)
);
ALTER TABLE news_register ADD FOREIGN KEY (news_num) REFERENCES news (news_num);
ALTER TABLE news_register ADD FOREIGN KEY (page_num) REFERENCES designer_page (page_num);

CREATE TABLE news_like (
  user_id VARCHAR2(20),
  news_num NUMBER(8),
  PRIMARY KEY (user_id, news_num)
);
ALTER TABLE news_like ADD FOREIGN KEY (user_id) REFERENCES usr (user_id);
ALTER TABLE news_like ADD FOREIGN KEY (news_num) REFERENCES news (news_num);

CREATE TABLE news_comment_write (
  user_id VARCHAR2(20),
  news_num NUMBER(8),
  write_now_day TIMESTAMP DEFAULT SYSDATE,
  news_comment VARCHAR2(400) NOT NULL,
  PRIMARY KEY (user_id, news_num, write_now_day)
);
ALTER TABLE news_comment_write ADD FOREIGN KEY (user_id) REFERENCES usr (user_id);
ALTER TABLE news_comment_write ADD FOREIGN KEY (news_num) REFERENCES news (news_num);

CREATE TABLE competition (
  comp_code VARCHAR2(8) PRIMARY KEY,
  comp_name VARCHAR2(50) UNIQUE NOT NULL, 
  comp_sub VARCHAR2(100) NOT NULL,
  start_day DATE NOT NULL,
  end_day DATE NOT NULL,
  schedule VARCHAR2(3000) NOT NULL,
  condition VARCHAR2(1000) NOT NULL,
  host VARCHAR2(20) NOT NULL,
  management VARCHAR2(20) NOT NULL,
  award VARCHAR2(4000) NOT NULL,
  manager_name VARCHAR2(30) NOT NULL,
  manager_phone CHAR(13) NOT NULL,
  manager_email VARCHAR2(30) NOT NULL,
  like_num INT DEFAULT 0
);

CREATE TABLE sponsor (
  comp_code VARCHAR2(8),
  agency_name VARCHAR2(50),
  PRIMARY KEY (comp_code, agency_name)
);
ALTER TABLE sponsor ADD FOREIGN KEY (comp_code) REFERENCES competition (comp_code);

CREATE TABLE recriutment (
  recruit_code VARCHAR2(13) PRIMARY KEY,
  title VARCHAR2(50) NOT NULL,
  start_day DATE NOT NULL,
  end_day DATE NOT NULL,
  qualification VARCHAR2(255) NOT NULL,
  recruit_headcount INT DEFAULT 1,
  now_headcount INT NOT NULL,
  like_num INT DEFAULT 0
);

CREATE TABLE like_comp (
  user_id VARCHAR2(20),
  comp_code VARCHAR2(8),
  PRIMARY KEY (user_id, comp_code)
);
ALTER TABLE like_comp ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);
ALTER TABLE like_comp ADD FOREIGN KEY (comp_code) REFERENCES competition (comp_code);

CREATE TABLE write_recruit (
  recruit_code VARCHAR2(13) PRIMARY KEY,
  user_id VARCHAR2(20)
);
ALTER TABLE write_recruit ADD FOREIGN KEY (recruit_code) REFERENCES recriutment (recruit_code);
ALTER TABLE write_recruit ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);

CREATE TABLE upload_recruit (
  comp_code VARCHAR2(8),
  recruit_code VARCHAR2(13),
  PRIMARY KEY (comp_code, recruit_code)
);
ALTER TABLE upload_recruit ADD FOREIGN KEY (comp_code) REFERENCES competition (comp_code);
ALTER TABLE upload_recruit ADD FOREIGN KEY (recruit_code) REFERENCES recriutment (recruit_code);

CREATE TABLE like_recruit (
  user_id VARCHAR2(20),
  recruit_code VARCHAR2(13),
  PRIMARY KEY (user_id, recruit_code)
);
ALTER TABLE like_recruit ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);
ALTER TABLE like_recruit ADD FOREIGN KEY (recruit_code) REFERENCES recriutment (recruit_code);

CREATE TABLE app_join (
  user_id VARCHAR2(20),
  recruit_code VARCHAR2(13),
  main_part VARCHAR2(255),
  approval VARCHAR2(10) NOT NULL CHECK (approval='승인중' or approval='승인완료' or approval='승인거부'),
  PRIMARY KEY (user_id, recruit_code)
);
ALTER TABLE app_join ADD FOREIGN KEY (recruit_code) REFERENCES recriutment (recruit_code);
ALTER TABLE app_join ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);



CREATE TABLE product (
  prod_num NUMBER(8) PRIMARY KEY,
  prod_name VARCHAR2(50) NOT NULL,
  main_img VARCHAR2(4000) NOT NULL,
  sub_img VARCHAR2(4000) NOT NULL,
  explain VARCHAR2(255) NOT NULL,
  prod_day DATE DEFAULT SYSDATE,
  prod_size VARCHAR2(100) NOT NULL,
  prod_color VARCHAR2(50) NOT NULL,
  prod_amount NUMBER(3) NOT NULL CHECK (prod_amount >= 0),
  kind VARCHAR2(50) NOT NULL CHECK (kind='전통 한복' or kind='생활 한복' or kind='아동 한복' or kind='결혼 한복' or kind='캐릭터 한복' or kind='가족 한복' or kind='액세서리'),
  prime_price NUMBER(7) NOT NULL CHECK (prime_price >= 0),
  sell_price NUMBER(7) NOT NULL CHECK (sell_price >= 0),
  sell_state VARCHAR2(50) CHECK (sell_state='판매중' or sell_state='품절'),
  sales_volume NUMBER(3) NOT NULL,
  like_number NUMBER(3) NOT NULL,
  user_id VARCHAR2(20)
);
ALTER TABLE product ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);

CREATE TABLE keyword (
  prod_num NUMBER(8),
  word VARCHAR2(50),
  PRIMARY KEY (prod_num, word)
);
ALTER TABLE keyword ADD FOREIGN KEY (prod_num) REFERENCES product (prod_num);

CREATE TABLE product_like (
  user_id VARCHAR2(20),
  prod_num NUMBER(8),
  PRIMARY KEY (user_id, prod_num)
);
ALTER TABLE product_like ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);
ALTER TABLE product_like ADD FOREIGN KEY (prod_num) REFERENCES product (prod_num);

CREATE TABLE review_write (
  user_id VARCHAR2(20),
  prod_num NUMBER(8),
  day DATE DEFAULT SYSDATE,
  star_rating FLOAT NOT NULL CHECK( star_rating >= 0  and star_rating <= 5),
  str_letter VARCHAR2(255),
  rev_img VARCHAR2(4000),
  PRIMARY KEY (user_id, prod_num)
);
ALTER TABLE review_write ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);
ALTER TABLE review_write ADD FOREIGN KEY (prod_num) REFERENCES product (prod_num);



CREATE TABLE delivery_info (
  user_id VARCHAR2(20),
  addr VARCHAR2(100),
  recipient VARCHAR2(30) NOT NULL,
  del_request VARCHAR2(100),
  PRIMARY KEY (user_id, addr)
);
ALTER TABLE delivery_info ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);

CREATE TABLE payment_type (
  code NUMBER(1) PRIMARY KEY,
  pay_type VARCHAR2(16) NOT NULL CHECK (pay_type='계좌이체' or pay_type='카드결제' or pay_type='무통장 입금' or pay_type='페이결제' or pay_type='휴대폰소액결제')
);

CREATE TABLE purchase_state (
  code NUMBER(1) PRIMARY KEY,
  pur_state VARCHAR2(8) DEFAULT('구매완료') CHECK (pur_state='구매완료' or pur_state='취소요청' or pur_state='교환요청' or pur_state='반품요청' or pur_state='환불요청')
);

CREATE TABLE prod_purchase (
  pur_id INT PRIMARY KEY,
  user_id VARCHAR2(20),
  prod_num NUMBER(8),
  pur_date DATE DEFAULT SYSDATE,
  quantity NUMBER(3) DEFAULT 1,
  delivery_pay NUMBER(5) NOT NULL CHECK(delivery_pay>=0),
  apply_point NUMBER(10) NOT NULL CHECK(apply_point>=0),
  pay_amount NUMBER(10) NOT NULL CHECK(pay_amount>=0),
  pay_type NUMBER(1),
  pur_state NUMBER(1)
);
ALTER TABLE prod_purchase ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);
ALTER TABLE prod_purchase ADD FOREIGN KEY (prod_num) REFERENCES product (prod_num);
ALTER TABLE prod_purchase ADD FOREIGN KEY (pay_type) REFERENCES payment_type (code);
ALTER TABLE prod_purchase ADD FOREIGN KEY (pur_state) REFERENCES purchase_state (code);

CREATE TABLE put_in_cart (
  user_id VARCHAR2(20),
  prod_num NUMBER(8),
  quantity NUMBER(2) DEFAULT 1,
  put_date DATE DEFAULT SYSDATE,
  PRIMARY KEY (user_id, prod_num)
);
ALTER TABLE put_in_cart ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);
ALTER TABLE put_in_cart ADD FOREIGN KEY (prod_num) REFERENCES product (prod_num);

CREATE TABLE request (
  req_id NUMBER(10) PRIMARY KEY,
  user_id VARCHAR2(20),
  prod_num NUMBER(8),
  req_date DATE DEFAULT SYSDATE,
  req_cont VARCHAR2(200) NOT NULL
);
ALTER TABLE request ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);
ALTER TABLE request ADD FOREIGN KEY (prod_num) REFERENCES product (prod_num);

CREATE TABLE purchase_cancel (
  cancel_id NUMBER(10) PRIMARY KEY,
  user_id VARCHAR2(20),
  prod_num NUMBER(8),
  cancel_date DATE DEFAULT SYSDATE,
  reason VARCHAR2(200) NOT NULL
);
ALTER TABLE purchase_cancel ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);
ALTER TABLE purchase_cancel ADD FOREIGN KEY (prod_num) REFERENCES product (prod_num);



CREATE TABLE fashinshow (
  fs_code VARCHAR2(10) PRIMARY KEY,
  fs_name VARCHAR2(50) UNIQUE NOT NULL,
  loc VARCHAR2(80) NOT NULL,
  hold_day DATE NOT NULL,
  start_time timestamp NOT NULL,
  end_time timestamp NOT NULL,
  now_headcount INT,
  min_headcount INT DEFAULT 10 CHECK (min_headcount >= 10 and min_headcount <= 3000),
  max_headcount INT DEFAULT 10 CHECK (max_headcount >= 10 and max_headcount <= 3000),
  fee INT DEFAULT 0,
  like_num INT DEFAULT 0
);

CREATE TABLE designer_team (
  team_code VARCHAR2(14) PRIMARY KEY,
  team_name VARCHAR2(20) UNIQUE NOT NULL,
  attend_category CHAR(8) NOT NULL CHECK (attend_category='일반참가' or attend_category='연합참가'),
  dressed_up_num INT NOT NULL,
  concept VARCHAR2(3000) NOT NULL,
  fs_code VARCHAR2(10),
  approval VARCHAR2(8) NOT NULL CHECK (approval='승인중' or approval='승인완료' or approval='승인거부')
);
ALTER TABLE designer_team ADD FOREIGN KEY (fs_code) REFERENCES fashinshow (fs_code);

CREATE TABLE par_brand (
  team_code VARCHAR2(14),
  brand_name VARCHAR2(15),
  PRIMARY KEY (team_code, brand_name)
);
ALTER TABLE par_brand ADD FOREIGN KEY (team_code) REFERENCES designer_team (team_code);

CREATE TABLE booth (
  booth_code VARCHAR2(15) PRIMARY KEY,
  booth_name VARCHAR2(50) NOT NULL,
  booth_sub VARCHAR2(255) NOT NULL,
  manager_name VARCHAR2(30) NOT NULL,
  manager_phone CHAR(13) NOT NULL,
  manager_email VARCHAR2(30) NOT NULL,
  planning VARCHAR2(4000) NOT NULL,
  fs_code VARCHAR2(10),
  team_code VARCHAR2(14)
);
ALTER TABLE booth ADD FOREIGN KEY (fs_code) REFERENCES fashinshow (fs_code);
ALTER TABLE booth ADD FOREIGN KEY (team_code) REFERENCES designer_team (team_code);

CREATE TABLE like_fs (
  user_id VARCHAR2(20),
  fs_code VARCHAR2(10),
  PRIMARY KEY (user_id, fs_code)
);
ALTER TABLE like_fs ADD FOREIGN KEY (user_id) REFERENCES usr (user_id);
ALTER TABLE like_fs ADD FOREIGN KEY (fs_code) REFERENCES fashinshow (fs_code);

CREATE TABLE interest_field (
  interest_code NUMBER(3) PRIMARY KEY,
  field VARCHAR2(8)
);

CREATE TABLE normal_par_f (
  user_id VARCHAR2(20),
  fs_code VARCHAR2(10),
  interest_code NUMBER(3),
  approval  VARCHAR2(8) NOT NULL CHECK (approval='승인중' or approval='승인완료' or approval='승인거부'),
  PRIMARY KEY (user_id, fs_code)
);
ALTER TABLE normal_par_f ADD FOREIGN KEY (interest_code) REFERENCES interest_field (interest_code);
ALTER TABLE normal_par_f ADD FOREIGN KEY (user_id) REFERENCES general_usr (user_id);
ALTER TABLE normal_par_f ADD FOREIGN KEY (fs_code) REFERENCES fashinshow (fs_code);

CREATE TABLE belong_team (
  user_id VARCHAR2(20),
  team_code VARCHAR2(14),
  approval VARCHAR2(8) NOT NULL CHECK (approval='승인중' or approval='승인완료' or approval='승인거부'),
  PRIMARY KEY (user_id, team_code)
);
ALTER TABLE belong_team ADD FOREIGN KEY (user_id) REFERENCES designer_usr (user_id);
ALTER TABLE belong_team ADD FOREIGN KEY (team_code) REFERENCES designer_team (team_code);

CREATE TABLE reg_for_f (
  prod_num NUMBER(10),
  team_code VARCHAR2(14),
  PRIMARY KEY (prod_num, team_code)
);
ALTER TABLE reg_for_f ADD FOREIGN KEY (prod_num) REFERENCES product (prod_num);
ALTER TABLE reg_for_f ADD FOREIGN KEY (team_code) REFERENCES designer_team (team_code);

CREATE INDEX prod_name_idx ON product(prod_name);
CREATE INDEX end_day_idx ON competition(end_day);
CREATE INDEX host_idx ON competition(host);
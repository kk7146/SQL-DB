-- show_grade 릴레이션에 데이터 삽입
INSERT INTO show_grade VALUES (1, '정6품');
INSERT INTO show_grade VALUES (2, '정5품');
INSERT INTO show_grade VALUES (3, '정4품');
INSERT INTO show_grade VALUES (4, '정3품');
INSERT INTO show_grade VALUES (5, '정2품');
INSERT INTO show_grade VALUES (6, '정1품');

-- usr 릴레이션에 데이터 삽입
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user01', 'pass01', 'User Name 1', '010-0000-0001', 'Profile 1', 'Nickname1', 'M', 'user01@example.com', DATE '1990-01-01', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user02', 'pass02', 'User Name 2', '010-0000-0002', 'Profile 2', 'Nickname2', 'F', 'user02@example.com', DATE '1990-02-02', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user03', 'pass03', 'User Name 3', '010-0000-0003', 'Profile 3', 'Nickname3', 'M', 'user03@example.com', DATE '1991-03-03', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user04', 'pass04', 'User Name 4', '010-0000-0004', 'Profile 4', 'Nickname4', 'F', 'user04@example.com', DATE '1992-04-04', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user05', 'pass05', 'User Name 5', '010-0000-0005', 'Profile 5', 'Nickname5', 'M', 'user05@example.com', DATE '1993-05-05', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user06', 'pass06', 'User Name 6', '010-0000-0006', 'Profile 6', 'Nickname6', 'F', 'user06@example.com', DATE '1994-06-06', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user07', 'pass07', 'User Name 7', '010-0000-0007', 'Profile 7', 'Nickname7', 'M', 'user07@example.com', DATE '1995-07-07', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user08', 'pass08', 'User Name 8', '010-0000-0008', 'Profile 8', 'Nickname8', 'F', 'user08@example.com', DATE '1996-08-08', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user09', 'pass09', 'User Name 9', '010-0000-0009', 'Profile 9', 'Nickname9', 'M', 'user09@example.com', DATE '1997-09-09', 1);
INSERT INTO usr (user_id, passwrd, user_name, phone_number, profile, nickname, gender, email, birth, grade)
	VALUES ('user10', 'pass10', 'User Name 10', '010-0000-0010', 'Profile 10', 'Nickname10', 'F', 'user10@example.com', DATE '1998-10-10', 1);

-- general_usr 릴레이션에 데이터 삽입
INSERT INTO general_usr (user_id, basic_addr)
	VALUES ('user01', 'Address 1');
INSERT INTO general_usr (user_id, basic_addr)
	VALUES ('user02', 'Address 2');
INSERT INTO general_usr (user_id, basic_addr)
	VALUES ('user03', 'Address 3');
INSERT INTO general_usr (user_id, point, basic_addr)
	VALUES ('user04', 4000,'Address 4');
INSERT INTO general_usr (user_id, point, basic_addr)
	VALUES ('user05', 5000,'Address 5');

-- designer_usr 릴레이션에 데이터 삽입
INSERT INTO designer_usr VALUES ('user06', 'Address 6', 'Account 6', 'Career Cert 6');
INSERT INTO designer_usr VALUES ('user07', 'Address 7', 'Account 7', 'Career Cert 7');
INSERT INTO designer_usr VALUES ('user08', 'Address 8', 'Account 8', 'Career Cert 8');
INSERT INTO designer_usr VALUES ('user09', 'Address 9', 'Account 9', 'Career Cert 9');
INSERT INTO designer_usr VALUES ('user10', 'Address 10', 'Account 10', 'Career Cert 10');

-- follow 릴레이션에 데이터 삽입
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user01', 'user06');
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user02', 'user07');
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user03', 'user08');
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user04', 'user09');
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user05', 'user10');
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user02', 'user06');
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user03', 'user06');
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user04', 'user06');
INSERT INTO follow (usr_sub, usr_ob)
	VALUES ('user05', 'user06');



rem 소삭
INSERT INTO pt_category (pt_id, pt_type) VALUES (1, '일상');
INSERT INTO pt_category (pt_id, pt_type) VALUES (2, '고민');
INSERT INTO pt_category (pt_id, pt_type) VALUES (3, '궁금증');
INSERT INTO pt_category (pt_id, pt_type) VALUES (4, '패션');
INSERT INTO pt_category (pt_id, pt_type) VALUES (5, '지식 및 제작 노하우');
INSERT INTO pt_category (pt_id, pt_type) VALUES (6, '기타');

-- 게시물(post): 게시물_고유번호, 제목, 카테고리, 게시글, 첨부_사진, 작성일, 좋아요_수, 조회수
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (1, '이거 디자인 이름 뭐임?', 3, '사진 첨부함', 'what_is_this_design.jpg', DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (2, '배고프다', 6, '점심 추천 좀', NULL, DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (3, '20년차 현역 디자이너의 스케치 노하우', 5, '나는 20년차 디자이너임. 증명은 밑에 사진으로 대체함. 다들 처음 디자인 스케치할 때 어려움이 있다는 걸 많이 느낄거임. 실제로 질문 받은 것들도 많음. 그래서 이렇게 글로 쓰게 됨', 'design_scatch.jpg', DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (4, '내일 소개팅인데 옷 좀 봐줘', 4, '24 남자임. 소개팅 대상은 동갑 여자애.', '소개팅_옷_평가.jpg', DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (5, '내 패션 감각 어떤 것 같음?', 4, '22 여자임. 밑에는 평소 입는 옷임.', '패션_옷_평가.jpg', DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (6, '연애 고민..', 2, '2년 연애했는데, 요즘 여자친구가 짜증도 많이 내고 연락 텀도 줄어듦.. 권태기일까?', NULL, DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (7, '곧 알바 가는데..', 1, '너무 귀찮다. 어떡하지. 과제도 밀려있어서 알바할 시간에 과제하고 싶은데ㅠㅠ', NULL, DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (8, '디자인 평가 좀', 1, '여기 상품들 보다가 나도 디자인해보고 싶어서 좀 스케치 해봤는데 어떤 것 같음?', '디자인평가.jpg', DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (9, '디자이너님들 조언해주세요..', 2, '제 꿈이 여기 있는 사람들처럼 전통 의상 디자이너인데, 부모님이 반대를 하세요. 어떻게 설득하면 좋을까요?', NULL, DEFAULT, 0, 0);
INSERT INTO post (pt_num, pt_title, pt_category_id, pt_writing, pt_photo, pt_date, pt_likes, pt_views) 
	VALUES (10, '내가 사장인데..', 1, '출근하기 싫다. 어떡하지..ㅠㅠ', NULL, DEFAULT, 0, 0);

-- 게시물_작성하다(post_writing): 회원_아이디, 게시물_고유번호
INSERT INTO post_writing (user_id, pt_num) VALUES ('user01', 1);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user02', 2);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user03', 3);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user04', 4);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user05', 5);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user06', 6);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user07', 7);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user08', 8);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user09', 9);
INSERT INTO post_writing (user_id, pt_num) VALUES ('user10', 10);

-- 댓글_작성하다(post_comment): 회원_아이디, 게시물_고유번호, 일자, 댓글_내용
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user10', 1, DEFAULT, '그거 SUN님 페이지 가봐. 거기에 있음.');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user09', 2, DEFAULT, '떡볶이');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user08', 2, DEFAULT, '마라탕');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user07', 3, DEFAULT, '역시 현역은 다르네요..! 많이 배웁니다!');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user06', 4, DEFAULT, '제발 처음이면 무난한 색깔로 가라고.. 공대생이야? 체크무늬는 넣어둬...');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user05', 4, DEFAULT, 'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user04', 5, DEFAULT, '괜찮은 거 같은데? 센스 좋네');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user03', 6, DEFAULT, '여자친구랑 이야기는 해봤어?');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user02', 7, DEFAULT, '그래도 일하면 돈 버잖아~');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user01', 8, DEFAULT, '괜찮네. 조금만 다듬어서 디자인 게시판에 올려봐');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user10', 9, DEFAULT, '디자이너를 위해 노력한 과정이나 결과물이 있다면 그걸 토대로 설득해보는 건 어떨까요?');
INSERT INTO post_comment (user_id, pt_num, com_date, com_content) 
VALUES ('user09', 10, DEFAULT, '사장인 게 부럽다..');

-- 게시물_좋아요_누르다(post_like_in): 회원_아이디, 게시물_고유번호
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user10', 1);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user09', 2);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user08', 3);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user07', 3);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user06', 3);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user05', 3);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user04', 3);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user03', 3);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user02', 5);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user01', 8);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user10', 8);
INSERT INTO post_like_in (user_id, pt_num) VALUES ('user09', 10);



-- 디자인(design): 디자인_고유번호, 디자인_명, 판매가, 스케치_사진, 스케치_설명, 거래_상태, 조회수, 작성일, 좋아요_수
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (1, '모던 아트리움', 50000, 'Modern_Atrium.jpg', '세련된 현대적 감각의 디자인으로, 직선과 곡선을 조화롭게 사용하여 공간을 넓고 고급스럽게 표현합니다.', '판매중', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (2, '미니멀리스트 매직', 60000, 'minimalist_magic.jpg', '불필요한 장식을 배제하고 단순함 속에 깔끔함을 강조한 디자인으로, 기능성과 심미성을 동시에 추구합니다.', '판매중', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (3, '빈티지 엘레강스', 70000, 'Vintage_Elegance.jpg', '클래식한 요소들을 현대적으로 재해석하여 고풍스러우면서도 세련된 분위기를 연출하는 디자인입니다.', '판매완료', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (4, '유니크 패턴', 80000, 'Unique_pattern.jpg', '독창적이고 독특한 패턴을 사용하여 시각적으로 매력적이고 개성 넘치는 디자인을 제공합니다.', '판매중', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (5, '네이처 하모니', 90000, 'Nature_Harmony.jpg', '자연에서 영감을 받은 색상과 텍스처를 사용하여 편안하고 조화로운 느낌을 주는 디자인입니다.', '판매완료', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (6, '퓨처리스틱 드림', 10000, 'Pew_treatment_stick_dream.jpg', '미래지향적인 요소들을 결합하여 혁신적이고 창의적인 분위기를 자아내는 디자인입니다.', '판매중', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (7, '크리에이티브 스플래시', 20000, 'Creative_Splash.jpg', '생동감 있고 활기찬 색상과 형태를 활용하여 에너제틱하고 다이나믹한 디자인을 연출합니다.', '판매중', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (8, '클래식 터치', 15000, 'classic_touch.jpg', '전통적인 디자인 요소를 현대적으로 풀어내어 우아하고 격조 높은 느낌을 주는 디자인입니다..', '판매완료', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (9, '컬러 블렌드', 80000, 'Color_blend.jpg', '다양한 색상들을 조화롭게 배치하여 시각적 아름다움과 감각적인 매력을 동시에 지닌 디자인입니다.', '판매중', 0, DEFAULT, 0);
INSERT INTO design (design_num, design_name, design_price, sketch, sketch_explain, trade_state, design_views, design_date, design_likes) 
	VALUES (10, '심플리시티 블리스', 100000, 'Simplicity_Bliss.jpg', '단순함의 아름다움을 강조한 디자인으로, 깨끗하고 정돈된 분위기를 선사합니다.', '판매완료', 0, DEFAULT, 0);

-- 디자인_등록하다(design_sign_up): 디자인_고유번호, 회원_아이디, 일자, 판매여부
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (1, 'user01', DEFAULT, 'N');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (2, 'user02', DEFAULT, 'N');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (3, 'user03', DEFAULT, 'Y');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (4, 'user04', DEFAULT, 'N');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (5, 'user05', DEFAULT, 'Y');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (6, 'user01', DEFAULT, 'N');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (7, 'user02', DEFAULT, 'N');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (8, 'user03', DEFAULT, 'Y');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (9, 'user04', DEFAULT, 'N');
INSERT INTO design_sign_up (design_num, user_id, in_design_date, design_sale_state) 
	VALUES (10, 'user05', DEFAULT, 'Y');

-- 디자인_구매하다(design_buy): 디자인_고유번호, 회원_아이디, 일자
INSERT INTO design_buy (design_num, user_id, buy_design_date) 
	VALUES (3, 'user06', DEFAULT);
INSERT INTO design_buy (design_num, user_id, buy_design_date) 
	VALUES (5, 'user07', DEFAULT);
INSERT INTO design_buy (design_num, user_id, buy_design_date) 
	VALUES (8, 'user08', DEFAULT);
INSERT INTO design_buy (design_num, user_id, buy_design_date) 
	VALUES (10, 'user09', DEFAULT);

-- 디자인_좋아요_누르다(design_like_in): 디자인_고유번호, 회원_아이디
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (1, 'user06');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (2, 'user07');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (3, 'user08');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (4, 'user09');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (5, 'user10');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (6, 'user10');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (6, 'user09');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (7, 'user09');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (8, 'user09');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (9, 'user10');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (9, 'user06');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (9, 'user07');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (10, 'user08');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (10, 'user09');
INSERT INTO design_like_in (design_num, user_id) 
	VALUES (10, 'user10');



-- showroom 릴레이션에 데이터 삽입
INSERT INTO showroom (show_num, show_name, show_place, show_period, min_res_time, max_res_time, user_id)
	VALUES (1, '로그먼트컨템포러리', '서울특별시 성동구 아차산로1길 25', '2024-03-07 ~ 2024-03-10', 2, 4, 'user06');
INSERT INTO showroom (show_num, show_name, show_place, show_period, min_res_time, max_res_time, user_id)
	VALUES (2, '미닛뮤트', '서울특별시 성동구 연무장길 57 1층', '2024-05-28 ~ 2024-06-07', 1, 2, 'user07');
INSERT INTO showroom (show_num, show_name, show_place, show_period, min_res_time, max_res_time, user_id)
	VALUES (3, '스무드무드', '서울특별시 성동구 성수일로 12길 32 2층', '2024-05-30 ~ 2024-06-08', 2, 4, 'user08');
INSERT INTO showroom (show_num, show_name, show_place, show_period, min_res_time, max_res_time, user_id)
	VALUES (4, '모노하', '서울특별시 성동구 성수이로20길 16 1층', '2024-05-29 ~ 2024-06-08', 1, 4, 'user10');
INSERT INTO showroom (show_num, show_name, show_place, show_period, min_res_time, max_res_time, user_id)
	VALUES (5, 'EQL', '서울특별시 성동구 연무장 15길 11', '2024-06-03 ~ 2024-06-08', 1, 2, 'user09');

-- reservation_time 릴레이션에 데이터 삽입
INSERT INTO reservation_time (show_num, res_day) VALUES (1, '2024-03-07 13:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (1, '2024-03-07 15:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (1, '2024-03-07 17:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (1, '2024-03-07 19:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-05-29 13:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-05-29 14:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-05-29 18:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-05-29 19:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-05-29 20:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-06-04 13:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-06-04 14:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-06-04 15:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (2, '2024-06-04 16:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (3, '2024-05-30 13:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (3, '2024-05-30 14:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (3, '2024-05-30 18:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (3, '2024-05-30 19:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (3, '2024-05-30 20:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (3, '2024-06-03 13:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (3, '2024-06-03 14:00');
INSERT INTO reservation_time (show_num, res_day) VALUES (3, '2024-06-03 15:00');

-- reserve 릴레이션에 데이터 삽입
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user01', 1, TO_TIMESTAMP('2024-03-02 17:12:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-03-07 13:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user03', 1, TO_TIMESTAMP('2024-03-02 17:16:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-03-07 15:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user01', 3, TO_TIMESTAMP('2024-05-26 15:04:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-05-30 18:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user05', 2, TO_TIMESTAMP('2024-05-28 15:21:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-05-29 18:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user05', 2, TO_TIMESTAMP('2024-05-28 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-05-29 19:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user05', 2, TO_TIMESTAMP('2024-05-28 15:39:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-05-29 20:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user04', 2, TO_TIMESTAMP('2024-05-29 21:40:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-06-04 13:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user02', 3, TO_TIMESTAMP('2024-05-31 15:19:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-06-03 14:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user02', 3, TO_TIMESTAMP('2024-05-31 15:21:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-06-03 15:00', '예약후');
INSERT INTO reserve (user_id, show_num, res_now_day, res_day, progress)
VALUES ('user03', 2, TO_TIMESTAMP('2024-06-01 15:19:00', 'YYYY-MM-DD HH24:MI:SS'), '2024-06-04 16:00', '예약후');



-- designer page 릴레이션에 데이터 삽입
INSERT INTO designer_page (page_num, page_info) VALUES (101, '전통 의류 디자이너로 10년 경력');
INSERT INTO designer_page (page_num, page_info) VALUES (102, '한복 전문 디자이너');
INSERT INTO designer_page (page_num, page_info) VALUES (103, '전통 의류와 현대 패션의 조화 추구');
INSERT INTO designer_page (page_num, page_info) VALUES (104, '전통 의류 분야에서 다수의 수상 경력 보유');
INSERT INTO designer_page (page_num, page_info) VALUES (105, '전통 문양을 현대적으로 재해석하는 디자이너');

-- news 릴레이션에 데이터 삽입
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (1, '전통 한복의 아름다움', '이번 봄 컬렉션에서 전통 한복의 아름다움을 선보입니다. 디자이너가 직접 디자인한 한복들을 만나보세요.', 'hanbok_collection.jpg', TO_DATE('2024-03-03', 'YYYY-MM-DD'), DEFAULT, 10);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (2, '신상 출시 기념 이벤트', '신상 출시를 기념하여 특별 이벤트를 진행합니다. 많은 참여 바랍니다.', 'event_poster.jpg', TO_DATE('2024-05-01', 'YYYY-MM-DD'), DEFAULT, 15);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (3, '여름 시즌 쇼룸 오픈', '이번 여름 시즌을 맞이하여 새로운 디자인의 한복을 직접 입어보고 구매할 수 있는 쇼룸을 오픈했습니다. 쇼룸에서 다양한 한복을 만나보세요.', 'showroom_opening.jpg', TO_DATE('2024-05-15', 'YYYY-MM-DD'), DEFAULT, 40);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (4, '전통 자수 기법 소개', '한국의 전통 자수 기법을 소개합니다. 아름다운 자수 디자인을 배워보세요.', 'embroidery_technique.jpg', TO_DATE('2024-05-16', 'YYYY-MM-DD'), DEFAULT, 18);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (5, '한복 패션쇼', '다가오는 한복 패션쇼에 초대합니다. 다양한 전통 의상을 직접 만나보세요.', 'fashion_show.jpg', TO_DATE('2024-05-04', 'YYYY-MM-DD'), DEFAULT, 21);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (6, '겨울 한복 스타일링 팁', '추운 겨울에도 따뜻하고 멋스럽게 한복을 입는 방법을 알려드립니다.', 'winter_hanbok.jpg', TO_DATE('2024-05-05', 'YYYY-MM-DD'), DEFAULT, 32);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (7, '한복 체험 행사', '전통 한복을 직접 입어보고 체험할 수 있는 행사를 개최합니다. 많은 참여 바랍니다.', 'hanbok_experience.jpg', TO_DATE('2024-05-08', 'YYYY-MM-DD'), DEFAULT, 20);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (8, '한복 사진 콘테스트', '한복을 입고 찍은 사진을 공유하고 콘테스트에 참여하세요. 푸짐한 상품이 기다리고 있습니다.', 'photo_contest.jpg', TO_DATE('2024-05-08', 'YYYY-MM-DD'), DEFAULT, 25);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (9, '한복 패션 트렌드', '올해의 한복 패션 트렌드를 소개합니다. 최신 유행하는 디자인을 확인해보세요.', 'fashion_trends.jpg', TO_DATE('2024-05-10', 'YYYY-MM-DD'), DEFAULT, 12);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (10, '한복 관리 방법', '한복을 오래 보관하고 관리하는 방법을 알려드립니다. 소중한 한복을 잘 유지하세요.', 'hanbok_care.jpg', TO_DATE('2024-05-11', 'YYYY-MM-DD'), DEFAULT, 35);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (11, '전통 악세사리 소개', '한복과 어울리는 전통 악세사리를 소개합니다. 한복의 아름다움을 더욱 돋보이게 만들어보세요.', 'traditional_accessories.jpg', TO_DATE('2024-05-18', 'YYYY-MM-DD'), DEFAULT, 14);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (12, '한복의 역사', '한복의 유래와 역사를 알아보는 시간을 가져보세요. 전통의 아름다움을 느껴보세요.', 'hanbok_history.jpg', TO_DATE('2024-05-20', 'YYYY-MM-DD'), DEFAULT, 21);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (13, '한복 맞춤 제작', '당신만을 위한 맞춤 한복 제작 서비스를 제공합니다. 특별한 날을 위해 맞춤 한복을 준비해보세요.', 'custom_hanbok.jpg', TO_DATE('2024-05-10', 'YYYY-MM-DD'), DEFAULT, 18);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (14, '한복 할인 행사', '한복 할인 행사를 진행합니다. 다양한 한복을 합리적인 가격에 만나보세요.', 'hanbok_sale.jpg', TO_DATE('2024-05-20', 'YYYY-MM-DD'), DEFAULT, 11);
INSERT INTO news (news_num, news_title, news_board, news_img, news, news_like_count, news_view_count)
VALUES (15, '전통 공예 워크숍', '전통 공예 워크숍에 참여해보세요. 직접 만들어보는 즐거움을 느껴보세요.', 'craft_workshop.jpg', TO_DATE('2024-06-01', 'YYYY-MM-DD'), DEFAULT, 5);

-- news_write 릴레이션에 데이터 삽입
INSERT INTO news_write (user_id, news_num) VALUES ('user08', 1);
INSERT INTO news_write (user_id, news_num) VALUES ('user10', 2);
INSERT INTO news_write (user_id, news_num) VALUES ('user06', 3);
INSERT INTO news_write (user_id, news_num) VALUES ('user09', 4);
INSERT INTO news_write (user_id, news_num) VALUES ('user10', 5);
INSERT INTO news_write (user_id, news_num) VALUES ('user07', 6);
INSERT INTO news_write (user_id, news_num) VALUES ('user09', 7);
INSERT INTO news_write (user_id, news_num) VALUES ('user07', 8);
INSERT INTO news_write (user_id, news_num) VALUES ('user06', 9);
INSERT INTO news_write (user_id, news_num) VALUES ('user08', 10);
INSERT INTO news_write (user_id, news_num) VALUES ('user09', 11);
INSERT INTO news_write (user_id, news_num) VALUES ('user06', 12);
INSERT INTO news_write (user_id, news_num) VALUES ('user10', 13);
INSERT INTO news_write (user_id, news_num) VALUES ('user07', 14);
INSERT INTO news_write (user_id, news_num) VALUES ('user10', 15);

-- news_register 릴레이션에 데이터 삽입
INSERT INTO news_register (news_num, page_num) VALUES (1, 103);
INSERT INTO news_register (news_num, page_num) VALUES (2, 105);
INSERT INTO news_register (news_num, page_num) VALUES (3, 101);
INSERT INTO news_register (news_num, page_num) VALUES (4, 104);
INSERT INTO news_register (news_num, page_num) VALUES (5, 105);
INSERT INTO news_register (news_num, page_num) VALUES (6, 102);
INSERT INTO news_register (news_num, page_num) VALUES (7, 104);
INSERT INTO news_register (news_num, page_num) VALUES (8, 102);
INSERT INTO news_register (news_num, page_num) VALUES (9, 101);
INSERT INTO news_register (news_num, page_num) VALUES (10, 103);
INSERT INTO news_register (news_num, page_num) VALUES (11, 104);
INSERT INTO news_register (news_num, page_num) VALUES (12, 101);
INSERT INTO news_register (news_num, page_num) VALUES (13, 105);
INSERT INTO news_register (news_num, page_num) VALUES (14, 102);
INSERT INTO news_register (news_num, page_num) VALUES (15, 105);

-- news_like 릴레이션에 데이터 삽입
INSERT INTO news_like (user_id, news_num) VALUES ('user03', 1);
INSERT INTO news_like (user_id, news_num) VALUES ('user05', 5);
INSERT INTO news_like (user_id, news_num) VALUES ('user02', 6);
INSERT INTO news_like (user_id, news_num) VALUES ('user04', 7);
INSERT INTO news_like (user_id, news_num) VALUES ('user03', 10);
INSERT INTO news_like (user_id, news_num) VALUES ('user02', 8);
INSERT INTO news_like (user_id, news_num) VALUES ('user01', 9);
INSERT INTO news_like (user_id, news_num) VALUES ('user04', 10);
INSERT INTO news_like (user_id, news_num) VALUES ('user05', 13);
INSERT INTO news_like (user_id, news_num) VALUES ('user05', 1);
INSERT INTO news_like (user_id, news_num) VALUES ('user05', 10);
INSERT INTO news_like (user_id, news_num) VALUES ('user01', 3);
INSERT INTO news_like (user_id, news_num) VALUES ('user04', 4);
INSERT INTO news_like (user_id, news_num) VALUES ('user02', 14);
INSERT INTO news_like (user_id, news_num) VALUES ('user04', 11);
INSERT INTO news_like (user_id, news_num) VALUES ('user01', 12);
INSERT INTO news_like (user_id, news_num) VALUES ('user01', 10);
INSERT INTO news_like (user_id, news_num) VALUES ('user05', 2);

-- news_comment_write 릴레이션에 데이터 삽입
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user05', 2, '이벤트 기대되네요!');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user03', 1, '한복이 너무 아름답네요.');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user05', 5, '패션쇼가 기대됩니다.');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user02', 6, '한복 스타일링 팁 좋아요!');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user04', 7, '한복 체험 행사에 참여해볼까요?');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user03', 10, '한복 관리 방법에 대해 자세히 설명해주셔서 감사합니다!');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user02', 8, '사진 콘테스트 좋은 아이디어네요!');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user01', 9, '한복 패션 트렌드 궁금해요.');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user04', 10, '한복 할인 행사 언제까지인가요?');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user05', 13, '맞춤 한복 제작 서비스는 어떤가요?');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user05', 1, '한복이 너무 멋져요!');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user05', 10, '한복을 자주 입는데, 세탁할 때 주의해야 할 점이 있나요?');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user01', 3, '쇼룸에서 다양한 한복을 만나보고 싶어요.');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user04', 4, '전통 자수 기법이 궁금합니다.');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user02', 14, '한복 할인 행사 참여해볼까요?');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user04', 11, '전통 악세사리 소개 기대돼요.');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user01', 12, '한복 역사에 대해 알고 싶어요.');
INSERT INTO news_comment_write (user_id, news_num, news_comment) VALUES ('user01', 10, '한복을 입는 것만큼 관리하는 것도 중요한데, 이렇게 자세하게 알려주셔서 정말 감사합니다.');



INSERT INTO competition (comp_code, comp_name, comp_sub, start_day, end_day, schedule, condition, host, management, award, manager_name, manager_phone, manager_email)
VALUES ('UNIV2024', '2024대학생창작한복디자인대회', '깃과 고름이 있는 상하의 형태의 생활 한복 한 벌 제작', TO_DATE('2024-06-17', 'YYYY-MM-DD'), TO_DATE('2024-06-20', 'YYYY-MM-DD'), '6월 17일 ~ 6월 20일 : 신청서 접수, 6월 21일 ~ 9월 5일 : 공모전 기간', '2024년 6월 기준 국내 2~3년제 및 4년제 대학 재학/휴학생(초과학기생, 대학원생 제외)으로 구성된 2~3인팀', '한국전통문화협회', '한국기술교육대학교', '대상(1명) : 500만원', '고운체', '8201056780001', 'os@koreatech.ac.kr');

INSERT INTO competition (comp_code, comp_name, comp_sub, start_day, end_day, schedule, condition, host, management, award, manager_name, manager_phone, manager_email)
VALUES ('KRDS2024', '2024한국전통문화디자인대전', '한국의 멋을 담은 전통 문화 양식이면 무엇이든.', TO_DATE('2024-08-13', 'YYYY-MM-DD'), TO_DATE('2024-08-23', 'YYYY-MM-DD'), '8월 13일~ 8월 23일 : 신청서 접수, 8월 24일 ~ 11월 21일 : 공모전 기간', '2024년 8월 기준 만 18세 이상 국내 거주민으로 구성된 2~4인팀', '한국전통문화협회', '서울특별시', '대상(1명) : 1천만원', '윤머신', '8201056780002', 'ML@koreatech.ac.kr');

INSERT INTO competition (comp_code, comp_name, comp_sub, start_day, end_day, schedule, condition, host, management, award, manager_name, manager_phone, manager_email)
VALUES ('KCUL2024', '2024K-CULTURE디자인공모전', '전통 양식을 현대로 재해석해 새로운 디자인 창조.', TO_DATE('2024-07-05', 'YYYY-MM-DD'), TO_DATE('2024-07-09', 'YYYY-MM-DD'), '7월 5일~7월 9일 : 신청서 접수, 7월 10일~12월 15일 : 공모전 기간', '2024년도 6월 기준 국내 거주민으로 구성된 1인 이상 5인 이하의 팀', '국가유산청', '유려디자인', '대상(1명) : 3천만원', '한컴구', '8201056780003', 'ComputerS@koreatech.ac.kr');

--

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('UNIV2024', '국가유산청');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('UNIV2024', '한국문화예술교육진흥원');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('UNIV2024', '(주)상상디자인');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('UNIV2024', '삼성물산');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('KRDS2024', '디자인플러스');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('KRDS2024', '한국문화예술교육진흥원');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('UNIV2024', 'K브랜드');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('KCUL2024', 'K브랜드');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('KCUL2024', '블룸컴퍼니');

INSERT INTO sponsor (comp_code, agency_name)
VALUES ('KCUL2024', '사립재단 미르');

INSERT INTO recriutment (recruit_code, title, start_day, end_day, qualification, recruit_headcount, now_headcount)
VALUES ('UNIV202400001', '대학생창작한복대회 나가실 분', TO_DATE('2024-06-07', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'),'관련 전공자만 받습니다.', 2, 0);

INSERT INTO recriutment (recruit_code, title, start_day, end_day, qualification, recruit_headcount, now_headcount)
VALUES ('UNIV202400002', '창작한복대회 인원 구합니다', TO_DATE('2024-06-06', 'YYYY-MM-DD'), TO_DATE('2024-06-10', 'YYYY-MM-DD'), '졸업반이신 분들 위주로 구합니다.', 3, 0);

INSERT INTO recriutment (recruit_code, title, start_day, end_day, qualification, recruit_headcount, now_headcount)
VALUES ('KRDS202400001', '디자인대전 디자이너 두 명 더 구해요', TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-08-01', 'YYYY-MM-DD'), '전공자/경력자 우대', 2, 0);

INSERT INTO recriutment (recruit_code, title, start_day, end_day, qualification, recruit_headcount, now_headcount)
VALUES ('KCUL202400001', '같이 공모전 나가실 디자이너분', TO_DATE('2024-06-17', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), '한복 제작 해보신 분 우대', 1, 0);

INSERT INTO recriutment (recruit_code, title, start_day, end_day, qualification, recruit_headcount, now_headcount)
VALUES ('KCUL202400002', '노리개 술 뜨실 수 있는 분 구합니다', TO_DATE('2024-06-07', 'YYYY-MM-DD'), TO_DATE('2024-06-25', 'YYYY-MM-DD'), '노리개 술 뜨실 수 있는 분 아무나', 4, 0);

INSERT INTO like_comp (user_id, comp_code)
VALUES ('user06', 'UNIV2024');

UPDATE competition
SET    like_num = like_num + 1
WHERE  comp_code = 'UNIV2024';

INSERT INTO like_comp (user_id, comp_code)
VALUES ('user06', 'KRDS2024');

UPDATE competition
SET    like_num = like_num + 1
WHERE  comp_code = 'KRDS2024';

INSERT INTO like_comp (user_id, comp_code)
VALUES ('user07', 'UNIV2024');

UPDATE competition
SET    like_num = like_num + 1
WHERE  comp_code = 'UNIV2024';

INSERT INTO like_comp (user_id, comp_code)
VALUES ('user08', 'UNIV2024');

UPDATE competition
SET    like_num = like_num + 1
WHERE  comp_code = 'UNIV2024';

INSERT INTO like_comp (user_id, comp_code)
VALUES ('user08', 'KCUL2024');

UPDATE competition
SET    like_num = like_num + 1
WHERE  comp_code = 'KCUL2024';

INSERT INTO write_recruit (recruit_code, user_id)
VALUES ('UNIV202400001', 'user06');

INSERT INTO write_recruit (recruit_code, user_id)
VALUES ('KRDS202400001', 'user06');

INSERT INTO write_recruit (recruit_code, user_id)
VALUES ('KCUL202400001', 'user10');

INSERT INTO write_recruit (recruit_code, user_id)
VALUES ('UNIV202400002', 'user07');

INSERT INTO write_recruit (recruit_code, user_id)
VALUES ('KCUL202400002', 'user08');

INSERT INTO upload_recruit (comp_code, recruit_code)
VALUES ('UNIV2024', 'UNIV202400001');

INSERT INTO upload_recruit (comp_code, recruit_code)
VALUES ('KRDS2024', 'KRDS202400001');

INSERT INTO upload_recruit (comp_code, recruit_code)
VALUES ('KCUL2024', 'KCUL202400001');

INSERT INTO upload_recruit (comp_code, recruit_code)
VALUES ('UNIV2024', 'UNIV202400002');

INSERT INTO upload_recruit (comp_code, recruit_code)
VALUES ('KCUL2024', 'KCUL202400002');

INSERT INTO like_recruit (user_id, recruit_code)
VALUES ('user07', 'UNIV202400001');

UPDATE recriutment
SET    like_num = like_num + 1
WHERE  recruit_code = 'UNIV202400001';

INSERT INTO like_recruit (user_id, recruit_code)
VALUES ('user08', 'UNIV202400001');

UPDATE recriutment
SET    like_num = like_num + 1
WHERE  recruit_code = 'UNIV202400001';

INSERT INTO like_recruit (user_id, recruit_code)
VALUES ('user09', 'KRDS202400001');

UPDATE recriutment
SET    like_num = like_num + 1
WHERE  recruit_code = 'KRDS202400001';

INSERT INTO like_recruit (user_id, recruit_code)
VALUES ('user10', 'KCUL202400001');

UPDATE recriutment
SET    like_num = like_num + 1
WHERE  recruit_code = 'KCUL202400001';

INSERT INTO like_recruit (user_id, recruit_code)
VALUES ('user06', 'KCUL202400002');

UPDATE recriutment
SET    like_num = like_num + 1
WHERE  recruit_code = 'KCUL202400002';

INSERT INTO like_recruit (user_id, recruit_code)
VALUES ('user10', 'KRDS202400001');

UPDATE recriutment
SET    like_num = like_num + 1
WHERE  recruit_code = 'KRDS202400001';

INSERT INTO like_recruit (user_id, recruit_code)
VALUES ('user08', 'UNIV202400002');

UPDATE recriutment
SET    like_num = like_num + 1
WHERE  recruit_code = 'UNIV202400002';


INSERT INTO app_join (user_id, recruit_code, main_part, approval)
VALUES ('user07', 'UNIV202400001', '한복 디자인 위주', '승인중');

INSERT INTO app_join (user_id, recruit_code, main_part, approval)
VALUES ('user08', 'UNIV202400001', '의상디자인학과재학중', '승인중');

INSERT INTO app_join (user_id, recruit_code, main_part, approval)
VALUES ('user08', 'KCUL202400001', '한복 디자이너 경력 3년', '승인중');

INSERT INTO app_join (user_id, recruit_code, main_part, approval)
VALUES ('user09', 'KRDS202400001', '한복 제작 경력 5년. 생활 한복 위주.', '승인중');

INSERT INTO app_join (user_id, recruit_code, main_part, approval)
VALUES ('user06', 'KCUL202400002', '장신구 제작', '승인중');



--product 테이블에 데이터 삽입(7번, 10번 상품 품절상태)
INSERT INTO product VALUES (1, '전통한복 붉은당의 중전마마 여자한복', 'jungjeon1_main.jpg', 'jungjeon1_sub.jpg', '모델키는 165이며 배송은 좀 느릴 수 있습니다.', SYSDATE, '호칭: 66, 팔길이: 75, 가슴둘레: 87-91, 치마길이: 150', '다홍색, 파란색', 30, '전통 한복', 50000, 50000, '판매중', 0, 0, 'user06');
INSERT INTO product VALUES (2, '생활한복 구름소다 여자한복', 'soda1_main.jpg', 'soda1_sub.jpg', '생활에서 편히 입을 수 있게 디자인 했습니다.', SYSDATE, '호칭: 66, 팔길이: 75, 가슴둘레: 87-91, 치마길이: 155', '하얀색, 하늘색', 5, '생활 한복', 53000, 50000, '판매중', 0, 0, 'user07');
INSERT INTO product VALUES (3, '동양화 전통한복', 'dongyanghwa_main.jpg', 'dongyanghwa_sub.jpg', '자세한 내용은 이미지를 참고해주세요.', SYSDATE, '호칭: 55, 팔길이: 73, 가슴둘레: 83-87, 치마길이: 148', '하얀색, 자두색, 남색', 2, '전통 한복', 119000, 119000, '판매중', 0, 0, 'user06');
INSERT INTO product VALUES (4, '무사 남자한복', 'moosa_main.jpg', 'moosa_sub.jpg', '구성품은 저고리, 바지, 배자입니다.', SYSDATE, '사이즈는 이미지 참고', '빨간색, 적색, 검은색', 12, '캐릭터 한복', 100000, 99000, '판매중', 0, 0, 'user06');
INSERT INTO product VALUES (5, '결혼한복 살구 커플한복', 'salgu_main.jpg', 'salgu_sub.jpg', '본 상품은 대여로 이뤄집니다. (사진 참고)', SYSDATE, '사이즈는 이미지 참고', '살구색 계열', 40, '결혼 한복', 248000, 248000, '판매중', 0, 0, 'user07');
INSERT INTO product VALUES (6, '한복세트 핑크 가족한복', 'pinkfamily_main.jpg', 'pinkfamily_sub.jpg', '상품배송기간은 1~2일입니다. 본 상품은 대여로 한복 반납일을 지켜주세요.', SYSDATE, '이미지 설명 참고', '분홍색 계열', 24, '가족 한복', 300000, 270000, '판매중', 0, 0, 'user08');
INSERT INTO product VALUES (7, '제비부리댕기', 'daenggi1_main.jpg', 'daenggi1_sub.jpg', '제비부리댕기로 고무줄로 고정하는 형태입니다.', SYSDATE, '전체 길이: 80cm', '하늘색', 0, '액세서리', 12000, 12000, '품절', 0, 0, 'user10');
INSERT INTO product VALUES (8, '왕세자 남아한복', 'crownprince_main.jpg', 'crownprince_sub.jpg', '늠름하면서도 귀여운 디자인의 한복입니다.', SYSDATE, '사이즈: 이미지에 첨부함', '남색, 하늘색, 하얀색', 31, '아동 한복', 70000, 70000, '판매중', 0, 0, 'user08');
INSERT INTO product VALUES (9, '나비문양댕기', 'daenggi2_main.jpg', 'daenggi2_sub.jpg', '제품 특성상 창구멍으로 인한 상침이 있습니다.', SYSDATE, '펼쳤을 때 84cm/ 접었을 때 37cm', '분홍색', 30, '액세서리', 15000, 13500, '판매중', 0, 0, 'user10');
INSERT INTO product VALUES (10, '조선시대 청록치마 전통한복', 'joseonperiod1_main.jpg', 'joseonperiod1_sub.jpg', '조선시대 여자한복 디자인으로 저고리와 치마로 구성되어 있습니다.', SYSDATE, '호칭: 66, 팔길이: 75, 가슴둘레: 87-91, 치마길이: 150', '청록색, 자두색, 하얀색', 0, '전통 한복', 150000, 150000, '품절', 0, 0, 'user06');
INSERT INTO product VALUES (11, '전통한복 청록당의 중전마마 여자한복', 'jungjeon2_main.jpg', 'jungjeon2_sub.jpg', '모델키는 165이며 배송은 좀 느릴 수 있습니다.', SYSDATE, '호칭: 66, 팔길이: 75, 가슴둘레: 87-91, 치마길이: 150', '청록색, 하얀색', 30, '전통 한복', 50000, 50000, '판매중', 0, 0, 'user06');
INSERT INTO product VALUES (12, '생활한복 구름소다 남자한복', 'soda2_main.jpg', 'soda2_main.jpg', '생활에서 편히 입을 수 있게 디자인 했습니다.', SYSDATE, '호칭: 110, 팔길이: 88, 가슴둘레: 110-115, 바지길이: 125', '하얀색, 남색, 하늘색', 19, '생활 한복',52000, 52000, '판매중', 0, 0, 'user07');
INSERT INTO product VALUES (13, '왕 남자한복', 'king_main.jpg', 'king_sub.jpg', '캐릭터 한복으로 왕 의상을 디자인 했습니다. 졸업, 컨셉사진으로 좋습니다!', SYSDATE, '사이즈는 이미지 하단에 있습니다.', '빨간색, 금색, 하얀색 등', 26, '캐릭터 한복', 72000, 70000, '판매중', 0, 0, 'user08');
INSERT INTO product VALUES (14, '수묵화 어두동 여자 한복', 'uhwudong_main.jpg', 'uhwudong_sub.jpg', '캐릭터 한복으로 수묵화 어우동 의상을 디자인 했습니다. 졸업, 컨셉사진으로 좋습니다!', SYSDATE, '사이즈는 이미지 하단에 있습니다.', '빨간색, 검은색, 하얀색', 30, '캐릭터 한복', 110000, 110000, '판매중', 0, 0, 'user08');
INSERT INTO product VALUES (15, '초록 어깨 치마 생활한복', 'shoulder_main.jpg', 'shoulder_sub.jpg', '본 상품은 어깨치마(원피스) 단품입니다. 봄과 어울리는 생활한복 디자인 입니다.', SYSDATE, '사이즈: 55-66', '초록색, 노란색, 하얀색, 갈색', 27, '생활 한복', 62000, 61500, '판매중', 0, 0, 'user09');
INSERT INTO product VALUES (16, '백일한복 여아', 'onehundredth1_main.jpg', 'onehundredth1_sub.jpg', '본 상품은 한복만 발송되는 상품이며 함께 꾸며준 소품은 별도입니다.', SYSDATE, '사이즈: 0호, 키: ~60, 체중: ~9, 어깨부터 손목뼈까지: 28', '남색, 금색, 하얀색, 노란색', 5, '아동 한복', 69000, 69000, '판매중', 0, 0, 'user09');
INSERT INTO product VALUES (17, '백일한복 여아', 'onehundredth1_main.jpg', 'onehundredth1_sub.jpg', '본 상품은 한복만 발송되는 상품이며 함께 꾸며준 소품은 별도입니다.', SYSDATE, '사이즈: 2호, 키: 82~89, 체중: 10~12, 어깨부터 손목뼈까지: 40', '남색, 금색, 하얀색, 노란색', 8, '아동 한복', 68000, 68000, '판매중', 0, 0, 'user09');
INSERT INTO product VALUES (18, '백일한복 여아', 'onehundredth1_main.jpg', 'onehundredth1_sub.jpg', '본 상품은 한복만 발송되는 상품이며 함께 꾸며준 소품은 별도입니다.', SYSDATE, '사이즈: 1호, 키: 60~80, 체중: 9~10, 어깨부터 손목뼈까지: 35', '남색, 금색, 하얀색, 노란색', 10, '아동 한복', 68000, 68000, '판매중', 0, 0, 'user09');
INSERT INTO product VALUES (19, '1단 노리개', 'norigae_main.jpg', 'norigae_sub.jpg', '나비모양의 자수가 포인트로 들어간 매듭 장식입니다. 색은 랜덤으로 발송됩니다.', SYSDATE, '거로: 4.5cm, 갈이: 20cm', '분홍색, 파란색, 노란색, 하얀색', 130, '액세서리', 4500, 3500, '판매중', 0, 0, 'user09');
INSERT INTO product VALUES (20, '나전리필분첩(꽃)', 'flower_main.jpg', 'flower_sub.jpg', '영롱한 빛의 자개장식이 돋보이는 리필형 분첩입니다.', SYSDATE, '세로: 7.3cm, 가로: 6.2cm, 두께: 1.4cm', '배경: 검은색', 13, '액세서리', 48000, 43200, '판매중', 0, 0, 'user06');
INSERT INTO product VALUES (21, '나전리필분첩(나비)', 'butterfly_main.jpg', 'butterfly_sub.jpg', '자연 자개를 사용하여 난초, 목단 등을 표현한 디자인의 분첩으로 지인 또는 외국 손님께 드리는 간단 선물로 추천드립니다.', SYSDATE, '세로: 7.3cm, 가로: 6.2cm, 두께: 1.4cm', '배경: 하얀색, 꽃: 분홍색, 노란색', 30, '액세서리', 32500, 32500, '판매중', 0, 0, 'user07');
INSERT INTO product VALUES (22, '개나리 초록 남자한복', 'greenman_main.jpg', 'greenman_sub.jpg', '남자, 여자 버전 모두 있는 상품으로 <개나리 초록 남자한복>과 <개나리 초록 여자한복>이 있습니다.', SYSDATE, '호칭: 100, 팔길이: 84, 가슴둘레: 100-105, 바지길이: 120', '노란색, 하얀색', 29, '결혼 한복', 249000, 249000, '판매중', 0, 0, 'user07');
INSERT INTO product VALUES (23, '개나리 초록 여자한복', 'greenwom_main.jpg', 'greenwom_sub.jpg', '남자, 여자 버전 모두 있는 상품으로 <개나리 초록 남자한복>과 <개나리 초록 여자한복>이 있습니다.', SYSDATE, '호칭: 66, 팔길이: 75, 가슴둘레: 87-91, 치마길이: 148', '초록색, 노란색, 하얀색', 32, '결혼 한복', 250000, 250000, '판매중', 0, 0, 'user10');
INSERT INTO product VALUES (24, '전통한복 푸른하늘 남자한복', 'haneul_main.jpg', 'haneul_sub.jpg', '모델키는 165이며 배송은 좀 느릴 수 있습니다.', SYSDATE, '호칭: 100, 팔길이: 84, 가슴둘레: 100-105, 바지길이: 120', '하늘색, 파란색, 하얀색', 30, '전통 한복', 50000, 50000, '판매중', 0, 0, 'user06');
INSERT INTO product VALUES (25, '조선시대 청록바지 남자한복', 'joseonperiod2_main.jpg', 'joseonperiod2_sub.jpg', '저고리와 바지, 답호로 구성되어 있습니다. 재고가 없을 시 최대 3주의 제작 기간 발생됩니다.', SYSDATE, '호칭: 100, 팔길이: 84, 가슴둘레: 100-105, 바지길이: 120', '청록색, 하얀색, 자두색', 30, '전통 한복', 133000, 132500, '판매중', 0, 0, 'user08');
INSERT INTO product VALUES (26, '조선시대 다홍바지 남자한복', 'joseonperiod3_main.jpg', 'joseonperiod3_sub.jpg', '조선시대 남자한복 다홍색 버전입니다. 남자한복은 일반 기성복에 비해 통이 정말 큰 편입니다.', SYSDATE, '호칭: 110, 팔길이: 88, 가슴둘레: 110-115, 바지길이: 125', '다홍색, 하얀색, 분홍색', 25, '전통 한복', 129000, 129000, '판매중', 0, 0, 'user09');



--keyword 테이블에 데이터 삽입
INSERT INTO keyword VALUES (1, '중전마마');
INSERT INTO keyword VALUES (2, '여자한복');
INSERT INTO keyword VALUES (3, '동양화');
INSERT INTO keyword VALUES (3, '동양전통');
INSERT INTO keyword VALUES (4, '무사');
INSERT INTO keyword VALUES (4, '남자한복');
INSERT INTO keyword VALUES (4, '역할극');
INSERT INTO keyword VALUES (5, '살구색');
INSERT INTO keyword VALUES (5, '커플한복');
INSERT INTO keyword VALUES (6, '분홍색세트');
INSERT INTO keyword VALUES (6, '세트한복');
INSERT INTO keyword VALUES (7, '댕기');
INSERT INTO keyword VALUES (8, '왕세자');
INSERT INTO keyword VALUES (8, '남자아이');
INSERT INTO keyword VALUES (9, '댕기');
INSERT INTO keyword VALUES (9, '나비문양');
INSERT INTO keyword VALUES (10, '청록색');
INSERT INTO keyword VALUES (10, '조선시대');
INSERT INTO keyword VALUES (11, '중전마마');
INSERT INTO keyword VALUES (12, '남자한복');
INSERT INTO keyword VALUES (13, '왕');
INSERT INTO keyword VALUES (13, '사극');
INSERT INTO keyword VALUES (13, '상황극');
INSERT INTO keyword VALUES (14, '수묵화');
INSERT INTO keyword VALUES (14, '어우동');
INSERT INTO keyword VALUES (15, '원피스');
INSERT INTO keyword VALUES (15, '어깨치마');
INSERT INTO keyword VALUES (15, '봄');
INSERT INTO keyword VALUES (15, '초록색');
INSERT INTO keyword VALUES (16, '백일');
INSERT INTO keyword VALUES (16, '여자아이');
INSERT INTO keyword VALUES (17, '백일');
INSERT INTO keyword VALUES (17, '여자아이');
INSERT INTO keyword VALUES (18, '백일');
INSERT INTO keyword VALUES (18, '여자아이');
INSERT INTO keyword VALUES (19, '노리개');
INSERT INTO keyword VALUES (20, '나전리필분첩');
INSERT INTO keyword VALUES (20, '장신구');
INSERT INTO keyword VALUES (21, '나전리필분첩');
INSERT INTO keyword VALUES (22, '커플');
INSERT INTO keyword VALUES (22, '세트');
INSERT INTO keyword VALUES (23, '커플');
INSERT INTO keyword VALUES (23, '세트');
INSERT INTO keyword VALUES (24, '남자한복');
INSERT INTO keyword VALUES (24, '푸른색');
INSERT INTO keyword VALUES (24, '조선시대');
INSERT INTO keyword VALUES (25, '남자한복');
INSERT INTO keyword VALUES (25, '조선시대');
INSERT INTO keyword VALUES (26, '남자한복');
INSERT INTO keyword VALUES (26, '조선시대');


-- product_like 테이블에 데이터 삽입
INSERT INTO product_like VALUES ('user01', 1);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 1;
INSERT INTO product_like VALUES ('user01', 23);
UPDATE product
SET like_number = like_number +1
WHERE  prod_num = 23;
INSERT INTO product_like VALUES ('user01', 4);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 4;
INSERT INTO product_like VALUES ('user02', 4);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 4;
INSERT INTO product_like VALUES ('user03', 1);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 1;
INSERT INTO product_like VALUES ('user03', 2);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 2;
INSERT INTO product_like VALUES ('user03', 4);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 4;
INSERT INTO product_like VALUES ('user03', 20);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 20;
INSERT INTO product_like VALUES ('user03', 21);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 21;
INSERT INTO product_like VALUES ('user03', 22);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 23;
INSERT INTO product_like VALUES ('user03', 23);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 23;
INSERT INTO product_like VALUES ('user03', 24);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 24;
INSERT INTO product_like VALUES ('user03', 25);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 25;
INSERT INTO product_like VALUES ('user04', 4);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 4;
INSERT INTO product_like VALUES ('user04', 13);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 13;
INSERT INTO product_like VALUES ('user04', 23);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 23;
INSERT INTO product_like VALUES ('user04', 25);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 25;
INSERT INTO product_like VALUES ('user05', 1);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 1;
INSERT INTO product_like VALUES ('user05', 3);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 3;
INSERT INTO product_like VALUES ('user05', 4);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 4;
INSERT INTO product_like VALUES ('user05', 13);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 13;
INSERT INTO product_like VALUES ('user05', 23);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 23;
INSERT INTO product_like VALUES ('user05', 25);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 25;
INSERT INTO product_like VALUES ('user05', 26);
UPDATE product
SET like_number = like_number + 1
WHERE  prod_num = 26;

--review_write 테이블에 데이터 삽입
INSERT INTO review_write VALUES ('user01', 1, DEFAULT, 4.5, '예쁘네요.', NULL);
INSERT INTO review_write VALUES ('user02', 2, DEFAULT, 5.0, '덕분에 좋은 사진 찍었어요!', 'review_img1.jpg');
INSERT INTO review_write VALUES ('user03', 3, DEFAULT, 4.0, NULL, NULL);
INSERT INTO review_write VALUES ('user04', 4,  DEFAULT, 3.5, '예쁜데 가격에 비해 좀 비싼거 같아요. 예쁘긴합니다', 'review_img3.jpg');
INSERT INTO review_write VALUES ('user05', 5, DEFAULT, 5.0, '기대 별로 안했는데 생각보다 이뻐서 놀랐어요 주변에서 잘 샀대요. 만족!', NULL);

-- 배송_정보
INSERT INTO delivery_info VALUES ('user01', '충청남도 천안시 서북구 두정역길11 111동 111호', '조영원', '문 앞에 놓아주세요');
INSERT INTO delivery_info VALUES ('user01', '충청남도 천안시 병천면 충절로1600 00관', '조영원', '무인 택배함에 넣어주세요');
INSERT INTO delivery_info VALUES ('user02', '충청남도 천안시 서북구 두정역길22 222동 222호', '손동은', '경비실에 맡겨주세요');
INSERT INTO delivery_info VALUES ('user02', '충청남도 천안시 병천면 충절로1600 00관', '손동은', '경비실에 맡겨주세요');
INSERT INTO delivery_info VALUES ('user03', '충청남도 천안시 서북구 두정역길33 333동 333호', '안예준', '우편함에 넣어주세요');
INSERT INTO delivery_info VALUES ('user03', '충청남도 천안시 병천면 충절로1600 00관', '안예준', '무인 택배함에 넣어주세요');
INSERT INTO delivery_info VALUES ('user04', '충청남도 천안시 서북구 두정역길44 444동 444호', '김성연', NULL);
INSERT INTO delivery_info VALUES ('user04', '충청남도 천안시 병천면 충절로1600 컴퓨터공학부', '김성연', '문 앞에 놓아주세요');
INSERT INTO delivery_info VALUES ('user05', '충청남도 천안시 병천면 충절로1600 00관', '윤성빈', '무인 택배함에 넣어주세요');
INSERT INTO delivery_info VALUES ('user05', '충청남도 천안시 병천면 충절로1600 컴퓨터공학부', '윤성빈', '문 앞에 놓아주세요');

-- 결제_유형_코드
INSERT INTO payment_type VALUES (1, '계좌이체');
INSERT INTO payment_type VALUES (2, '카드결제');
INSERT INTO payment_type VALUES (3, '무통장 입금');
INSERT INTO payment_type VALUES (4, '페이결제');
INSERT INTO payment_type VALUES (5, '휴대폰소액결제');

-- 구매_상태_코드
INSERT INTO purchase_state VALUES (1, DEFAULT);
INSERT INTO purchase_state VALUES (2,'취소요청');
INSERT INTO purchase_state VALUES (3,'교환요청');
INSERT INTO purchase_state VALUES (4, '반품요청');
INSERT INTO purchase_state VALUES (5, '환불요청');

-- 상품_구매하다
INSERT INTO prod_purchase VALUES (1, 'user01', 1, DEFAULT, DEFAULT, 3000, 0, 53000, 1, 1);
UPDATE product 
SET sales_volume = sales_volume + 1 
WHERE prod_num = 1;

INSERT INTO prod_purchase VALUES (2, 'user01', 11, DEFAULT, DEFAULT, 3000, 0, 153000, 1, 1);
UPDATE product 
SET sales_volume = sales_volume + 1 
WHERE prod_num = 11;

INSERT INTO prod_purchase VALUES (3, 'user02', 2, DEFAULT, 2, 3000, 0, 103000, 2, 1);
UPDATE product 
SET sales_volume = sales_volume + 2 
WHERE prod_num = 2;

INSERT INTO prod_purchase VALUES (4, 'user02', 12, DEFAULT, 2, 3000, 0, 107000, 2, 2);
UPDATE product 
SET sales_volume = sales_volume + 2 
WHERE prod_num = 12;

INSERT INTO prod_purchase VALUES (5, 'user03', 3, DEFAULT, DEFAULT, 3000, 0, 122000 , 3, 1);
UPDATE product 
SET sales_volume = sales_volume + 1 
WHERE prod_num = 3;

INSERT INTO prod_purchase VALUES (6, 'user03', 13, DEFAULT, DEFAULT, 3000, 0, 73000, 3, 3);
UPDATE product 
SET sales_volume = sales_volume + 1 
WHERE prod_num = 13;

INSERT INTO prod_purchase VALUES (7, 'user04', 4, DEFAULT, 2, 3000, 4000, 197000 , 4, 1);
UPDATE product 
SET sales_volume = sales_volume + 2 
WHERE prod_num = 4;

INSERT INTO prod_purchase VALUES (8, 'user04', 14, DEFAULT, 2, 3000, 4000 , 219,000 , 4, 4);
UPDATE product 
SET sales_volume = sales_volume + 2 
WHERE prod_num = 14;

INSERT INTO prod_purchase VALUES (9, 'user05', 5, DEFAULT, 1, 4000, 5000, 247000 , 5, 1);
UPDATE product 
SET sales_volume = sales_volume + 1 
WHERE prod_num = 5;

INSERT INTO prod_purchase VALUES (10, 'user05', 15, DEFAULT,1, 4000, 5000, 60500 , 5, 5);
UPDATE product 
SET sales_volume = sales_volume + 1 
WHERE prod_num = 15;


-- 장바구니_담다
INSERT INTO put_in_cart VALUES ('user01', 1, DEFAULT, DEFAULT);
INSERT INTO put_in_cart VALUES ('user01', 2, 2, DEFAULT);
INSERT INTO put_in_cart VALUES ('user02', 3, DEFAULT, DEFAULT);
INSERT INTO put_in_cart VALUES ('user02', 4, 2, DEFAULT);
INSERT INTO put_in_cart VALUES ('user03', 5, DEFAULT, DEFAULT);
INSERT INTO put_in_cart VALUES ('user03', 6, 2, DEFAULT);
INSERT INTO put_in_cart VALUES ('user04', 7, DEFAULT, DEFAULT);
INSERT INTO put_in_cart VALUES ('user04', 8, 2, DEFAULT);
INSERT INTO put_in_cart VALUES ('user05', 9, DEFAULT, DEFAULT);
INSERT INTO put_in_cart VALUES ('user05', 10, 2, DEFAULT);

-- 문의하다
INSERT INTO request VALUES (1, 'user01', 1, DEFAULT, '상품주문한지 오래됬는데 배송이 안옵니다');
INSERT INTO request VALUES (2, 'user01', 11, DEFAULT, '상품주문한지 오래됬는데 배송이 안옵니다');
INSERT INTO request VALUES (3, 'user02', 1, DEFAULT, '상품 배송완료까지 몇일 정도 걸리나요?');
INSERT INTO request VALUES (4, 'user02', 3, DEFAULT, '해당 제품 건조기 돌려도 되나요?');
INSERT INTO request VALUES (5, 'user03', 4, DEFAULT, '해당 제품 건조기 돌려도 되나요?');
INSERT INTO request VALUES (6, 'user03', 5, DEFAULT, '연휴에 배송하나요?');
INSERT INTO request VALUES (7, 'user04', 6, DEFAULT, '다른 색상의 세트상품을 판매하나요?');
INSERT INTO request VALUES (8, 'user04', 7, DEFAULT, '상품 배송완료까지 몇일 정도 걸리나요?');
INSERT INTO request VALUES (9, 'user05', 8, DEFAULT, '연휴에 배송하나요??');
INSERT INTO request VALUES (10, 'user05', 9, DEFAULT, '연휴에 배송하나요?');

-- 구매_취소하다
INSERT INTO purchase_cancel VALUES (2, 'user02', 12, DEFAULT, '상품관련해서 단순 변심으로 구매 취소합니다.');
UPDATE product 
SET sales_volume = sales_volume - 2 
WHERE prod_num = 12;

INSERT INTO purchase_cancel VALUES (3, 'user03', 13, DEFAULT, '상품이 파손되서 왔습니다. 환불요청합니다.');

INSERT INTO purchase_cancel VALUES (4, 'user04', 14, DEFAULT, '다른 상품이 잘못 배송되어 교환요청합니다'); 
UPDATE product 
SET sales_volume = sales_volume - 2 
WHERE prod_num = 14;

INSERT INTO purchase_cancel VALUES (5, 'user05', 15, DEFAULT, '상품의 사이즈가 맞지 않아서 반품요청합니다'); 
UPDATE product 
SET sales_volume = sales_volume - 1 
WHERE prod_num = 15;



-- INSERT INTO fashinshow (fs_code, fs_name, loc, hold_day, start_time, end_time, now_headcount, min_headcount, max_headcount, fee, like_num);
INSERT INTO fashinshow (fs_code, fs_name, loc, hold_day, start_time, end_time, now_headcount, min_headcount, max_headcount, fee)
	VALUES('KWPUB2024', '2024 K-Week', '서울 강남구 코엑스', TO_DATE('2024-08-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-08-15 10:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_TIMESTAMP('2024-08-15 18:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), 0, 30, 3000, 5000);

INSERT INTO fashinshow (fs_code, fs_name, loc, hold_day, start_time, end_time, now_headcount, min_headcount, max_headcount, fee)
	VALUES('KCWPUB2024', '2024 한복문화주간', '서울 서초구 양재 AT센터', TO_DATE('2024-08-27', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-08-27 13:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_TIMESTAMP('2024-08-27 17:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), 0, 10, 1000, 0);

INSERT INTO fashinshow (fs_code, fs_name, loc, hold_day, start_time, end_time, now_headcount, min_headcount, max_headcount, fee)
	VALUES('JSD5002024', '조선 왕조 500년의 멋', '서울 강남구 에스모드 서울', TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-09-01 12:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_TIMESTAMP('2024-09-01 19:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), 0, 20, 700, 0);

INSERT INTO fashinshow (fs_code, fs_name, loc, hold_day, start_time, end_time, now_headcount, min_headcount, max_headcount, fee)
	VALUES('BLDR2024', '2024 청룡의 해 패션쇼', '서울 중구 DDP', TO_DATE('2024-07-05', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-07-05 09:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_TIMESTAMP('2024-07-05 17:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), 0, 50, 2500, 10000);

INSERT INTO fashinshow (fs_code, fs_name, loc, hold_day, start_time, end_time, now_headcount, min_headcount, max_headcount, fee)
	VALUES('GDSL2024', '황금의 나라 신라, 장신구 문화의 꽃을 피우다.', '서울 서초구 양재 AT센터', TO_DATE('2024-07-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-07-09 10:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), TO_TIMESTAMP('2024-07-09 18:00:00.00', 'YYYY-MM-DD HH24:MI:SS.FF'), 0, 70, 3000, 0);

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('GDSL2024D001', '청산별곡', '일반참가', 10, '금으로 만든 전통 장신구(비녀, 떨잠 등)', 'GDSL2024', '승인중'); 

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('KCWPUB2024D001', '단아한복', '일반참가', 5, '과하지 않고 일상 속에서 편히 입을 수 있는 생활 한복을 추구', 'KCWPUB2024', '승인중'); 

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('KCWPUB2024D002', '해태', '일반참가', 7, '웅장한 한국의 멋. 사방신과 십장생을 모티브로 하여 제작한 한복을 전시', 'KCWPUB2024', '승인중'); 

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('KCWPUB2024D003', '단청마루', '일반참가', 3, '한국의 전통 문양을 살려 현대에 적용. 단청 키캡등 한국의 미를 살린 다양한 물품 소개', 'KCWPUB2024', '승인중'); 

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('KWPUB2024D001', '일월오봉도', '일반참가', 10, '우리의 전통을 ICONIC하게 재해석한 신세대 한복', 'KWPUB2024', '승인중'); 

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('KWPUB2024D002', '김가네 한복집', '일반참가', 3, '큰 개량을 거치지 않은 전통 그대로의 한복', 'KWPUB2024', '승인중'); 

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('JSD5002024D001', '명동 상점', '연합참가', 20, '조선 시대 전통 의상들을 현대식으로 재해석한 생활한복', 'JSD5002024', '승인중');

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('BLDR2024D001', '청사초롱', '일반참가', 13, '청룡을 모티브로 제작한 장신구 ONLY 전시 및 현장 판매', 'BLDR2024', '승인중'); 

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('GDSL2024D002', '한복의 모든 것', '연합참가', 10, '신라시대의 전통 한복과 전통 장신구를 자랑', 'GDSL2024', '승인중'); 

INSERT INTO designer_team (team_code, team_name, attend_category, dressed_up_num, concept, fs_code, approval)
	VALUES ('BLDR2024D002', '윤슬', '일반참가', 8, '청룡의 해를 기념하여 청룡을 모티브로 제작한 장신구 및 한복 디자인 전시', 'BLDR2024', '승인중');


INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('GDSL2024신001', '금제악세사리마켓', '전통 금품 장신구', '김영희', '8201012340001', 'yhkim@koreatech.ac.kr', '계획1', 'GDSL2024', 'GDSL2024D001');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('KCWPUB2024대001', '단아한복', '노멀한 생활 한복', '박철수', '8201012340002', 'pcs@koreatech.ac.kr', '계획2', 'KCWPUB2024', 'KCWPUB2024D001');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('KCWPUB2024대002', '경복궁 스타일', '궁중 한복 양식 추구', '이컴공', '8201012340003', 'cseLee@koreatech.ac.kr', '계획3', 'KCWPUB2024', 'KCWPUB2024D002');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('KCWPUB2024한001', '양반가 기왓집의 기와 하나', '한국 전통 문양을 이용한 실생활 디자인', '신기계', '8201012340004', 'machine@koreatech.ac.kr', '계획4', 'KCWPUB2024', 'KCWPUB2024D003');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('KWPUB2024대001', '아이브 그리고 일월오봉도', '전통과 현대의 만남', '강메카', '8201012340005', 'mecha@koreatech.ac.kr', '계획5', 'KWPUB2024', 'KWPUB2024D001');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('KWPUB2024민001', '전통500년 김가네', '옛 전통 복식 그대로 전파', '임전기', '8201012340006', 'trical@koreatech.ac.kr', '계획6', 'KWPUB2024', 'KWPUB2024D002');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('JSD2024조001', '명동의 길거리', '전통 문화를 현대에 어울리게', '임전자', '8201012340007', 'tronic@koreatech.ac.kr', '계획7', 'JSD5002024', 'JSD5002024D001');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('JSD5002024조002', '명동의 길거리', '전통 문화를 현대에 어울리게', '임전자', '8201012340007', 'tronic@koreatech.ac.kr', '계획7', 'JSD5002024', 'JSD5002024D001');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('JSD5002024조003', '명동의 길거리', '전통 문화를 현대에 어울리게', '임전자', '8201012340007', 'tronic@koreatech.ac.kr', '계획7', 'JSD5002024', 'JSD5002024D001');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('BLDR2024청001', '청사초롱 불 밝혀라', '청룡의 해 장신구', '백통신', '8201012340008', 'commu@koreatech.ac.kr', '계획8', 'BLDR2024', 'BLDR2024D001');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('GDSL2024라001', '한복많이사랑해주세요', '신라시대 전통 한복/장신구', '이컴공', '8201012340003', 'cseLee@koreatech.ac.kr', '계획9', 'GDSL2024', 'GDSL2024D002');

INSERT INTO booth (booth_code, booth_name, booth_sub, manager_name, manager_phone, manager_email, planning, fs_code, team_code)
	VALUES ('BLDR2024청003', '한복맛집 윤슬', '생활한복에 청룡을 더하다', '강메카', '8201012340005', 'mecha@koreatech.ac.kr', '계획10', 'BLDR2024', 'BLDR2024D002');

--

INSERT INTO interest_field (interest_code, field)
	VALUES (001, '전통한복');

INSERT INTO interest_field (interest_code, field)
	VALUES (002, '생활한복');

INSERT INTO interest_field (interest_code, field)
	VALUES (003, '장신구');

INSERT INTO interest_field (interest_code, field)
	VALUES (004, '전통문양');

INSERT INTO interest_field (interest_code, field)
	VALUES (005, '제작기술');

--

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('GDSL2024D001', '청산별곡');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('KCWPUB2024D001', '단아한복');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('KCWPUB2024D002', '해태');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('KCWPUB2024D003', '단청마루');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('KWPUB2024D001', '일월오봉도');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('KWPUB2024D002', '김가네 한복집');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('JSD5002024D001', '팔방미인');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('JSD5002024D001', '한아름 공방');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('BLDR2024D001', '청사초롱');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('GDSL2024D002', '진달래꽃');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('GDSL2024D002', '백의무봉');

INSERT INTO par_brand (team_code, brand_name)
	VALUES ('BLDR2024D002', '윤슬');

--

INSERT INTO like_fs (user_id, fs_code)
	VALUES ('user01', 'KWPUB2024');

UPDATE fashinshow
	SET    like_num = like_num + 1
	WHERE  fs_code = 'KWPUB2024';

INSERT INTO like_fs (user_id, fs_code)
	VALUES ('user02', 'KCWPUB2024');

UPDATE fashinshow
	SET    like_num = like_num + 1
	WHERE  fs_code = 'KCWPUB2024';

INSERT INTO like_fs (user_id, fs_code)
	VALUES ('user03', 'JSD5002024');

UPDATE fashinshow
	SET    like_num = like_num + 1
	WHERE  fs_code = 'JSD5002024';

INSERT INTO like_fs (user_id, fs_code)
	VALUES ('user04', 'BLDR2024');

UPDATE fashinshow
	SET    like_num = like_num + 1
	WHERE  fs_code = 'BLDR2024';

INSERT INTO like_fs (user_id, fs_code)
	VALUES ('user05', 'GDSL2024');

UPDATE fashinshow
	SET    like_num = like_num + 1
	WHERE  fs_code = 'GDSL2024';

INSERT INTO like_fs (user_id, fs_code)
	VALUES ('user06', 'GDSL2024');

UPDATE fashinshow
	SET    like_num = like_num + 1
	WHERE  fs_code = 'GDSL2024';

INSERT INTO like_fs (user_id, fs_code)
	VALUES ('user07', 'JSD5002024');

UPDATE fashinshow
	SET    like_num = like_num + 1
	WHERE  fs_code = 'JSD5002024';

--

INSERT INTO normal_par_f (user_id, fs_code, interest_code, approval)
	VALUES ('user01', 'GDSL2024', 003, '승인중');

INSERT INTO normal_par_f (user_id, fs_code, interest_code, approval)
	VALUES ('user03', 'KWPUB2024', 001, '승인중');

INSERT INTO normal_par_f (user_id, fs_code, interest_code, approval)
	VALUES ('user04', 'JSD5002024', 005, '승인중');

--

INSERT INTO belong_team (user_id, team_code, approval)
	VALUES ('user07', 'JSD5002024D001', '승인중');

INSERT INTO belong_team (user_id, team_code, approval)
	VALUES ('user08', 'GDSL2024D002', '승인중');

INSERT INTO belong_team (user_id, team_code, approval)
	VALUES ('user09', 'KCWPUB2024D002', '승인중');

--

INSERT INTO reg_for_f (prod_num, team_code)
	VALUES (1, 'KCWPUB2024D002');

INSERT INTO reg_for_f (prod_num, team_code)
	VALUES (12, 'KCWPUB2024D001');

INSERT INTO reg_for_f (prod_num, team_code)
	VALUES (16, 'GDSL2024D002');

INSERT INTO reg_for_f (prod_num, team_code)
	VALUES (20, 'KWPUB2024D002');

INSERT INTO reg_for_f (prod_num, team_code)
	VALUES (26, 'KWPUB2024D002');
DEFINE DEF_ID = '&아이디';

INSERT INTO usr (user_id, passwrd, user_name, phone_number, nickname, gender, email, birth, grade)
	VALUES ('&DEF_ID', '&비밀번호', '&이름', '&전화번호', '&닉네임', '&성별', '&이메일', DATE '&생일', 1);

INSERT INTO designer_usr (user_id, ret_addr, account, career_cert)
		VALUES ('&DEF_ID', '&주소', '&계좌', '&경력증명서');
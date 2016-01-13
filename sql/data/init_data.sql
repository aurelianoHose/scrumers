---------------------
-- users  
---------------------
INSERT INTO users(id, login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first,  user_id, added, modified, del) 
    VALUES (0, 'system', md5('secret'), 'avatar0', '', 'system', null, null, null, null, null, false, 0, now(), null, false);
ALTER TABLE users ADD CONSTRAINT fk_id_creator FOREIGN KEY (user_id) REFERENCES users (id) 
    MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION;
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first,  user_id, added, modified, del) 
    VALUES ('admin', md5('secret'), 'avatar', 'Админ', 'Админов', 'email.admin@gmain.com', '+375298429868', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del) 
    VALUES ('user1', md5('secret'), 'avatar1', 'Валера', 'Игорев', 'email.user1@gmain.com', '+375298429869', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del) 
    VALUES ('user2', md5('secret'), 'avatar2', 'Иннокентий', 'Варфоломеевич', 'email.user2@gmain.com', '+375298429869', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del) 
    VALUES ('user3', md5('secret'), 'avatar3', 'Геннадий', 'Запорожный', 'email.user3@gmain.com', '+375298424869', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del) 
    VALUES ('user4', md5('secret'), 'avatar4', 'Евгений', 'Жук', 'email.user4@gmain.com', '+375298429870', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user5', md5('secret'), 'avatar5', 'Сара', 'Коннор', 'email.user5@gmain.com', '+375298429169', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user6', md5('secret'), 'avatar6', 'Василий', 'Васюков', 'email.user6@gmain.com', '+375295229869', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user7', md5('secret'), 'avatar7', 'Никанор', 'Удмурфиевич', 'email.use71@gmain.com', '+375298429569', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user8', md5('secret'), 'avatar8', 'Микола', 'Задорожный', 'email.user8@gmain.com', '+375298429123', 1, 1, 1, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user9', md5('secret'), 'avatar9', 'Трисс', 'Меригольд', 'email.user9@gmain.com', '+375297829869', 1, 2, 2, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user10', md5('secret'), 'avatar10', 'Геннадий', 'Букин', 'email.user1@gmain.com', '+375298428869', 1, 2, 2, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user11', md5('secret'), 'avatar11', 'Сергей', 'Сергеев', 'email.user11@gmain.com', '+375298789869', 1, 2, 2, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user12', md5('secret'), 'avatar12', 'Андрей', 'Андреев', 'email.user12@gmain.com', '+375298429489', 1, 2, 2, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user13', md5('secret'), 'avatar13', 'Тим', 'Рот', 'email.user13@gmain.com', '+375298829869', 1, 2, 2, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user14', md5('secret'), 'avatar14', 'Вася', 'Пупкин', 'email.user14@gmain.com', '+375298424589', 1, 2, 2, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user15', md5('secret'), 'avatar15', 'Эмгыр', 'вар Эмрейс', 'email.user15@gmain.com', '+375278429869', 1, 2, 2, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user16', md5('secret'), 'avatar16', 'Владимир', 'Владимиров', 'email.user16@gmain.com', '+375298429823', 2, 3, 3, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user17', md5('secret'), 'avatar17', 'Алеся', 'Залесная', 'email.user17@gmain.com', '+375298427859', 2, 3, 3, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user18', md5('secret'), 'avatar18', 'Светлана', 'Светикова', 'email.user18@gmain.com', '+375298458269', 2, 3, 3, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user19', md5('secret'), 'avatar19', 'Геральт', 'из Ривии', 'email.user19@gmain.com', '+375298421299', 2, 3, 3, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user20', md5('secret'), 'avatar20', 'Тимур', 'Вяль', 'email.user20@gmain.com', '+375298429859', 2, 3, 3, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user21', md5('secret'), 'avatar21', 'Андрей', 'Дубовец', 'email.user21@gmain.com', '+375297429869', 2, 3, 3, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user22', md5('secret'), 'avatar22', 'Игорь', 'Обухов', 'email.user22@gmain.com', '+375295486869', 2, 3, 3, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user23', md5('secret'), 'avatar23', 'Егор', 'Шальной', 'email.user23@gmain.com', '+375298429865', 2, 4, 4, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user24', md5('secret'), 'avatar24', 'Йенифер', 'из Венгерберга', 'email.user24@gmain.com', '+375298445869', 2, 4, 4, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user25', md5('secret'), 'avatar25', 'Николай', 'Игорев', 'email.user25@gmain.com', '+375298424569', 2, 4, 4, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user26', md5('secret'), 'avatar26', 'Дждастин', 'Бибер', 'email.user26@gmain.com', '+375298449869', 2, 4, 4, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user27', md5('secret'), 'avatar27', 'fname27', 'sname27', 'email.user27@gmain.com', '+375298429269', 2, 4, 4, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user28', md5('secret'), 'avatar28', 'fname28', 'sname28', 'email.user28@gmain.com', '+375291229869', 2, 4, 4, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user29', md5('secret'), 'avatar29', 'fname29', 'sname29', 'email.user29@gmain.com', '+375298429369', 2, 4, 4, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user30', md5('secret'), 'avatar30', 'fname30', 'sname30', 'email.user30@gmain.com', '+375299429869', 2, 5, 5, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user31', md5('secret'), 'avatar31', 'fname31', 'sname31', 'email.user31@gmain.com', '+375298445869', 2, 5, 5, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user32', md5('secret'), 'avatar32', 'fname32', 'sname32', 'email.user32@gmain.com', '+375298429869', 2, 5, 5, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user33', md5('secret'), 'avatar33', 'fname33', 'sname33', 'email.user33@gmain.com', '+375298429869', 2, 5, 5, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user34', md5('secret'), 'avatar34', 'fname34', 'sname34', 'email.user34@gmain.com', '+375298429869', 2, 5, 5, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user35', md5('secret'), 'avatar35', 'fname35', 'sname35', 'email.user35@gmain.com', '+375298429869', 2, 5, 5, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user36', md5('secret'), 'avatar36', 'fname36', 'sname36', 'email.user36@gmain.com', '+375298429869', 2, 5, 5, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user37', md5('secret'), 'avatar37', 'fname37', 'sname37', 'email.user37@gmain.com', '+375298429869', 2, 6, 6, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user38', md5('secret'), 'avatar38', 'fname38', 'sname38', 'email.user38@gmain.com', '+375298429869', 2, 6, 6, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user39', md5('secret'), 'avatar39', 'fname39', 'sname39', 'email.user39@gmain.com', '+375298429869', 2, 6, 6, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user40', md5('secret'), 'avatar40', 'fname40', 'sname40', 'email.user40@gmain.com', '+375298429869', 2, 6, 6, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user41', md5('secret'), 'avatar41', 'fname41', 'sname41', 'email.user41@gmain.com', '+375298429869', 2, 6, 6, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user42', md5('secret'), 'avatar42', 'fname42', 'sname42', 'email.user42@gmain.com', '+375298429869', 2, 6, 6, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user43', md5('secret'), 'avatar43', 'fname43', 'sname43', 'email.user43@gmain.com', '+375298429869', 2, 6, 6, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user44', md5('secret'), 'avatar44', 'fname44', 'sname44', 'email.user44@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user45', md5('secret'), 'avatar45', 'fname45', 'sname45', 'email.user45@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user46', md5('secret'), 'avatar46', 'fname46', 'sname46', 'email.user46@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user47', md5('secret'), 'avatar47', 'fname47', 'sname47', 'email.user47@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user48', md5('secret'), 'avatar48', 'fname48', 'sname48', 'email.user48@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user49', md5('secret'), 'avatar49', 'fname49', 'sname49', 'email.user49@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user50', md5('secret'), 'avatar50', 'fname50', 'sname50', 'email.user50@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user51', md5('secret'), 'avatar51', 'fname51', 'sname51', 'email.user51@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user52', md5('secret'), 'avatar52', 'fname52', 'sname52', 'email.user52@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user53', md5('secret'), 'avatar53', 'fname53', 'sname53', 'email.user53@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user54', md5('secret'), 'avatar54', 'fname54', 'sname54', 'email.user54@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user55', md5('secret'), 'avatar55', 'fname55', 'sname55', 'email.user55@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user56', md5('secret'), 'avatar56', 'fname56', 'sname56', 'email.user56@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);
INSERT INTO users(login, passwd, avatar, fname, sname, email, phone, actual_organization, actual_product, actual_iteration,  is_first, user_id, added, modified, del)
     VALUES ('user57', md5('secret'), 'avatar57', 'fname57', 'sname57', 'email.user57@gmain.com', '+375298429869', 3, 7, 7, false, 0, now(), null, false);

---------------------
-- roles
---------------------
INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('user');

---------------------
-- users_roles
---------------------
INSERT INTO users_roles (user_id, role_id) VALUES (0,1);
INSERT INTO users_roles (user_id, role_id) VALUES (1,1);
INSERT INTO users_roles (user_id, role_id) VALUES (1,2);
INSERT INTO users_roles (user_id, role_id) VALUES (2,2);
INSERT INTO users_roles (user_id, role_id) VALUES (3,2);
INSERT INTO users_roles (user_id, role_id) VALUES (4,2);
INSERT INTO users_roles (user_id, role_id) VALUES (5,2);
INSERT INTO users_roles (user_id, role_id) VALUES (6,2);
INSERT INTO users_roles (user_id, role_id) VALUES (7,2);
INSERT INTO users_roles (user_id, role_id) VALUES (8,2);
INSERT INTO users_roles (user_id, role_id) VALUES (9,2);
INSERT INTO users_roles (user_id, role_id) VALUES (10,2);
INSERT INTO users_roles (user_id, role_id) VALUES (11,2);
INSERT INTO users_roles (user_id, role_id) VALUES (12,2);
INSERT INTO users_roles (user_id, role_id) VALUES (13,2);
INSERT INTO users_roles (user_id, role_id) VALUES (14,2);
INSERT INTO users_roles (user_id, role_id) VALUES (15,2);
INSERT INTO users_roles (user_id, role_id) VALUES (16,2);
INSERT INTO users_roles (user_id, role_id) VALUES (17,2);
INSERT INTO users_roles (user_id, role_id) VALUES (18,2);
INSERT INTO users_roles (user_id, role_id) VALUES (19,2);
INSERT INTO users_roles (user_id, role_id) VALUES (20,2);
INSERT INTO users_roles (user_id, role_id) VALUES (21,2);
INSERT INTO users_roles (user_id, role_id) VALUES (22,2);
INSERT INTO users_roles (user_id, role_id) VALUES (23,2);
INSERT INTO users_roles (user_id, role_id) VALUES (24,2);
INSERT INTO users_roles (user_id, role_id) VALUES (25,2);
INSERT INTO users_roles (user_id, role_id) VALUES (26,2);
INSERT INTO users_roles (user_id, role_id) VALUES (27,2);
INSERT INTO users_roles (user_id, role_id) VALUES (28,2);
INSERT INTO users_roles (user_id, role_id) VALUES (29,2);
INSERT INTO users_roles (user_id, role_id) VALUES (30,2);
INSERT INTO users_roles (user_id, role_id) VALUES (31,2);
INSERT INTO users_roles (user_id, role_id) VALUES (32,2);
INSERT INTO users_roles (user_id, role_id) VALUES (33,2);
INSERT INTO users_roles (user_id, role_id) VALUES (34,2);
INSERT INTO users_roles (user_id, role_id) VALUES (35,2);
INSERT INTO users_roles (user_id, role_id) VALUES (36,2);
INSERT INTO users_roles (user_id, role_id) VALUES (37,2);
INSERT INTO users_roles (user_id, role_id) VALUES (38,2);
INSERT INTO users_roles (user_id, role_id) VALUES (39,2);
INSERT INTO users_roles (user_id, role_id) VALUES (40,2);
INSERT INTO users_roles (user_id, role_id) VALUES (41,2);
INSERT INTO users_roles (user_id, role_id) VALUES (42,2);
INSERT INTO users_roles (user_id, role_id) VALUES (43,2);
INSERT INTO users_roles (user_id, role_id) VALUES (44,2);
INSERT INTO users_roles (user_id, role_id) VALUES (45,2);
INSERT INTO users_roles (user_id, role_id) VALUES (46,2);
INSERT INTO users_roles (user_id, role_id) VALUES (47,2);
INSERT INTO users_roles (user_id, role_id) VALUES (48,2);
INSERT INTO users_roles (user_id, role_id) VALUES (49,2);
INSERT INTO users_roles (user_id, role_id) VALUES (50,2);

---------------------
-- team
---------------------
INSERT INTO team (name, user_id, added, modified, del) VALUES ('Dream Team', 2, now(), null, false);
INSERT INTO team (name, user_id, added, modified, del) VALUES ('Red team', 0, now(), null, false);
INSERT INTO team (name, user_id, added, modified, del) VALUES ('Red Sox', 0, now(), null, false);
INSERT INTO team (name, user_id, added, modified, del) VALUES ('Spyrse', 0, now(), null, false);
INSERT INTO team (name, user_id, added, modified, del) VALUES ('Chicago Bulls', 0, now(), null, false);
INSERT INTO team (name, user_id, added, modified, del) VALUES ('Manchester', 0, now(), null, false);
INSERT INTO team (name, user_id, added, modified, del) VALUES ('Liverpool', 0, now(), null, false);

---------------------
-- roles_team
---------------------
INSERT INTO roles_team (name) VALUES ('master');
INSERT INTO roles_team (name) VALUES ('developer');

---------------------
-- users_team
---------------------
INSERT INTO users_team (user_id, team_id, role_id) VALUES (2, 1, 1);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (3, 1, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (4, 1, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (5, 1, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (6, 1, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (7, 1, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (8, 1, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (9, 2, 1);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (10, 2, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (11, 2, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (12, 2, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (13, 2, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (14, 2, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (15, 2, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (16, 3, 1);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (17, 3, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (18, 3, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (19, 3, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (20, 3, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (21, 3, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (22, 3, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (23, 4, 1);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (24, 4, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (25, 4, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (26, 4, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (27, 4, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (28, 4, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (29, 4, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (30, 5, 1);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (31, 5, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (32, 5, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (33, 5, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (34, 5, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (35, 5, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (36, 5, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (37, 6, 1);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (38, 6, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (39, 6, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (40, 6, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (41, 6, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (42, 6, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (43, 6, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (44, 7, 1);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (45, 7, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (46, 7, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (47, 7, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (48, 7, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (49, 7, 2);
INSERT INTO users_team (user_id, team_id, role_id) VALUES (50, 7, 2);


---------------------
-- product
---------------------
INSERT INTO product (name, descr, owner, user_id, added)
    VALUES ('prduct1', 'this is product number 1', 51, 2, now ());
INSERT INTO product (name, descr, owner, user_id, added)
    VALUES ('prduct2', 'this is product number 2', 52, 10, now ());
INSERT INTO product (name, descr, owner, user_id, added)
    VALUES ('prduct3', 'this is product number 3', 53, 17, now ());
INSERT INTO product (name, descr, owner, user_id, added)
    VALUES ('prduct4', 'this is product number 4', 54, 23, now ());
INSERT INTO product (name, descr, owner, user_id, added)
    VALUES ('prduct5', 'this is product number 5', 55, 31, now ());
INSERT INTO product (name, descr, owner, user_id, added)
    VALUES ('prduct6', 'this is product number 6', 56, 38, now ());
INSERT INTO product (name, descr, owner, user_id, added)
    VALUES ('prduct7', 'this is product number 7', 57, 47, now ());

/*ALTER TABLE users ADD
    CONSTRAINT fk_actual_product FOREIGN KEY (actual_product)
    REFERENCES product (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION;*/

    ---------------------
-- organization
---------------------
INSERT INTO organization (name, user_id, added) VALUES ('organization1', 0, now ());
INSERT INTO organization (name, user_id, added) VALUES ('organization2', 0, now ());
INSERT INTO organization (name, user_id, added) VALUES ('organization3', 0, now ());

/*ALTER TABLE users ADD
    CONSTRAINT fk_actual_organization FOREIGN KEY (actual_organization)
    REFERENCES organization (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION;*/
---------------------
-- organization_product
---------------------
INSERT INTO organization_product (organization_id, product_id) VALUES (1,1);
INSERT INTO organization_product (organization_id, product_id) VALUES (1,2);
INSERT INTO organization_product (organization_id, product_id) VALUES (2,3);
INSERT INTO organization_product (organization_id, product_id) VALUES (2,4);
INSERT INTO organization_product (organization_id, product_id) VALUES (3,5);
INSERT INTO organization_product (organization_id, product_id) VALUES (3,6);
INSERT INTO organization_product (organization_id, product_id) VALUES (3,7);


---------------------
-- organization_team
---------------------
INSERT INTO organization_team (organization_id, team_id) VALUES (1,1);
INSERT INTO organization_team (organization_id, team_id) VALUES (1,2);
INSERT INTO organization_team (organization_id, team_id) VALUES (2,3);
INSERT INTO organization_team (organization_id, team_id) VALUES (2,4);
INSERT INTO organization_team (organization_id, team_id) VALUES (3,5);
INSERT INTO organization_team (organization_id, team_id) VALUES (3,6);
INSERT INTO organization_team (organization_id, team_id) VALUES (3,7);


---------------------
-- team_product
---------------------
INSERT INTO team_product (team_id, product_id) VALUES (1, 1);
INSERT INTO team_product (team_id, product_id) VALUES (2, 2);
INSERT INTO team_product (team_id, product_id) VALUES (3, 3);
INSERT INTO team_product (team_id, product_id) VALUES (4, 4);
INSERT INTO team_product (team_id, product_id) VALUES (5, 5);
INSERT INTO team_product (team_id, product_id) VALUES (6, 6);
INSERT INTO team_product (team_id, product_id) VALUES (7, 7);


---------------------
--status
---------------------
INSERT INTO status (name) VALUES ('Todo');
INSERT INTO status (name) VALUES ('Doing');
INSERT INTO status (name) VALUES ('Reviewing');
INSERT INTO status (name) VALUES ('Done');


---------------------
--story
---------------------
INSERT INTO story (id, story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0, 1, 'Test data', 'Create DAO classes', 'XS', 20, 'how you want', 'track1', 3, 0, 0, '2015-05-15', '2015-05-15');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (1, 'DAO', 'Create DAO classes', 'XS', 20, 'how you want', 'track1', 3, 0, 0, '2015-05-15', '2015-05-15');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (2, 'Services', 'Create services', 'M', 20, 'how you want', 'track2', 2, 0, 0, '2015-05-15', '2015-05-15');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (3, 'SQL base', 'Create SQL base', 'S', 20, 'how you want', 'track3', 4, 0, 0, '2015-05-15', '2015-05-15');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (4, 'Ant script', 'Create ant-script', 'XL', 20, 'how you want', 'track4', 4, 0, 0,'2015-05-15', '2015-05-15');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (5, 'JUnit', 'Create JUnit tests', 'L', 20, 'how you want', 'track5', 1, 0, 0, '2015-05-16', '2015-05-15');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_6', 'this is story 6', 's', 20, 'how you want', 'track6', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_7', 'this is story 7', 's', 20, 'how you want', 'track7', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_8', 'this is story 8', 's', 20, 'how you want', 'track8', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_9', 'this is story 9', 's', 20, 'how you want', 'track9', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_10', 'this is story 10', 's', 20, 'how you want', 'track10', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_11', 'this is story 11', 's', 20, 'how you want', 'track11', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_12', 'this is story 12', 's', 20, 'how you want', 'track12', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_13', 'this is story 13', 's', 20, 'how you want', 'track13', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_14', 'this is story 14', 's', 20, 'how you want', 'track14', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_15', 'this is story 15', 's', 20, 'how you want', 'track15', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_16', 'this is story 16', 's', 20, 'how you want', 'track16', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_17', 'this is story 17', 's', 20, 'how you want', 'track17', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_18', 'this is story 18', 's', 20, 'how you want', 'track18', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_19', 'this is story 19', 's', 20, 'how you want', 'track19', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_20', 'this is story 20', 's', 20, 'how you want', 'track20', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_21', 'this is story 21', 's', 20, 'how you want', 'track21', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_22', 'this is story 22', 's', 20, 'how you want', 'track22', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_23', 'this is story 23', 's', 20, 'how you want', 'track23', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_24', 'this is story 24', 's', 20, 'how you want', 'track24', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_25', 'this is story 25', 's', 20, 'how you want', 'track25', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_26', 'this is story 26', 's', 20, 'how you want', 'track26', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_27', 'this is story 27', 's', 20, 'how you want', 'track27', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_28', 'this is story 28', 's', 20, 'how you want', 'track28', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_29', 'this is story 29', 's', 20, 'how you want', 'track29', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_30', 'this is story 30', 's', 20, 'how you want', 'track30', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_31', 'this is story 31', 's', 20, 'how you want', 'track31', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_32', 'this is story 32', 's', 20, 'how you want', 'track32', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_33', 'this is story 33', 's', 20, 'how you want', 'track33', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_34', 'this is story 34', 's', 20, 'how you want', 'track34', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (0010, 'story_35', 'this is story 35', 's', 20, 'how you want', 'track35', 1, 0, 0, now(), now());
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (6, 'Login page', 'Add login page with jQuery animations. More animations', 'S', 20, 'how you want', 'track36', 2, 7, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (7, 'Register page', 'Add register page with jQuery animations', 'XS', 20, 'how you want', 'track37', 1, 0, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (8, 'MyBatis', 'Create MyBatis xml files', 'M', 20, 'how you want', 'track38', 4, 2, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (9, 'Entities', 'Create Entities', 'XS', 20, 'how you want', 'track39', 2, 3, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (10, 'Add data to DB', 'Add data to DB', 'S', 20, 'how you want', 'track40', 4, 4, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (11, 'Options page', 'Create options page', 'M', 20, 'how you want', 'track41', 1, 5, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (12, 'Add EhCache', 'Add and tune EhCache', 'S', 20, 'how you want', 'track42', 1, 5, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (13, 'Create page Users', 'Create page Users', 'L', 20, 'how you want', 'track43', 1, 7, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (14, 'Create scrum board', 'Create scrum board', 'XL', 20, 'how you want', 'track44', 1, 8, 0, '2015-05-16', '2015-05-16');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (15, 'Add adding stories from backlog to iteration', 'Add adding stories from backlog to iteration', 'L', 20, 'how you want', 'track45', 1, 2, 0, '2015-05-17', '2015-05-17');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (16, 'Add validators to a conntrollers', 'Add validators to a conntrollers', 'M', 20, 'how you want', 'track46', 1, 3, 0, '2015-05-17', '2015-05-17');
INSERT INTO story (story_id, name, descr, story_points, estimate, how_to_demo, track, status_id, assignee, user_id, added, modified)
    VALUES (17, 'New disiegn', 'New disiegn', 'XL', 20, 'how you want', 'track47', 1, 4, 0, '2015-05-17', '2015-05-17');

---------------------
--task
---------------------
INSERT INTO task (id, task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (0, 1, 'test', 2, 4, 0, now(), 2);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary1', 2, 4, 0, now(), 2);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary2', 2, 4, 0, now(), 3);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary3', 2, 4, 0, now(), 2);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary4', 2, 4, 0, now(), 4);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary5', 2, 4, 0, now(), 2);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary6', 2, 1, 0, now(), 5);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary7', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary8', 2, 1, 0, now(), 3);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary9', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary10', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary11', 2, 4, 0, now(), 5);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary12', 2, 4, 0, now(), 5);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary13', 2, 4, 0, now(), 4);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary14', 2, 4, 0, now(), 5);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary15', 2, 4, 0, now(), 3);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary16', 2, 4, 0, now(), 2);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary17', 2, 4, 0, now(), 8);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary18', 2, 4, 0, now(), 7);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary19', 2, 4, 0, now(), 6);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary20', 2, 4, 0, now(), 5);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary21', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary22', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary23', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary24', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary25', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary26', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary27', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary28', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary29', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary30', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary31', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary32', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary33', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary34', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary35', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary36', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary37', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary38', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary39', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary40', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary41', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary42', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary43', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary44', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary45', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary46', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary47', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary48', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary49', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary50', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary51', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary52', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary53', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary54', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary55', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary56', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary57', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary58', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary59', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary60', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary61', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary62', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary63', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary64', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary65', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary66', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary67', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary68', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary69', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary70', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary71', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary72', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary73', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary74', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary75', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary76', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary77', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary78', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary79', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary80', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary81', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary82', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary83', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary84', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary85', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary86', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary87', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary88', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary89', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary90', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary91', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary92', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary93', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary94', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary95', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary96', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary97', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary98', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary99', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary100', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary101', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary102', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary103', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary104', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary105', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary106', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary107', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary108', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary109', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary110', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary111', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary112', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary113', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary114', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary115', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary116', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary117', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary118', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary119', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary120', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary121', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary122', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary123', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary124', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary125', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary126', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary127', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary128', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary129', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary130', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary131', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary132', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary133', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary134', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary135', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary136', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary137', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary138', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary139', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary140', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary141', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary142', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary143', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary144', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary145', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary146', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary147', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary148', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary149', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary150', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary151', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary152', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary153', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary154', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary155', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary156', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary157', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary158', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary159', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary160', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary161', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary162', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary163', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary164', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary165', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary166', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary167', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary168', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary169', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary170', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (1, 'summary171', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (2, 'summary172', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (3, 'summary173', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (4, 'summary174', 2, 1, 0, now(), 0);
INSERT INTO task (task_id, summary, estimate_pre, status_id, user_id, added, assignee)
    VALUES (5, 'summary175', 2, 1, 0, now(), 0);

---------------------
--story_tasks
---------------------
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (1, 1, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (1, 2, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (1, 3, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (1, 4, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (1, 5, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (2, 6, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (2, 7, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (2, 8, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (2, 9, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (2, 10, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (3, 11, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (3, 12, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (3, 13, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (3, 14, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (3, 15, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (4, 16, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (4, 17, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (4, 18, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (4, 19, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (4, 20, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (5, 21, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (5, 22, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (5, 23, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (5, 24, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (5, 25, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (6, 26, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (6, 27, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (6, 28, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (6, 29, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (6, 30, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (7, 31, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (7, 32, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (7, 33, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (7, 34, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (7, 35, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (8, 36, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (8, 37, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (8, 38, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (8, 39, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (8, 40, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (9, 41, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (9, 42, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (9, 43, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (9, 44, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (9, 45, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (10, 46, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (10, 47, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (10, 48, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (10, 49, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (10, 50, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (11, 51, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (11, 52, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (11, 53, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (11, 54, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (11, 55, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (12, 56, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (12, 57, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (12, 58, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (12, 59, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (12, 60, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (13, 61, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (13, 62, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (13, 63, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (13, 64, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (13, 65, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (14, 66, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (14, 67, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (14, 68, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (14, 69, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (14, 70, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (15, 71, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (15, 72, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (15, 73, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (15, 74, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (15, 75, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (16, 76, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (16, 77, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (16, 78, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (16, 79, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (16, 80, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (17, 81, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (17, 82, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (17, 83, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (17, 84, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (17, 85, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (18, 86, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (18, 87, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (18, 88, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (18, 89, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (18, 90, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (19, 91, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (19, 92, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (19, 93, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (19, 94, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (19, 95, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (20, 96, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (20, 97, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (20, 98, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (20, 99, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (20, 100, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (21, 101, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (21, 102, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (21, 103, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (21, 104, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (21, 105, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (22, 106, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (22, 107, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (22, 108, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (22, 109, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (22, 110, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (23, 111, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (23, 112, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (23, 113, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (23, 114, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (23, 115, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (24, 116, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (24, 117, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (24, 118, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (24, 119, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (24, 120, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (25, 121, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (25, 122, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (25, 123, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (25, 124, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (25, 125, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (26, 126, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (26, 127, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (26, 128, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (26, 129, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (26, 130, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (27, 131, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (27, 132, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (27, 133, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (27, 134, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (27, 135, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (28, 136, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (28, 137, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (28, 138, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (28, 139, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (28, 140, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (29, 141, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (29, 142, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (29, 143, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (29, 144, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (29, 145, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (30, 146, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (30, 147, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (30, 148, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (30, 149, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (30, 150, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (31, 151, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (31, 152, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (31, 153, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (31, 154, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (31, 155, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (32, 156, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (32, 157, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (32, 158, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (32, 159, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (32, 160, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (33, 161, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (33, 162, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (33, 163, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (33, 164, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (33, 165, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (34, 166, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (34, 167, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (34, 168, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (34, 169, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (34, 170, 5);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (35, 171, 1);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (35, 172, 2);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (35, 173, 3);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (35, 174, 4);
INSERT INTO story_tasks (story_id, task_id, priority) VALUES (35, 175, 5);

---------------------
--iteration
--------------------
INSERT INTO iteration (id, name, descr, date_start, date_end, iteration_num, user_id, added)
    VALUES (0, 'test data','this is iteration0', '2015-05-15', '2015-05-25', 1, 0, now());
INSERT INTO iteration (name, descr, date_start, date_end, iteration_num, user_id, added)
    VALUES ('iteration0','this is iteration0', '2015-05-15', '2015-05-25', 1, 0, now());
INSERT INTO iteration (name, descr, date_start, date_end, iteration_num, user_id, added)
    VALUES ('iteration1','this is iteration1', '2015-05-15', '2015-05-25', 1, 0, now());
INSERT INTO iteration (name, descr, date_start, date_end, iteration_num, user_id, added)
    VALUES ('iteration2','this is iteration2', '2015-05-15', '2015-05-25', 1, 0, now());
INSERT INTO iteration (name, descr, date_start, date_end, iteration_num, user_id, added)
    VALUES ('iteration3','this is iteration3', '2015-05-15', '2015-05-25', 1, 0, now());
INSERT INTO iteration (name, descr, date_start, date_end, iteration_num, user_id, added)
    VALUES ('iteration4','this is iteration4', '2015-05-15', '2015-05-25', 1, 0, now());
INSERT INTO iteration (name, descr, date_start, date_end, iteration_num, user_id, added)
    VALUES ('iteration5','this is iteration5', '2015-05-15', '2015-05-25', 1, 0, now());
INSERT INTO iteration (name, descr, date_start, date_end, iteration_num, user_id, added)
    VALUES ('iteration6','this is iteration6', '2015-05-15', '2015-05-25', 1, 0, now());


-----------------------
--plot_iteration
-----------------------
INSERT INTO plot_iteration (iteration_id, story_id, added) VALUES (1, 3, '2015-05-16');
INSERT INTO plot_iteration (iteration_id, story_id, added) VALUES (1, 4, '2015-05-17');
INSERT INTO plot_iteration (iteration_id, story_id, added) VALUES (1, 8, '2015-05-17');
INSERT INTO plot_iteration (iteration_id, story_id, added) VALUES (1, 10, '2015-05-18');

-----------------------
--iteration_story
-----------------------
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 1, 1);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 2, 2);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 3, 3);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 4, 4);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 5, 5);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 36, 6);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 37, 7);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 38, 8);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 39, 9);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 40, 10);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 41, 11);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (1, 42, 12);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (2, 6, 1);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (2, 7, 2);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (2, 8, 3);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (2, 9, 4);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (2, 10, 5);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (3, 11, 1);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (3, 12, 2);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (3, 13, 3);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (3, 14, 4);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (3, 15, 5);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (4, 16, 1);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (4, 17, 2);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (4, 18, 3);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (4, 19, 4);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (4, 20, 5);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (5, 21, 1);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (5, 22, 2);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (5, 23, 3);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (5, 24, 4);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (5, 25, 5);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (6, 26, 1);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (6, 2, 2);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (6, 29, 3);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (6, 30, 4);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (7, 31, 1);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (7, 32, 2);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (7, 33, 3);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (7, 34, 4);
INSERT INTO iteration_story (iteration_id, story_id, priority) VALUES (7, 35, 5);

-------------------
--product_story
-------------------
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 1, 1);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 2, 2);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 3, 3);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 4, 4);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 5, 5);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 36, 6);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 37, 7);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 38, 8);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 39, 9);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 40, 10);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 41, 11);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 42, 12);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 43, 13);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 44, 14);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 45, 15);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 46, 16);
INSERT INTO product_story (product_id, story_id, priority) VALUES (1, 47, 17);
INSERT INTO product_story (product_id, story_id, priority) VALUES (2, 6, 1);
INSERT INTO product_story (product_id, story_id, priority) VALUES (2, 7, 2);
INSERT INTO product_story (product_id, story_id, priority) VALUES (2, 8, 3);
INSERT INTO product_story (product_id, story_id, priority) VALUES (2, 9, 4);
INSERT INTO product_story (product_id, story_id, priority) VALUES (2, 10, 5);
INSERT INTO product_story (product_id, story_id, priority) VALUES (3, 11, 1);
INSERT INTO product_story (product_id, story_id, priority) VALUES (3, 12, 2);
INSERT INTO product_story (product_id, story_id, priority) VALUES (3, 13, 3);
INSERT INTO product_story (product_id, story_id, priority) VALUES (3, 14, 4);
INSERT INTO product_story (product_id, story_id, priority) VALUES (3, 15, 5);
INSERT INTO product_story (product_id, story_id, priority) VALUES (4, 16, 1);
INSERT INTO product_story (product_id, story_id, priority) VALUES (4, 17, 2);
INSERT INTO product_story (product_id, story_id, priority) VALUES (4, 18, 3);
INSERT INTO product_story (product_id, story_id, priority) VALUES (4, 19, 4);
INSERT INTO product_story (product_id, story_id, priority) VALUES (4, 20, 5);
INSERT INTO product_story (product_id, story_id, priority) VALUES (5, 21, 1);
INSERT INTO product_story (product_id, story_id, priority) VALUES (5, 22, 2);
INSERT INTO product_story (product_id, story_id, priority) VALUES (5, 23, 3);
INSERT INTO product_story (product_id, story_id, priority) VALUES (5, 24, 4);
INSERT INTO product_story (product_id, story_id, priority) VALUES (5, 25, 5);
INSERT INTO product_story (product_id, story_id, priority) VALUES (6, 26, 1);
INSERT INTO product_story (product_id, story_id, priority) VALUES (6, 27, 2);
INSERT INTO product_story (product_id, story_id, priority) VALUES (6, 28, 3);
INSERT INTO product_story (product_id, story_id, priority) VALUES (6, 29, 4);
INSERT INTO product_story (product_id, story_id, priority) VALUES (6, 30, 5);
INSERT INTO product_story (product_id, story_id, priority) VALUES (7, 31, 1);
INSERT INTO product_story (product_id, story_id, priority) VALUES (7, 32, 2);
INSERT INTO product_story (product_id, story_id, priority) VALUES (7, 33, 3);
INSERT INTO product_story (product_id, story_id, priority) VALUES (7, 34, 4);
INSERT INTO product_story (product_id, story_id, priority) VALUES (7, 35, 5);

----------------------
--product_iteration
----------------------
INSERT INTO product_iteration (product_id, iteration_id) VALUES (1, 1);
INSERT INTO product_iteration (product_id, iteration_id) VALUES (2, 2);
INSERT INTO product_iteration (product_id, iteration_id) VALUES (3, 3);
INSERT INTO product_iteration (product_id, iteration_id) VALUES (4, 4);
INSERT INTO product_iteration (product_id, iteration_id) VALUES (5, 5);
INSERT INTO product_iteration (product_id, iteration_id) VALUES (6, 6);
INSERT INTO product_iteration (product_id, iteration_id) VALUES (7, 7);

--------------------------
--story comments
--------------------------
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (1,1, 'Правда или вымысел — какая разница? Все станет правдой со временем, любая фигня!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (1,2, 'Никогда не отдавай приказ, если не уверен, что его выполнят!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (1,3, 'Почему, черт подери, ничего не изменилось в этом мире после моей смерти? Как это может быть, что солнце по-прежнему всходит и заходит и даже не споткнется? Почему, о мать моя, воскресенье осталось воскресеньем, а жара той же несносной жарой, что и при мне?', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (1,4, 'И он принял генерала Сатурно Сантоса к себе на службу, сделал своим гуардаэспальдасом, с тем, однако, условием, чтобы тот никогда не стоял у него за спиной.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (1,5, 'Приказываю в течение сорока восьми часов найти Деметрио Алдоуса живым и доставить его ко мне, если же он будет найден мертвым, то ко мне он должен быть доставлен живым, а если он вообще не будет найден, вы все равно обязаны доставить его ко мне.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (2,7, 'Жизнь трудна и быстротечна, но другой нет.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (2,2, 'Каждый из них в отдельности боялся президента, а президент боялся любого из них в паре с другим, так как двое – это уже заговор.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (2,1, '“Зачем ты лезешь в это дело, черт подери? Во имя чего ты хочешь умереть?” – на что молодой чужеземец без запинки отвечал: “Во славу своего отечества, ваше превосходительство! Во имя родины! Умереть за нее – высшее счастье!” И он, жалея молодого человека и улыбаясь ему грустной улыбкой, сказал: “Не будь дураком, парень, жизнь – это и есть родина!” И, разжав левый кулак, он показал молодому человеку лежащий на ладони стеклянный шарик: “Вот эта вещь, видишь? Она либо есть, либо ее нет, и только тот обладает ею, у кого она есть, парень! Так обстоит дело и с жизнью, и с родиной!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (3,1, 'Прошел циклон, в связи с чем была объявлена амнистия политическим заключенным, а изгнанникам было разрешено вернуться на родину – всем, кроме интеллектуалов, разумеется, – “Этим я никогда не разрешу вернуться, у них постоянный жар в перьевых стержнях, как у породистых петухов, когда они оперяются. Они ни к чему не пригодны, даже если годятся на что-нибудь”', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (3,2, 'Размышляя о будущем, он был осенен догадкой, волшебным озарением, которое явило ему причину всех бед страны, а именно – у людей слишком много свободного времени для всяких там размышлений, поэтому надо чем-то занять это время; с этой целью он возобновил мартовские поэтические состязания и ежегодные конкурсы красавиц, оспаривающих титул королевы красоты, построил самый большой в карибских странах крытый стадион с прекрасной гандбольной площадкой, обязав нашу команду играть под девизом “Победа или смерть”; в каждой провинции он основал бесплатную школу метельщиц, ученицы которой, фанатично преданные ему за бесплатную науку девицы, рьяно подметали не только в домах, но и на улицах, а затем принялись подметать дороги – проселочные и шоссейные, все подряд, так что кучи мусора возили из одной провинции в другую и обратно, не зная, что с ним делать, и каждая вывозка мусора сопровождалась демонстрацией под сенью государственных флагов и пламенных транспарантов: “Храни Господь апостола целомудрия, заботящегося о чистоте нации!”', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (3,3, 'Когда трое офицеров предстали перед ним и доложили о выполнении приказа, он сперва повысил их в звании сразу на два чина и наградил медалью за верную службу, а затем приказал расстрелять, как обыкновенных уголовников. “Потому что существуют приказы, которые можно отдавать, но выполнять их преступно, черт подери!”', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (3,4, 'Единственный достойный документ, могущий удостоверить личность свергнутого президента, – это свидетельство о его смерти.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (3,1, 'А беднякам снова ничего не достанется. Такое у них везение: если бы дерьмо хоть что-нибудь стоило, бедняки стали бы рождаться без задниц.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (4,1, 'Надо бы передаать', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (4,2, 'Все работает!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (4,1, 'Ниче не работает!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (4,2, 'Работает, тебе надо ты и перелывай', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (4,1, 'Я все маме расскажу!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (5,1, 'Самой долгой и деятельной жизни хватает лишь на то, чтобы научиться жить – в самом конце.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (5,4, 'Жажда власти порождает лишь неутомимую жажду власти, […] насытиться властью невозможно не только до конца нашего света, но и до конца всех иных миров', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (36,4, 'Каждый из них в отдельности боялся президента, а президент боялся любого из них в паре с другим, так как двое – это уже заговор.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (36,5, '...нет для человека наказания более унизительного и в то же время более справедливого, чем измена собственной сущности, одряхление собственного тела и памяти...', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (36,1, 'Никогда не отдавай приказа, если не уверен, что его выполнят!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (36,2, 'Оп, мизантроп!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (37,3, 'Рассказывали в тавернах анекдот о том, как однажды государственному совету сообщили, что президент умер, и все министры стали испуганно переглядываться и со страхом спрашивать друг у друга, кто же пойдет и доложит ему об этом', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (37,1, 'Жажда власти порождает лишь неутолимую жажду власти', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (37,5, 'Страх перед смертью - это горячий уголь счастья жизни', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (37,1, '«Бросим монету, — сказал он, — и ежели выпадет „орел“ — умрешь ты, ежели „решка“ — я». Но Патрисио Арагонес возразил на это, что умереть придется обоим, ибо, сколько ни кидай монету, всегда будет ничья: «Разве вы забыли, мой генерал, что президентский профиль отчеканен с обеих сторон?»Всё это он проделал в глубокой тоске, охваченный чувством безмерного одиночества, понимая, что стал отныне самым одиноким существом на всём белом свете.Он был ему даже благодарен за острое ощущение и спросил: «Сколько ты хочешь за этого красного петуха?», — на что Дионисио Игуаран робко ответил: «Этот петух ваш, господин генерал, возьмите его»; толпа наградила Дионисио рукоплесканиями, когда он, сопровождаемый грохотом музыки и взрывами петард, отправился домой, показывая всем шесть прекрасных породистых петухов, подаренных ему взамен непобедимого красного; но той же ночью Дионисио Игуаран заперся в своей спальне, выпил целую бутыль тростникового самодельного рома и повесился на веревке от гамака, бедняга, потому что слишком хорошо знал, какие бесчисленные беды и несчастья подстерегают отмеченного высокой милостью человека.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (38,2, 'была объявлена амнистия политическим заключённым, а изгнанникам было разрешено вернуться на родину - всем, кроме интеллектуалов, разумеется.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (39,3, 'Пару месяцев он привечал вновь прибывшего в президентском дворце, играя с ним в домино до пор, пока бывший диктатор не проигрывал нашему генералу последний сентаво, и тогда в один прекрасный день генерал подводил его к окну с видомна море, заводил душеспасительную беседу, сетуя на быстротечность жизни, которая, увы, направлена только в одну сторону и никого не может удовлетворить, не жизнь, а сплошной онанизм, уверяю вас!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (38,4, 'Сердце - это третье яичко, мой генерал!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (39,5, 'Прокомментируйте кто-нибудь', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (39,1, 'No.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (39,2, 'Нет', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (39,3, 'Сам комментируй!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (40,4, 'Мой генерал, генерал Нарсисо Лопес, не в силах больше выносить свою позорную склонность к гомосексуализму, воткнул себе в одно место заряд динамита и разнёс себя в клочья!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (40,5, 'Он никогда не знал отца, как многие другие самые выдающиеся деспоты, а знал одну-единственную свою родительницу, свою матушку Бендисьон Альварадо.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (40,1, 'Нет, сеньор, это не портативный унитаз, не ночной горшок, - это амфора, её подняли со дна морского.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (40,2, 'Речь о том, мой генерал, что никакой вы не президент... никто не считает вас законным президентом...', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (40,3, 'Он даже не подозревал, что лишь в порту взрыв патриотического восторга произошел стихийно, а все последующие были организованы службой безопасности, дабы ублажать его без риска.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (41,4, 'Лучше жить среди коров, чем среди людей, готовых допустить, чтобы человек умер без достоинтсва', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (41,7, 'Ложь удобней сомнений, полезнее любви, долговечнее правды', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (41,1, 'Жизнь трудна и быстротечна, но другой нет.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (42,2, 'только знающий правду найдет в себе смелость для обмана.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (42,3, 'есть такие люди, со дня рождения меченные клеймом одиночества', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (42,4, 'В годы желтого листопада своей осени он убедился, что никогда не будет хозяином всей своей власти, никогда не охватит всей жизни, ибо обречен на познание лишь одной ее тыльной стороны, обречен на разглядывание швов, на распутывание нитей основы и развязывание узелков гобелена иллюзий, гобелена мнимой реальности; он и не подозревал, не понял даже в самом конце, что настоящая жизнь, подлинная жизнь была у всех на виду; но мы видели эту жизнь совсем с другой стороны, мой генерал, – со стороны обездоленных, мы видели ее изнутри бесконечных лет нашего горя и наших страданий, видели сквозь годы и годы желтого листопада вашей нескончаемой осени, несмотря на которую мы все-таки жили, и наша беда была бедой, а мгновения счастья – счастьем; мы знали, что наша любовь заражена вирусами смерти, но она была настоящей любовью, любовью до конца, мой генерал!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (42,5, 'Прочитав бумажку и ничего в ней не поняв, он свернул ее в трубочку, положил на место и забормотал молитву: «Отче наш, чудодейственный наставник небесный, Ты, Кто удерживает аэропланы в воздухе и корабли на глади морской…»', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (43,1, 'С ним обошлись так дурно, что если он и не был врагом, то стал им.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (43,2, 'Ему было в ту пору не больше трех лет, но он, кроме того, был столь хрупок и нежен, что казался девочкой, одетой в расшитый золотом парадный военный мундир.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (43,3, 'Он вернул все запрещенные оккупантами развлечения простых людей, как бы испытывая на отмене этих запретов могущество своей власти, а когда убедился, что никто ему не перечит, что власть и впрямь принадлежит теперь ему, то поменял чередование цветных полос на национальном флаге, перенес верхнюю полосу вниз, а нижнюю вверх, убрал из государственного герба фригийский колпак и приказал заменить его изображением поверженного дракона.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (44,4, 'Поправьте отступы', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (44,5, 'Сделано', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (45,1, 'Он лично проверял, сколько надоено, и распоряжался выдачей молока с той самой поры, когда водворился в президентском дворце.', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (45,7, 'Чёрт подери, как это может быть, чтобы этот индеец написал такую прекрасную вещь той же рукой, которой он подтирается?', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (45,3, 'Сердце - это третье яичко', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (45,1, 'де рыцарь? Где он? О, горе, горе… Поднимись на башню, чтобы увидеть его возвращение, и ты увидишь, что он уже вернулся — в обитом бархатом гробу! О, скорбь, о горе!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (46,5, 'привет, как дила ))))))))', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (46,1, 'Забаньте вы этого дурачка', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (46,2, 'Ох, лол', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (46,3, 'Он занял мое парковочное место, вот $%@%!', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (47,4, 'comment:13 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (47,5, 'comment:13 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (47,1, 'comment:14 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (47,2, 'comment:14 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (47,3, 'comment:14 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (47,4, 'comment:14 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (14,5, 'comment:14 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (15,1, 'comment:15 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (15,2, 'comment:15 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (15,3, 'comment:15 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (15,4, 'comment:15 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (15,5, 'comment:15 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (16,1, 'comment:16 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (16,2, 'comment:16 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (16,3, 'comment:16 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (16,4, 'comment:16 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (16,5, 'comment:16 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (17,1, 'comment:17 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (17,2, 'comment:17 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (17,3, 'comment:17 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (17,4, 'comment:17 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (17,5, 'comment:17 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (18,1, 'comment:18 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (18,2, 'comment:18 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (18,3, 'comment:18 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (18,4, 'comment:18 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (18,5, 'comment:18 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (19,1, 'comment:19 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (19,2, 'comment:19 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (19,3, 'comment:19 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (19,4, 'comment:19 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (19,5, 'comment:19 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (20,1, 'comment:20 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (20,2, 'comment:20 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (20,3, 'comment:20 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (20,4, 'comment:20 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (20,5, 'comment:20 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (21,1, 'comment:21 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (21,2, 'comment:21 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (21,3, 'comment:21 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (21,4, 'comment:21 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (21,5, 'comment:21 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (22,1, 'comment:22 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (22,2, 'comment:22 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (22,3, 'comment:22 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (22,4, 'comment:22 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (22,5, 'comment:22 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (23,1, 'comment:23 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (23,2, 'comment:23 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (23,3, 'comment:23 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (23,4, 'comment:23 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (23,5, 'comment:23 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (24,1, 'comment:24 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (24,2, 'comment:24 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (24,3, 'comment:24 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (24,4, 'comment:24 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (24,5, 'comment:24 5', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (25,1, 'comment:25 1', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (25,2, 'comment:25 2', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (25,3, 'comment:25 3', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (25,4, 'comment:25 4', now());
INSERT INTO storys_users_comments (story_id, user_id, comment, dateComment) VALUES (25,5, 'comment:25 5', now());



--------------------------
--comments_task
--------------------------

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (1, 1, 'comment1.1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (1, 2, 'comment1.2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (1, 3, 'comment1.3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (2, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (2, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (2, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (3, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (3, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (3, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (4, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (4, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (4, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (5, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (5, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (5, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (6, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (6, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (6, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (7, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (7, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (7, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (8, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (8, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (8, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (9, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (9, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (9, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (10, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (10, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (10, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (11, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (11, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (11, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (12, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (12, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (12, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (13, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (13, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (13, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (14, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (14, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (14, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (15, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (15, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (15, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (16, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (16, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (16, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (17, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (17, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (17, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (18, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (18, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (18, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (19, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (19, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (19, 3, 'comment 3', now());

INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (20, 1, 'comment 1', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (20, 2, 'comment 2', now());
INSERT INTO comments_task (task_id, user_id, comment, dateComment) VALUES (20, 3, 'comment 3', now());


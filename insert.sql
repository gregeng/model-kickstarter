-- Insert 10 projects

INSERT INTO projects (title, category_id, funding_goal, start_date, end_date) VALUES 

("support animal shelters",3,10000,20131003,20131203),
("hurricane sandy victims",3,20000,20131004,20131206),
("women in programming",3,15000,20131005,20131209),
("pop up philharmonic",1,30000,20131006,20131212),
("kindergarten muscians",1,50000,20131007,20131215),
("flash dance in central park",1,25000,20131008,20131218),
("my autobiography",2,7000,20131009,20131221),
("memoirs of a programmer",2,36000,20131010,20131224),
("how to count again",2,48000,20131011,20131227),
("teach the world to read music",1,100000,20131012,20131230)
;

-- Insert 20 users

INSERT INTO users (name, age) VALUES 
("Alex",20),
("Amanda",21),
("Anders",22),
("Bana",23),
("Brendan",24),
("Charlotte",25),
("Chris",26),
("Dave",27),
("Edina",28),
("Emily",29),
("Greg",30),
("Ian",31),
("Iris",32),
("Ivan",33),
("James",34),
("Jeanne",35),
("Joe",36),
("John",37),
("Josh",38),
("Kyle",39);

-- Insert 30 pledges

INSERT INTO pledges (amount, user_id, project_id) VALUES 

(1000,1,1),
(2000,2,2),
(3000,3,3),
(4000,4,4),
(5000,5,5),
(6000,6,6),
(7000,7,7),
(8000,8,8),
(9000,9,9),
(10000,10,10),
(11000,11,1),
(12000,12,2),
(13000,13,3),
(14000,14,4),
(15000,15,5),
(16000,16,6),
(17000,17,7),
(18000,18,8),
(19000,19,9),
(20000,20,10),
(21000,1,1),
(22000,2,2),
(23000,3,3),
(24000,4,4),
(25000,5,5),
(26000,6,6),
(27000,7,7),
(28000,8,8),
(29000,9,9),
(30000,10,10);

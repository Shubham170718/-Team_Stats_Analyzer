create database club;
use club;

create table team(
id int primary key,
name varchar(50),
city varchar(50),
members int not null,
stadium_name varchar(70),
sport varchar(50),
team_rank int
);
insert into team
(id,name,city,members,stadium_name,sport,team_rank)
values
(101,"rcb","banglore",9,"m chinaswamy","cricket",1),
(102,"csk","chepauk",9,"chinabadram","cricket",2),
(103,"dc","delhi",8,"firoz shah kotla","ludo",1),
(104,"kxip","mohali",7,"mohali","football",1),
(105,"mi","mumbai",8,"wankhede","ludo",2),
(106,"gt","ahmedabad",7,"narendra modi","football",2);
select*from team;
drop table team;

create table player(
id int primary key,
name varchar(70),
score bigint,
position int not null,
age int,
team_id int,
foreign key (team_id) references team(id),
player_rank int
);
drop table player;
insert into player
(id,name,score,position,age,team_id,player_rank)
values
(107,"raj",800,1,21,103,1),
(108,"shubh",300,1,18,105,2),
(109,"sushant",203,2,20,103,3),
(110,"shree",463,3,17,103,5),
(111,"prem",153,2,18,105,4),
(112,"sachin",363,4,21,103,7),
(113,"sujal",213,3,20,106,6),
(114,"shantanu",473,1,20,104,1),
(115,"shivam",933,3,18,105,6),
(116,"pranav",972,1,21,102,2),
(117,"sanskar",974,2,20,101,1),
(118,"sumit",927,4,17,101,3),
(119,"palash",963,2,20,102,4),
(120,"nitin",935,4,18,105,8),
(121,"atharva",243,3,21,102,6),
(122,"tejas",963,3,20,101,5),
(123,"chintu",930,4,17,102,8),
(124,"pintu",953,2,19,104,3),
(125,"mohan",913,5,16,101,7),
(126,"yash",903,3,20,104,5),
(127,"adi",976,5,20,102,10),
(128,"sanjay",925,1,20,106,2),
(129,"nishant",900,2,20,106,4),
(130,"shubham",973,1,20,101,9);
select*from player;

create table coach(
c_id int primary key,
name varchar(60),
age int not null,
team_id int,
foreign key (team_id) references team(id)
);
insert into coach
(c_id,name,age,team_id)
values
(131,"rahul",30,102),
(132,"sharad",31,101),
(133,"guddu",32,105),
(134,"kalin",28,103),
(135,"raghu",25,102),
(136,"bablu",37,101),
(137,"vibhu",30,103),
(138,"vir",32,104),
(139,"roshan",33,104),
(140,"ram",32,106),
(141,"sham",32,105),
(142,"ronny",32,106);
select*from coach;
drop table coach;

create table game (
id int primary key,
name varchar(50),
home_team_id int,
foreign key (home_team_id) references team(id),
away_team_id int,
foreign key (away_team_id) references team(id),
location varchar(90),
game_date date
);

insert into game
(id,name,home_team_id,away_team_id,location,game_date)
values
(1,"cricket","101","102","m chinaswami","2024-5-18"),
(2,"ludo","103","105","firoz shah kotla","2024-5-20"),
(3,"football","106","104","narendra modi","2024-5-22");
select*from game;
drop table game;

create table physio(
id int primary key,
name varchar(50),
age int not null,
team_id int,
foreign key (team_id) references team(id)
);
insert into physio
(id,name,age,team_id)
values
(143,"sunny",45,101),
(144,"john",40,102),
(145,"bob",44,103),
(146,"alice",45,101),
(147,"shiv",45,103),
(148,"john",46,104),
(149,"starc",45,106),
(150,"johnson",48,104),
(151,"jimmy",45,106),
(152,"jey",49,102),
(153,"randy",48,105),
(154,"roman",45,105);
drop table physio;
select*from physio;


create table game_stats(
id int primary key,
name varchar(50),
game_id int,
foreign key (game_id) references game(id),
player_id int,
foreign key (player_id) references player(id),
minute_played time,
player_score bigint,
player_rank int
);
insert into game_stats
(id,name,game_id,player_id,minute_played,player_score,player_rank)
values
(155,"run_score",1,130,50,973,9),
(156,"run_score",1,119,48,963,4),
(157,"run_score",1,117,47,974,1),
(158,"run_score",1,116,59,972,2),
(159,"wicket_taken",1,123,50,930,8),
(160,"wicket_taken",1,122,47,963,5),
(161,"wicket_taken",1,121,46,243,6),
(162,"wicket_taken",1,118,56,927,3),
(163,"stumping",1,127,46,976,10),
(164,"stumping",1,125,40,913,7),
(165,"wins",2,107,45,800,1),
(166,"wins",2,108,56,300,2),
(167,"wins",2,109,41,203,3),
(168,"wins",2,110,40,463,5),
(169,"wins",2,111,52,153,4),
(170,"wins",2,112,45,363,7),
(171,"wins",2,115,58,933,6),
(172,"wins",2,120,46,935,8),
(173,"goal_score",3,114,56,473,1),
(174,"goal_score",3,124,56,953,3),
(175,"goal_score",3,129,57,900,4),
(176,"goal_score",3,128,53,925,2),
(177,"goal_keeper",3,113,56,213,6),
(178,"goal_keeper",3,126,54,903,5);
select*from game_stats;
drop table game_stats;
create user shubh;
drop user shubh;

































CREATE TABLE `com_group` (
	`id`	integer	NOT NULL,
	`name`	varchar(30)	NULL,
	`use_yn`	char(1)	NOT NULL	DEFAULT 'y',
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL
);

CREATE TABLE `apvl_line` (
	`id`	integer	NOT NULL,
	`approval_id`	integer	NOT NULL,
	`seq`	integer	NULL,
	`user_id`	integer	NOT NULL,
	`stat`	char(1)	NOT NULL	DEFAULT 'n',
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL
);

CREATE TABLE `upload_file` (
	`id`	integer	NOT NULL,
	`seq`	integer	NOT NULL	DEFAULT 0,
	`name`	varchar(200)	NULL,
	`ext`	varchar(10)	NULL,
	`size`	integer	NOT NULL	DEFAULT 0,
	`path`	varchar(200)	NULL,
	`sys_name`	varchar(100)	NULL,
	`use_yn`	char(1)	NOT NULL	DEFAULT 'y',
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL
);

CREATE TABLE `apvl` (
	`id`	integer	NOT NULL,
	`type`	integer	NOT NULL,
	`title`	varchar(200)	NULL,
	`content`	text	NULL,
	`user_id`	integer	NOT NULL,
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL,
	`del_yn`	char(1)	NOT NULL	DEFAULT 'n'
);

CREATE TABLE `com_user` (
	`id`	integer	NOT NULL,
	`pwd`	varchar(100)	NULL,
	`kr_name`	varchar(10)	NULL,
	`email`	varchar(50)	NULL,
	`phone`	varchar(20)	NULL,
	`group_id`	integer	NULL,
	`position_id`	integer	NOT NULL,
	`profile_img`	varchar(500)	NULL,
	`join_date`	date	NULL,
	`use_yn`	char(1)	NULL,
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL
);

CREATE TABLE `alarm` (
	`id`	integer	NOT NULL,
	`receiver`	integer	NOT NULL,
	`title`	varchar(200)	NULL,
	`content`	text	NULL,
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL,
	`view_yn`	char(1)	NOT NULL	DEFAULT 'n',
	`del_yn`	char(1)	NOT NULL	DEFAULT 'n'
);

CREATE TABLE `apvl_tmpl` (
	`id`	integer	NOT NULL,
	`title`	varchar(200)	NULL,
	`content`	text	NULL,
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL,
	`use_yn`	char(1)	NOT NULL	DEFAULT 'y'
);

CREATE TABLE `holiday_history` (
	`id`	integer	NOT NULL,
	`user_id`	integer	NOT NULL,
	`type`	integer	NOT NULL,
	`day_cnt`	integer	NULL,
	`start_date`	date	NULL,
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL
);

CREATE TABLE `com_code` (
	`id`	integer	NOT NULL,
	`grp_cd`	varchar(10)	NULL,
	`dtl_cd`	varchar(10)	NULL,
	`name`	varchar(20)	NULL,
	`use_yn`	char(1)	NOT NULL	DEFAULT 'y',
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL
);

CREATE TABLE `board` (
	`id`	integer	NOT NULL,
	`type`	varchar(20)	NULL,
	`title`	varchar(200)	NULL,
	`content`	text	NULL,
	`ins_date`	timestamp	NULL	DEFAULT now(),
	`ins_user`	integer	NOT NULL,
	`upd_date`	timestamp	NULL,
	`upd_user`	integer	NOT NULL,
	`del_yn`	char(1)	NOT NULL	DEFAULT 'n'
);

CREATE TABLE `board_comment` (
	`id`	integer	NOT NULL,
	`board_id`	integer	NOT NULL,
	`parent`	integer	NULL,
	`seq`	integer	NOT NULL	DEFAULT 0,
	`content`	text	NULL,
	`ins_user`	integer	NOT NULL,
	`del_yn`	char(1)	NOT NULL	DEFAULT 'n',
	`ins_date`	timestamp	NOT NULL	DEFAULT now(),
	`upd_date`	timestamp	NULL
);


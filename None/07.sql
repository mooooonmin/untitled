CREATE TABLE `TB_USER` (
	`user_ori_id`	VARCHAR	NOT NULL,
	`user_id`	UUID	NOT NULL,
	`seq`	INTEGER	NULL,
	`last_login_pnttm`	TIMESTAMP	NULL,
	`last_login_ip`	VARCHAR	NULL,
	`pw_change_cnt`	INTEGER	NULL,
	`pw_change_date`	TIMESTAMP	NULL,
	`use_yn`	SMALLINT	NULL
);

CREATE TABLE `TB_JOB_LEVEL_HISTORY` (
	`user_id`	UUID	NOT NULL,
	`job_lev_code`	VARCHAR(255)	NULL,
	`version`	VARCHAR(255)	NULL,
	`Field2`	VARCHAR(255)	NULL,
	`Field3`	VARCHAR(255)	NULL
);

CREATE TABLE `TB_USER_HISTORY` (
	`user_h_id`	UUID	NOT NULL	COMMENT 'PK 아님 계속 생성',
	`user_id`	UUID	NOT NULL	COMMENT '고유값',
	`Field4`	VARCHAR(255)	NULL,
	`Field`	VARCHAR(255)	NULL,
	`Field6`	VARCHAR(255)	NULL,
	`crt_date`	TIMESTAMP	NULL
);

CREATE TABLE `TB_DEPT_HISTORY` (
	`dept_code`	VARCHAR(255)	NULL,
	`Field`	VARCHAR(255)	NULL,
	`version`	INTEGER	NULL,
	`crt_date`	TIMESTAMP	NULL
);

CREATE TABLE `TB_BSRP_APPR_DOC` (
	`appr_doc_no`	UUID	NOT NULL,
	`user_h_id`	UUID	NOT NULL	COMMENT 'PK 아님 계속 생성',
	`appr_state_code`	INTEGER	NULL,
	`prj_nm`	VARCHAR	NULL,
	`bsrp_place`	VARCHAR	NULL,
	`bsrp_start_date`	TIMESTAMP	NULL,
	`bsrp_end_date`	TIMESTAMP	NULL,
	`reason`	VARCHAR	NULL,
	`cost_info`	JSON	NULL,
	`accm_user`	VARCHAR	NULL,
	`crt_date`	VARCHAR	NULL,
	`appr_finish_date`	TIMESTAMP	NULL
);

CREATE TABLE `V_USER_PAY_LEAVE` (
	`user_id`	VARCHAR	NULL,
	`year`	INTEGER	NULL,
	`crt_leave_cnt`	INTEGER	NULL,
	`use_leave_cnt`	INTEGER	NULL,
	`use_yn`	SMALLINT	NULL
);

CREATE TABLE `COMMON_CODE` (
	`code`	INTEGER	NULL,
	`en_nm_dept_one`	VARCHAR	NULL,
	`ko_nm_dept_one`	VARCHAR	NULL,
	`en_nm_dept_two`	VARCHAR	NULL,
	`ko_nm_dept_two`	VARCHAR	NULL,
	`en_nm_dept_three`	VARCHAR	NULL,
	`ko_nm_dept_three`	VARCHAR	NULL,
	`use_yn`	SMALLINT	NULL
);

CREATE TABLE `TB_EVDNC_FILE` (
	`appr_doc_no`	VARCHAR	NOT NULL,
	`ori_file_nm`	VARCHAR	NULL,
	`uuid_file_nm`	VARCHAR	NULL,
	`file_route`	VARCHAR	NULL,
	`crt_date`	TIMESTAMP	NULL,
	`use_yn`	SMALLINT	NULL
);

CREATE TABLE `TB_LEAVE_APPR_DOC` (
	`appr_doc_no`	UUID	NOT NULL,
	`user_h_id`	UUID	NOT NULL	COMMENT 'PK 아님 계속 생성',
	`appr_state_code`	INTEGER	NULL,
	`leave_code`	INTEGER	NULL,
	`leave_start_date`	TIMESTAMP	NULL,
	`leave_end_date`	TIMESTAMP	NULL,
	`leave_cnt`	DOUBLE	NULL,
	`reason`	VARCHAR	NULL,
	`crt_date`	TIMESTAMP	NULL
);

CREATE TABLE `TB_APPR_STATUS` (
	`appr_doc_no`	UUID	NOT NULL,
	`user_h_id.`	UUID	NOT NULL	COMMENT 'PK 아님 계속 생성',
	`appr_order`	INTEGER	NULL,
	`appr_user_id`	UUID	NULL,
	`appr_code`	INTEGER	NULL,
	`appr_state_code`	INTEGER	NULL,
	`appr_yn`	SMALLINT	NULL,
	`appr_finsh_date`	DATE	NULL,
	`reason`	VARCHAR	NULL,
	`crt_date`	TIMESTAMP	NULL,
	`use_yn`	SMALLINT	NULL
);

CREATE TABLE `TB_USER_PAY_LEAVE_LOG` (
	`user_id`	VARCHAR	NOT NULL,
	`crt_date`	DATE	NULL,
	`crt_leave_cnt`	INTEGER	NULL,
	`use_leave_cnt`	INTEGER	NULL,
	`auto_yn`	SMALLINT	NULL,
	`comment`	VARCHAR	NULL,
	`use_yn`	SMALLINT	NULL
);

CREATE TABLE `TB_USER_DETAIL` (
	`user_id`	UUID	NOT NULL,
	`user_pw`	VARCHAR	NULL,
	`user_name`	VARCHAR	NULL,
	`job_lev_code`	INTEGER	NULL	COMMENT 'X',
	`dept_code`	INTEGER	NULL	COMMENT 'X',
	`sys_manage_code`	INTEGER	NULL,
	`join_date`	DATE	NULL,
	`cell_phone_number`	VARCHAR	NULL,
	`eMail`	VARCHAR	NULL,
	`sign_file`	VARCHAR	NULL,
	`crt_date`	TIMESTAMP	NULL,
	`use_yn`	SMALLINT	NULL
);

CREATE TABLE `Untitled` (
	`Field`	VARCHAR(255)	NULL,
	`Field2`	VARCHAR(255)	NULL,
	`JSON`	VARCHAR(255)	NULL,
	`Field3`	VARCHAR(255)	NULL
);

CREATE TABLE `TB_APPR_LINE` (
	`appr_line_id`	VARCHAR	NOT NULL,
	`appr_doc_no`	UUID	NOT NULL,
	`appr_line_nm`	VARCHAR	NULL,
	`appr_order`	INTEGER	NULL,
	`appr_code`	INTEGER	NULL,
	`appr_user_id`	VARCHAR	NULL,
	`crt_date`	TIMESTAMP	NULL
);

CREATE TABLE `TB_EXPND_PETITION_DOC` (
	`appr_doc_no`	UUID	NOT NULL,
	`user_h_id`	UUID	NOT NULL	COMMENT 'PK 아님 계속 생성',
	`appr_state_code`	INTEGER	NULL,
	`appr_nm`	VARCHAR	NULL,
	`petition_reason`	VARCHAR	NULL,
	`cost`	INTEGER	NULL,
	`comment`	VARCHAR	NULL,
	`crt_date`	VARCHAR	NULL,
	`draft_date`	TIMESTAMP	NULL,
	`appr_finish_date`	TIMESTAMP	NULL
);


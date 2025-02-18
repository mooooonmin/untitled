CREATE TABLE `tb_user_clsf` (
	`USER_ID2`	int(11)	NOT NULL	COMMENT '사용자ID',
	`CLSF_NO2`	int(11)	NOT NULL	COMMENT '직급번호',
	`DFLT_YN`	char(1)	NOT NULL	DEFAULT 'N'	COMMENT '기본여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_appr_line_bkmk_dtl` (
	`APPR_LINE_BKMK_NO2`	int(11)	NOT NULL	COMMENT '결재라인즐겨찾기번호',
	`APPROVER_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재자구분코드',
	`APPR_TY_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재유형코드',
	`APPROVER_ID`	int(11)	NULL	DEFAULT null	COMMENT '결재자ID',
	`APPR_ORDR`	varchar(4)	NULL	DEFAULT null	COMMENT '결재순서',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`APPR_LINE_BKMK_NO`	int(11)	NOT NULL	COMMENT '결재라인즐겨찾기번호'
);

CREATE TABLE `tb_appr_read_yn` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_user_crtfc_request` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`CRTFC_REQUEST_NO`	varchar(50)	NOT NULL	COMMENT '인증요청번호',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시'
);

CREATE TABLE `tb_dclz_setup` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`DFLT_LABOR_UPDT_AUTHOR_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '기본근로수정권한_코드',
	`YRYC_SETUP_SE`	char(1)	NOT NULL	COMMENT '연차설정_구분 ( 0 : 수동등록, 1. 자동등록)',
	`YRYC_ALWNC_SE`	char(1)	NOT NULL	COMMENT '연차부여_구분( 0 : 마일까지 자동부여 1. 매월 1일 부여 )',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_code_cl` (
	`SYS_SE_CD`	varchar(50)	NOT NULL	COMMENT '시스템구분코드공통,회사',
	`SYS_SE_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '시스템구분명',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '테넌트ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOftb_corp` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOfCopyOftb_appr_doc2` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_LINE_BKMK_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재라인즐겨찾기번호',
	`APPR_DOC_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서번호',
	`APPR_DOC_OPERTN_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재_문서_시행_번호',
	`OPERTN_DT`	datetime	NULL	DEFAULT null	COMMENT '시행_일시',
	`REFRN_DOC_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '참조문서번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_DOC_STTUS_CD`	varchar(50)	NULL	DEFAULT null,
	`PRSRV_TMLMT_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_CN`	longtext	NULL	DEFAULT null	COMMENT '결재내용',
	`ATCH_FILE_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '첨부파일ID',
	`DLVRR_ID`	int(11)	NULL	DEFAULT null	COMMENT '전달자_ID',
	`DLVRR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '전달자명',
	`DLVRR_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자부서번호',
	`DLVRR_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자부서명',
	`DLVRR_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직급번호',
	`DLVRR_CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직급명',
	`DLVRR_RSPOFC_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직책번호',
	`DLVRR_RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직책명',
	`DLIV_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '전달상태코드',
	`DLIV_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '전달사유',
	`DLIV_STTUS_DT`	datetime	NOT NULL	COMMENT '전달상태일시',
	`DELETE_DT`	datetime	NULL	DEFAULT null	COMMENT '삭제일시',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_user_cntrct` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`CNTRCT_YN`	char(1)	NOT NULL	DEFAULT 'N'	COMMENT '계약여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOftb_appr_doc2` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_LINE_BKMK_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재라인즐겨찾기번호',
	`APPR_DOC_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서번호',
	`APPR_DOC_OPERTN_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재_문서_시행_번호',
	`OPERTN_DT`	datetime	NULL	DEFAULT null	COMMENT '시행_일시',
	`REFRN_DOC_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '참조문서번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_DOC_STTUS_CD`	varchar(50)	NULL	DEFAULT null,
	`PRSRV_TMLMT_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_CN`	longtext	NULL	DEFAULT null	COMMENT '결재내용',
	`ATCH_FILE_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '첨부파일ID',
	`DLVRR_ID`	int(11)	NULL	DEFAULT null	COMMENT '전달자_ID',
	`DLVRR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '전달자명',
	`DLVRR_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자부서번호',
	`DLVRR_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자부서명',
	`DLVRR_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직급번호',
	`DLVRR_CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직급명',
	`DLVRR_RSPOFC_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직책번호',
	`DLVRR_RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직책명',
	`DLIV_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '전달상태코드',
	`DLIV_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '전달사유',
	`DLIV_STTUS_DT`	datetime	NOT NULL	COMMENT '전달상태일시',
	`DELETE_DT`	datetime	NULL	DEFAULT null	COMMENT '삭제일시',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOftb_user` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`USER_EMAIL`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '사용자이메일',
	`ECNY_DE`	datetime	NULL	DEFAULT null	COMMENT '입사일자',
	`LXTN_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '내선_번호',
	`MOBILE_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '모바일_번호',
	`PROFILE_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '프로필_파일_경로',
	`CORP_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '회사ID',
	`DEPT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '부서ID',
	`CLSF_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직급코드',
	`RSPOFC_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직책코드',
	`USER_STTUS_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '사용자상태구분코드',
	`USER_LANG_CD`	varchar(50)	NULL	DEFAULT 'ko'	COMMENT '사용자언어코드',
	`AUTHOR_TY_CD`	varchar(50)	NOT NULL	DEFAULT 'USER'	COMMENT '권한유형코드(ADMIN:관리자, LEADER : 부서리더, USER:사용자)',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`DFLT_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '기본 사용자 여부',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_job_grp` (
	`JOB_GRP_NO`	int(11)	NOT NULL	COMMENT '업무그룹번호',
	`JOB_GRP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '업무그룹명',
	`JOB_GRP_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '업무그룹설명',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_rspofc` (
	`RSPOFC_NO`	int(11)	NOT NULL	COMMENT '직책번호',
	`RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '직책명',
	`SORT_ORDR`	int(5)	NULL	DEFAULT null	COMMENT '정렬순서',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID'
);

CREATE TABLE `tb_form_expndtr_decsn_list` (
	`EXPNDTR_DECSN_NO`	int(11)	NOT NULL	COMMENT '지출결의번호',
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`USE_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '사용부서명',
	`BEGIN_DE`	datetime	NULL	DEFAULT null	COMMENT '시작일자',
	`END_DE`	datetime	NULL	DEFAULT null	COMMENT '종료일자',
	`BUDGET_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '예산코드',
	`ACNTCTGR`	varchar(100)	NULL	DEFAULT null	COMMENT 'ACNTCTGR',
	`BUDGET_AMOUNT`	decimal(15, 3)	NULL	DEFAULT null	COMMENT '예산금액',
	`EXPNDTR_MT`	char(6)	NULL	DEFAULT null	COMMENT '지출월(ex : 200608)',
	`DETAIL_DTLS`	varchar(1000)	NULL	DEFAULT null	COMMENT '상세내역',
	`EXPNDTR_AMOUNT`	decimal(15, 3)	NULL	DEFAULT null	COMMENT '지출금액',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`SORT_ORDR`	int(11)	NULL	DEFAULT null	COMMENT '정렬순서',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_restde_mgmt` (
	`RESTDE_YEAR`	varchar(4)	NOT NULL	COMMENT '휴일연도',
	`RESTDE_DE`	datetime	NOT NULL	COMMENT '휴일일자',
	`RESTDE_NM`	varchar(100)	NOT NULL	COMMENT '휴일명',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_dclz_pow_manage` (
	`POW_NO`	int(11)	NOT NULL	COMMENT '근무지번호',
	`POW_NM`	varchar(100)	NOT NULL	COMMENT '근무지명',
	`POW_ADRES`	varchar(100)	NOT NULL	COMMENT '근무지주소',
	`POW_DETAIL_ADRES`	varchar(100)	NOT NULL	COMMENT '근무지상세주소',
	`POW_X_CRDNT`	decimal(17, 14)	NULL	DEFAULT null	COMMENT '근무지 X좌표',
	`POW_Y_CRDNT`	decimal(17, 14)	NULL	DEFAULT null	COMMENT '근무지 Y좌표',
	`CMUT_PERM_RAD`	decimal(8, 1)	NULL	DEFAULT null	COMMENT '출퇴근허용반경',
	`POW_WIFI`	varchar(1000)	NULL	DEFAULT null	COMMENT '근무지 WiFi (|로 구분)',
	`CMUT_CECK_MTHD_USE_YN`	char(1)	NOT NULL	DEFAULT 'Y'	COMMENT '출퇴근체크방식 사용여부Y,N',
	`POW_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '근무지 설명',
	`AUTH_TOKEN`	varchar(100)	NOT NULL	COMMENT '인증 토큰',
	`USE_YN`	char(1)	NOT NULL	COMMENT '사용여부Y,N',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID'
);

CREATE TABLE `tb_user_crtfc_request_dtl` (
	`CRTFC_REQUEST_KEY`	varchar(50)	NOT NULL	COMMENT '인증요청키',
	`USER_ID2`	int(11)	NOT NULL	COMMENT '사용자ID',
	`CRTFC_REQUEST_NO2`	varchar(50)	NOT NULL	COMMENT '인증요청번호',
	`CRTFC_REQUEST_VALUE`	varchar(100)	NULL	DEFAULT null	COMMENT '인증요청값'
);

CREATE TABLE `CopyOftb_corp` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_dclz_vcatn_iem_setup` (
	`VCATN_IEM_NO`	int(11)	NOT NULL	COMMENT '휴가항목_번호',
	`VCATN_NM`	varchar(100)	NOT NULL	COMMENT '휴가명',
	`MXMM_VCATN_NOD`	decimal(3, 1)	NULL	DEFAULT null	COMMENT '최대휴가일수',
	`VCATN_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '휴가설명',
	`USE_YN`	char(1)	NOT NULL	COMMENT '사용여부Y,N',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID'
);

CREATE TABLE `tb_dept` (
	`DEPT_NO`	int(11)	NOT NULL	COMMENT '부서ID',
	`UPPER_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위부서ID',
	`DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '부서명',
	`DEPT_LEVEL`	int(11)	NULL	DEFAULT null	COMMENT '부서레벨',
	`DEPT_LEADR_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '부서리더ID',
	`SORT_ORDR`	varchar(5)	NULL	DEFAULT null	COMMENT '정렬순서',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID'
);

CREATE TABLE `CopyOfCopyOfCopyOftb_corp2` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_appr_form` (
	`APPR_FORM_NO`	int(11)	NOT NULL	COMMENT '결재양식번호',
	`APPR_FORM_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '결재양식명',
	`APPR_FORM_DC`	varchar(4000)	NULL	DEFAULT null	COMMENT '결재양식설명',
	`REFRN_APPR_FORM_NO`	int(11)	NULL	DEFAULT null	COMMENT '참고 결재양식번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재양식타입코드(10 :동적양식 사용 , 20 : 에디터 사용 )',
	`CMMN_FORM_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '공통양식여부Y,N',
	`APPR_FORM_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재양식구분코드VCATN:휴가, ESTMT:견적, ORDER:발주, PUR:구매, EXPNRT:지출결의, COMMON:공통',
	`CTGRY_NO`	int(11)	NULL	DEFAULT null	COMMENT '카테고리번호',
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_FORM`	longtext	NOT NULL	COMMENT '결재양식',
	`USE_YN`	char(1)	NOT NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_form_mcrtf_reqstdoc` (
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`USER_ID`	int(11)	NOT NULL	COMMENT '신청자_ID',
	`USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '신청부서명',
	`CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '신청직급번호',
	`MCRTF_FORM_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '제증명양식코드(10:재직즘명서, 20:근로소득원천징수영수증, 30:경력증명서)',
	`QY`	decimal(10, 3)	NULL	DEFAULT null	COMMENT '수량',
	`PRPOS`	varchar(1000)	NULL	DEFAULT null	COMMENT '용도',
	`ADRES`	varchar(1000)	NULL	DEFAULT null	COMMENT '주소',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_clsf` (
	`CLSF_NO`	int(11)	NOT NULL	COMMENT '직급번호',
	`CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '직급명',
	`SORT_ORDR`	int(5)	NULL	DEFAULT null	COMMENT '정렬순서',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID'
);

CREATE TABLE `tb_form_bkmk` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`APPR_FORM_NO`	int(11)	NOT NULL	COMMENT '결재양식번호',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_auth_grp` (
	`AUTHOR_GROUP_NO`	int(11)	NOT NULL	COMMENT '권한그룹번호',
	`AUTHOR_GROUP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '권한그룹명',
	`AUTHOR_GROUP_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '권한그룹설명',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOfCopyOftb_corp3` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_translate` (
	`ORIGIN_TEXT`	varchar(500)	NOT NULL	COMMENT '원본 텍스트',
	`SUB_KEY`	varchar(100)	NOT NULL	DEFAULT '1'	COMMENT '서브 키',
	`TO_LANGUAGE`	varchar(5)	NOT NULL	COMMENT '번역 대상 언어',
	`TRANSLATE_TEXT`	varchar(500)	NOT NULL	COMMENT '번역 텍스트',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOfCopyOfCopyOfCopyOftb_corp` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_dclz_user_vcatn_manage_change_hist` (
	`CHANGE_HIST_NO`	int(11)	NOT NULL	COMMENT '변경이력_번호',
	`YRYC_VCATN_REVISN_CO`	decimal(5, 1)	NOT NULL	COMMENT '연차휴가보정일수',
	`CHANGE_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '변경사유',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`STDR_YEAR`	varchar(4)	NOT NULL	COMMENT '기준연도',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID'
);

CREATE TABLE `tb_form_purchs_rqstdoc_list` (
	`PURCHS_RQSTDOC_NO`	int(11)	NOT NULL	COMMENT '구매의뢰서번호',
	`PRDLST`	varchar(100)	NULL	DEFAULT null	COMMENT '품목',
	`QY`	decimal(10, 3)	NULL	DEFAULT null	COMMENT '수량',
	`STNDRD`	varchar(100)	NULL	DEFAULT null	COMMENT '규격',
	`PURCHS_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '구매사유',
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자_ID',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`SORT_ORDR`	int(11)	NULL	DEFAULT null	COMMENT '정렬순서',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호'
);

CREATE TABLE `tb_user_pow_jobty` (
	`Key`	VARCHAR(255)	NOT NULL	COMMENT '사용자 ID',
	`POW_NO`	int(11)	NOT NULL	COMMENT '근무지번호',
	`LABOR_STLE_NO`	int(11)	NOT NULL	COMMENT '근로형태번호',
	`DFLT_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '기본 여부',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOftb_user3` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`USER_EMAIL`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '사용자이메일',
	`ECNY_DE`	datetime	NULL	DEFAULT null	COMMENT '입사일자',
	`LXTN_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '내선_번호',
	`MOBILE_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '모바일_번호',
	`PROFILE_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '프로필_파일_경로',
	`CORP_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '회사ID',
	`DEPT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '부서ID',
	`CLSF_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직급코드',
	`RSPOFC_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직책코드',
	`USER_STTUS_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '사용자상태구분코드',
	`USER_LANG_CD`	varchar(50)	NULL	DEFAULT 'ko'	COMMENT '사용자언어코드',
	`AUTHOR_TY_CD`	varchar(50)	NOT NULL	DEFAULT 'USER'	COMMENT '권한유형코드(ADMIN:관리자, LEADER : 부서리더, USER:사용자)',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`DFLT_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '기본 사용자 여부',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_form_purchs_rqstdoc_ofcrk_list` (
	`PURCHS_RQSTDOC_OFCRK_NO`	int(11)	NOT NULL	COMMENT '구매의뢰서사무번호',
	`GOODS_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '상품코드',
	`GOODS_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '상품명',
	`QY`	decimal(10, 3)	NULL	DEFAULT null	COMMENT '수량',
	`UNTPC`	decimal(15, 3)	NULL	DEFAULT null	COMMENT '단가',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`SORT_ORDR`	int(11)	NULL	DEFAULT null	COMMENT '정렬순서',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호'
);

CREATE TABLE `CopyOfCopyOfCopyOftb_appr_doc22` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_LINE_BKMK_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재라인즐겨찾기번호',
	`APPR_DOC_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서번호',
	`APPR_DOC_OPERTN_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재_문서_시행_번호',
	`OPERTN_DT`	datetime	NULL	DEFAULT null	COMMENT '시행_일시',
	`REFRN_DOC_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '참조문서번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_DOC_STTUS_CD`	varchar(50)	NULL	DEFAULT null,
	`PRSRV_TMLMT_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_CN`	longtext	NULL	DEFAULT null	COMMENT '결재내용',
	`ATCH_FILE_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '첨부파일ID',
	`DLVRR_ID`	int(11)	NULL	DEFAULT null	COMMENT '전달자_ID',
	`DLVRR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '전달자명',
	`DLVRR_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자부서번호',
	`DLVRR_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자부서명',
	`DLVRR_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직급번호',
	`DLVRR_CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직급명',
	`DLVRR_RSPOFC_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직책번호',
	`DLVRR_RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직책명',
	`DLIV_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '전달상태코드',
	`DLIV_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '전달사유',
	`DLIV_STTUS_DT`	datetime	NOT NULL	COMMENT '전달상태일시',
	`DELETE_DT`	datetime	NULL	DEFAULT null	COMMENT '삭제일시',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_appr_cnrs` (
	`COCNR_ID`	int(11)	NOT NULL	COMMENT '공유자ID',
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시'
);

CREATE TABLE `tb_appr_line_bkmk` (
	`APPR_LINE_BKMK_NO`	int(11)	NOT NULL	COMMENT '결재라인즐겨찾기번호',
	`CORP_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '회사ID',
	`APPR_LINE_BKMK_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재라인즐겨찾기구분코드',
	`APPR_LINE_USER_ID`	int(11)	NULL	DEFAULT null	COMMENT '결재라인사용자ID',
	`APPR_LINE_BKMK_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재선즐겨찾기제목',
	`APPR_LINE_BKMK_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재선즐겨찾기설명',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_corp_job_grp` (
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`JOB_GRP_NO`	int(11)	NOT NULL	COMMENT '업무그룹번호',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_corp_hist` (
	`HIST_NO`	int(11)	NOT NULL	COMMENT '이력번호',
	`REGIST_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '등록구분코드',
	`RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '사유',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID'
);

CREATE TABLE `tb_code` (
	`GROUP_CD`	varchar(50)	NOT NULL	COMMENT '그룹코드ID',
	`SYS_SE_CD2`	varchar(50)	NOT NULL	COMMENT '시스템구분코드공통,회사',
	`GROUP_CD_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '그룹코드명',
	`UPPER_GROUP_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '상위그룹코드ID',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_user_token` (
	`USER_AUTH_TOKEN`	varchar(300)	NOT NULL	COMMENT '사용자_인증_토큰',
	`USER_ID`	varchar(50)	NOT NULL	COMMENT '사용자이메일',
	`EPD`	int(11)	NOT NULL	DEFAULT 30	COMMENT '만료일(기본 30일)',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOftb_user` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`USER_EMAIL`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '사용자이메일',
	`ECNY_DE`	datetime	NULL	DEFAULT null	COMMENT '입사일자',
	`LXTN_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '내선_번호',
	`MOBILE_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '모바일_번호',
	`PROFILE_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '프로필_파일_경로',
	`CORP_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '회사ID',
	`DEPT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '부서ID',
	`CLSF_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직급코드',
	`RSPOFC_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직책코드',
	`USER_STTUS_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '사용자상태구분코드',
	`USER_LANG_CD`	varchar(50)	NULL	DEFAULT 'ko'	COMMENT '사용자언어코드',
	`AUTHOR_TY_CD`	varchar(50)	NOT NULL	DEFAULT 'USER'	COMMENT '권한유형코드(ADMIN:관리자, LEADER : 부서리더, USER:사용자)',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`DFLT_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '기본 사용자 여부',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_menu_auth` (
	`AUTHOR_TY_CD`	varchar(50)	NOT NULL	COMMENT '권한유형코드(ADMIN:관리자, USER:사용자)',
	`MENU_NO2`	int(11)	NOT NULL	COMMENT '메뉴번호',
	`JOB_GRP_NO2`	int(11)	NOT NULL	COMMENT '업무그룹번호',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_file_link` (
	`file_link_id`	int(11)	NOT NULL	COMMENT '파일 링크 ID',
	`resource_name`	varchar(50)	NULL	DEFAULT null	COMMENT '아이템 타입 코드',
	`resource_id`	varchar(50)	NULL	DEFAULT null	COMMENT '첨부파일이 속한 원 문서 ID (게시물, 사용자 정보 등)',
	`file_id`	varchar(50)	NULL	DEFAULT null	COMMENT '파일 ID',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`FILE_ID`	varchar(50)	NOT NULL	COMMENT '파일 ID'
);

CREATE TABLE `tb_user` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`USER_EMAIL`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '사용자이메일',
	`ECNY_DE`	datetime	NULL	DEFAULT null	COMMENT '입사일자',
	`LXTN_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '내선_번호',
	`MOBILE_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '모바일_번호',
	`PROFILE_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '프로필_파일_경로',
	`CORP_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '회사ID',
	`DEPT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '부서ID',
	`CLSF_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직급코드',
	`RSPOFC_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직책코드',
	`USER_STTUS_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '사용자상태구분코드',
	`USER_LANG_CD`	varchar(50)	NULL	DEFAULT 'ko'	COMMENT '사용자언어코드',
	`AUTHOR_TY_CD`	varchar(50)	NOT NULL	DEFAULT 'USER'	COMMENT '권한유형코드(ADMIN:관리자, LEADER : 부서리더, USER:사용자)',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`DFLT_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '기본 사용자 여부',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_vcatn_mgmt` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`YEAR`	varchar(4)	NOT NULL	COMMENT '연도',
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`BEGIN_DE`	datetime	NULL	DEFAULT null	COMMENT '시작일자',
	`END_DE`	datetime	NULL	DEFAULT null	COMMENT '종료일자',
	`ASIGN_CO`	decimal(5, 1)	NULL	DEFAULT null	COMMENT '배정갯수',
	`USE_CO`	decimal(5, 1)	NULL	DEFAULT null	COMMENT '사용갯수',
	`REMNDR_CO`	decimal(5, 1)	NULL	DEFAULT null	COMMENT '잔여갯수',
	`NON_YRYC_ASIGN_CO`	decimal(5, 1)	NULL	DEFAULT null	COMMENT '비연차 배정갯수',
	`NON_YRYC_USE_CO`	decimal(5, 1)	NULL	DEFAULT null	COMMENT '비연차 사용갯수',
	`NON_YRYC_REMNDR_CO`	decimal(5, 1)	NULL	DEFAULT null	COMMENT '비연차 잔여갯수',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_trns_appr_doc` (
	`APPR_NO`	int(11)	NOT NULL	DEFAULT 0	COMMENT '결재번호',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_DOC_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서번호',
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재양식타입코드(10 :동적양식 사용 , 20 : 에디터 사용 )',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`STATUS`	varchar(20)	NOT NULL	COMMENT '상태',
	`MSG`	varchar(1000)	NULL	DEFAULT null	COMMENT '에러',
	`FILE_KEY`	varchar(100)	NULL	DEFAULT null	COMMENT 'S3 FILE_KEY',
	`UPDT_DT`	date	NULL,
	`ZIP_YN`	char(1)	NOT NULL	DEFAULT 'N'
);

CREATE TABLE `CopyOfCopyOfCopyOfCopyOftb_corp` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_corp_restde_mgmt` (
	`RESTDE_YEAR`	varchar(4)	NOT NULL	COMMENT '휴일연도',
	`RESTDE_DE`	datetime	NOT NULL	COMMENT '휴일일자',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`RESTDE_NM`	varchar(100)	NOT NULL	COMMENT '휴일명',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOfCopyOfCopyOftb_corp4` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_form_rsgnation` (
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`USER_ID`	int(11)	NOT NULL	COMMENT '신청자_ID',
	`USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`DEPT_NO`	int(11)	NOT NULL	COMMENT '신청부서번호',
	`DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '신청부서명',
	`CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '신청직급번호',
	`ECNY_DE`	datetime	NULL	DEFAULT null	COMMENT '입사일자',
	`RETIRE_DE`	datetime	NULL	DEFAULT null	COMMENT '퇴사일자',
	`RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '사유',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOftb_corp2` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOftb_appr_doc3` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_LINE_BKMK_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재라인즐겨찾기번호',
	`APPR_DOC_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서번호',
	`APPR_DOC_OPERTN_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재_문서_시행_번호',
	`OPERTN_DT`	datetime	NULL	DEFAULT null	COMMENT '시행_일시',
	`REFRN_DOC_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '참조문서번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_DOC_STTUS_CD`	varchar(50)	NULL	DEFAULT null,
	`PRSRV_TMLMT_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_CN`	longtext	NULL	DEFAULT null	COMMENT '결재내용',
	`ATCH_FILE_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '첨부파일ID',
	`DLVRR_ID`	int(11)	NULL	DEFAULT null	COMMENT '전달자_ID',
	`DLVRR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '전달자명',
	`DLVRR_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자부서번호',
	`DLVRR_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자부서명',
	`DLVRR_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직급번호',
	`DLVRR_CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직급명',
	`DLVRR_RSPOFC_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직책번호',
	`DLVRR_RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직책명',
	`DLIV_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '전달상태코드',
	`DLIV_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '전달사유',
	`DLIV_STTUS_DT`	datetime	NOT NULL	COMMENT '전달상태일시',
	`DELETE_DT`	datetime	NULL	DEFAULT null	COMMENT '삭제일시',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_user_labor_time` (
	`USER_ID`	varchar(50)	NOT NULL	COMMENT '사용자ID',
	`ATTEND_DE_SE`	char(8)	NOT NULL	COMMENT '출근일_구분 (YYYYMMDD) ex) 20230105',
	`POW_NO`	int(11)	NULL	DEFAULT null	COMMENT '근무지번호',
	`LABOR_STLE_NO`	int(11)	NULL	DEFAULT null	COMMENT '근로형태번호',
	`ATTEND_DT`	datetime	NULL	DEFAULT null	COMMENT '출근일시',
	`LVFFC_DT`	datetime	NULL	DEFAULT null	COMMENT '퇴근일시',
	`CMUT_CECK_MTHD_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '출퇴근체크방식_코드',
	`CHANGE_HIST_NO`	int(11)	NULL	DEFAULT null	COMMENT '변경이력_번호',
	`LABOR_DFK`	char(7)	NULL	DEFAULT null	COMMENT '근로요일 \n - 7자리 문자로 근로요일은 1, 휴일은 0을 의미',
	`LABOR_BEGIN_TIME`	time	NULL	DEFAULT null	COMMENT '근로시작시간(출근시간)',
	`LABOR_END_TIME`	time	NULL	DEFAULT null	COMMENT '근로종료시간(퇴근시간)',
	`REST_TIME_USE_YN`	char(1)	NULL	DEFAULT null	COMMENT '휴게시간사용여부 (1 : 사용, 0 : 사용안함)',
	`REST_BEGIN_TIME`	time	NULL	DEFAULT null	COMMENT '휴게시작시간',
	`REST_END_TIME`	time	NULL	DEFAULT null	COMMENT '휴게종료시간',
	`EXTN_NIGHT_RESTDE_LABOR_USE_YN`	char(1)	NULL	DEFAULT null	COMMENT '연장야간휴일근로사용여부(1 : 사용, 0 : 사용안함)',
	`REGARD_LABOR_USE_YN`	char(1)	NULL	DEFAULT null	COMMENT '간주근로사용여부(1 : 사용, 0 : 사용안함)',
	`ELPD_ATTEND_PERM_SE`	char(1)	NULL	DEFAULT null	COMMENT '조기출근허용구분 (1 : 1시간전, 2 : 2시간전 3 : 3시간전)',
	`ATMC_LVFFC_PERM_YN`	char(1)	NULL	DEFAULT null	COMMENT '자동퇴근허용여부 (Y : 자동퇴근허용, N : 자동퇴근 허용안함)',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`POW_NO2`	int(11)	NOT NULL	COMMENT '근무지번호',
	`LABOR_STLE_NO2`	int(11)	NOT NULL	COMMENT '근로형태번호'
);

CREATE TABLE `tb_form_vcatn_use` (
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`DEPT_NO`	int(11)	NOT NULL	COMMENT '신청부서번호',
	`DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '신청부서명',
	`CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '신청직급번호',
	`BEGIN_DE`	datetime	NULL	DEFAULT null	COMMENT '시작일자',
	`END_DE`	datetime	NULL	DEFAULT null	COMMENT '종료일자',
	`YRYC_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '연차 여부',
	`VCATN_SE_CD`	varchar(50)	NOT NULL	COMMENT '휴가구분코드 (10 : 종일, 20 : 오전반차, 30 : 오후 반차 ) ',
	`USE_CO`	decimal(5, 1)	NULL	DEFAULT null	COMMENT '사용갯수(종일이면 1, 반차면 0.5)',
	`RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '사유',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`YEAR2`	varchar(4)	NOT NULL	COMMENT '연도',
	`USER_ID2`	int(11)	NOT NULL	COMMENT '사용자ID'
);

CREATE TABLE `tb_job_grp_dtl` (
	`JOB_SE_CD`	varchar(50)	NOT NULL	COMMENT '업무구분코드',
	`JOB_GRP_NO`	int(11)	NOT NULL	COMMENT '업무그룹번호',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOftb_appr_doc` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_LINE_BKMK_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재라인즐겨찾기번호',
	`APPR_DOC_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서번호',
	`APPR_DOC_OPERTN_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재_문서_시행_번호',
	`OPERTN_DT`	datetime	NULL	DEFAULT null	COMMENT '시행_일시',
	`REFRN_DOC_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '참조문서번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_DOC_STTUS_CD`	varchar(50)	NULL	DEFAULT null,
	`PRSRV_TMLMT_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_CN`	longtext	NULL	DEFAULT null	COMMENT '결재내용',
	`ATCH_FILE_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '첨부파일ID',
	`DLVRR_ID`	int(11)	NULL	DEFAULT null	COMMENT '전달자_ID',
	`DLVRR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '전달자명',
	`DLVRR_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자부서번호',
	`DLVRR_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자부서명',
	`DLVRR_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직급번호',
	`DLVRR_CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직급명',
	`DLVRR_RSPOFC_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직책번호',
	`DLVRR_RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직책명',
	`DLIV_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '전달상태코드',
	`DLIV_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '전달사유',
	`DLIV_STTUS_DT`	datetime	NOT NULL	COMMENT '전달상태일시',
	`DELETE_DT`	datetime	NULL	DEFAULT null	COMMENT '삭제일시',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_refrn_doc` (
	`REFRN_DOC_NO`	int(11)	NOT NULL	COMMENT '참조문서번호',
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시'
);

CREATE TABLE `tb_dclz_form_user_vcatn` (
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`USER_ID`	int(11)	NOT NULL	COMMENT '신청자_ID',
	`YEAR`	varchar(4)	NOT NULL	COMMENT '연도',
	`USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`DEPT_NO`	int(11)	NOT NULL	COMMENT '신청부서번호',
	`DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '신청부서명',
	`CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '신청직급번호',
	`BEGIN_DT`	date	NULL,
	`END_DT`	date	NULL,
	`VCATN_TY_CD`	varchar(50)	NOT NULL	COMMENT '휴가유형코드(01:연차휴가,02:보상휴가,03:회사휴가)',
	`VCATN_SE_CD`	varchar(50)	NOT NULL	COMMENT '휴가구분코드 (10 : 종일, 20 : 오전반차, 30 : 오후 반차 ) ',
	`VCATN_IEM_NO`	int(11)	NOT NULL	DEFAULT 0	COMMENT '휴가항목_번호',
	`USE_NOD`	decimal(5, 1)	NOT NULL	COMMENT '사용일수 (보상휴가는 시간으로 간주, 특별휴가는 최대휴가일수이내 미차감)',
	`RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '사유',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_dclz_form_user_bsrp_reqst` (
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`USER_ID`	int(11)	NOT NULL	COMMENT '신청자_ID',
	`USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`DEPT_NO`	int(11)	NOT NULL	COMMENT '신청부서번호',
	`DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '신청부서명',
	`CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '신청직급번호',
	`BSRP_BEGIN_DE`	datetime	NOT NULL	COMMENT '출장_시작일자',
	`BSRP_END_DE`	datetime	NOT NULL	COMMENT '출장_종료일자',
	`BSRPR`	varchar(100)	NOT NULL	COMMENT '출장지',
	`EXPECT`	decimal(10, 1)	NULL	DEFAULT null	COMMENT '예상교통비',
	`EXPECT_FDEP`	decimal(10, 1)	NULL	DEFAULT null	COMMENT '예상식비',
	`EXPECT_RUMRG`	decimal(10, 1)	NULL	DEFAULT null	COMMENT '예상숙박비',
	`EXPECT_COST_SM`	decimal(10, 1)	NULL	DEFAULT null	COMMENT '예상비용합계',
	`DETAIL_SCHDUL`	varchar(1000)	NULL	DEFAULT null	COMMENT '세부일정',
	`CN`	longtext	NULL	DEFAULT null	COMMENT '내용',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_form_ctgry` (
	`CTGRY_NO`	int(11)	NOT NULL	COMMENT '카테고리번호',
	`UPPER_CTGRY_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위카테고리번호',
	`CTGRY_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '카테고리명',
	`CTGRY_LEVEL`	int(11)	NULL	DEFAULT null	COMMENT '카테고리레벨',
	`SORT_ORDR`	varchar(5)	NULL	DEFAULT null	COMMENT '정렬순서',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID'
);

CREATE TABLE `tb_job_grp_auth` (
	`AUTHOR_TY_CD`	varchar(50)	NOT NULL	COMMENT '권한유형코드(ADMIN:관리자, USER:사용자)',
	`JOB_GRP_NO`	int(11)	NOT NULL	COMMENT '업무그룹번호',
	`AUTHOR_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '권한그룹명',
	`AUTHOR_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '권한그룹설명',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_file` (
	`FILE_ID`	varchar(50)	NOT NULL	COMMENT '파일 ID',
	`FILE_PATH`	varchar(4000)	NOT NULL	COMMENT '저장 경로 정보',
	`FILE_NAME`	varchar(200)	NOT NULL	COMMENT '저장되는 파일명 (파일명을 변경하여 저장소에 저장함)',
	`FILE_REAL_NAME`	varchar(200)	NOT NULL	COMMENT '실제 파일명',
	`FILE_EXTENSION`	varchar(100)	NOT NULL	COMMENT '첨부파일 확장자',
	`FILE_CONTENTS_TYPE`	varchar(100)	NOT NULL	COMMENT '컨텐츠 타입 (이미지, 비디오, 압축파일 등)',
	`FILE_SIZE`	decimal(27, 0)	NOT NULL	COMMENT '파일 크기',
	`EDITOR_ATTACH`	int(1)	NOT NULL	DEFAULT 0	COMMENT '웹 에디터 내부 첨부파일 여부 (0:에디터 내부 첨부파일 아님, 1:내부 첨부파일)',
	`CRTR_ID`	int(1)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(1)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOftb_appr_doc` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_LINE_BKMK_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재라인즐겨찾기번호',
	`APPR_DOC_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서번호',
	`APPR_DOC_OPERTN_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재_문서_시행_번호',
	`OPERTN_DT`	datetime	NULL	DEFAULT null	COMMENT '시행_일시',
	`REFRN_DOC_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '참조문서번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_DOC_STTUS_CD`	varchar(50)	NULL	DEFAULT null,
	`PRSRV_TMLMT_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_CN`	longtext	NULL	DEFAULT null	COMMENT '결재내용',
	`ATCH_FILE_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '첨부파일ID',
	`DLVRR_ID`	int(11)	NULL	DEFAULT null	COMMENT '전달자_ID',
	`DLVRR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '전달자명',
	`DLVRR_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자부서번호',
	`DLVRR_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자부서명',
	`DLVRR_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직급번호',
	`DLVRR_CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직급명',
	`DLVRR_RSPOFC_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직책번호',
	`DLVRR_RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직책명',
	`DLIV_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '전달상태코드',
	`DLIV_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '전달사유',
	`DLIV_STTUS_DT`	datetime	NOT NULL	COMMENT '전달상태일시',
	`DELETE_DT`	datetime	NULL	DEFAULT null	COMMENT '삭제일시',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_menu` (
	`MENU_NO`	int(11)	NOT NULL	COMMENT '메뉴번호',
	`UPPER_MENU_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위메뉴번호',
	`JOB_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '업무구분코드',
	`MENU_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '메뉴명',
	`MENU_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '메뉴설명',
	`MENU_ORDR`	varchar(4)	NULL	DEFAULT null	COMMENT '메뉴순서',
	`FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '파일경로',
	`PROGRM_FILE_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '프로그램파일명',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`SRCH_YN`	char(1)	NOT NULL	DEFAULT 'Y'	COMMENT '검색여부Y,N',
	`SRCH_DIV_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '검색DIV경로',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`MENU_TYPE`	varchar(1)	NOT NULL
);

CREATE TABLE `tb_dclz_pow_jobty_cmut_ceck` (
	`CMUT_CECK_MTHD_CD`	varchar(50)	NOT NULL	COMMENT '출퇴근체크방식_코드',
	`POW_NO2`	int(11)	NOT NULL	COMMENT '근무지번호',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_form_ctsnncost_pymnt_reqstdoc` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`REQST_USER_ID`	int(11)	NOT NULL	COMMENT '신청자_ID',
	`REQST_USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`REQST_DEPT_NO`	int(11)	NOT NULL	COMMENT '신청부서번호',
	`REQST_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '신청부서명',
	`REQST_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '신청직급번호',
	`TARGET_BRTHDY`	date	NULL	DEFAULT null	COMMENT '피신청자_생년월일',
	`TARGET_USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`REQST_RELATN_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '신청인과의 관계 코드',
	`REQST_MATTER`	varchar(1000)	NULL	DEFAULT null	COMMENT '신청사항',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_appr_doc_answer` (
	`APPR_ANSWER_NO`	int(11)	NOT NULL	COMMENT '결재댓글번호',
	`APPR_ANSWER_CN`	longtext	NULL	DEFAULT null	COMMENT '결재댓글내용',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호'
);

CREATE TABLE `tb_corp_webhook` (
	`WEBHOOK_TOKEN`	varchar(100)	NOT NULL	COMMENT '잔디 토큰',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_user_dflt` (
	`USER_ID`	varchar(50)	NOT NULL	COMMENT '사용자이메일',
	`USER_PASSWD`	varchar(200)	NOT NULL	DEFAULT ''	COMMENT '사용자암호',
	`USER_OTP`	varchar(200)	NULL	DEFAULT null	COMMENT '사용자_OTP',
	`USER_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '사용자명',
	`AGRE_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '동의여부Y : 동의, N : 동의안함',
	`AGRE_DT`	datetime	NULL	DEFAULT null	COMMENT '동의일시',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_dclz_user_vcatn_manage` (
	`STDR_YEAR`	varchar(4)	NOT NULL	COMMENT '기준연도',
	`CORP_ID2`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`CHANGE_HIST_NO`	int(11)	NULL	DEFAULT null	COMMENT '변경이력_번호',
	`YRYC_VCATN_REVISN_CO`	decimal(5, 1)	NULL	DEFAULT 0	COMMENT '연차휴가보정일수',
	`YRYC_VCATN_OCCRRNC_CO`	decimal(5, 1)	NOT NULL	COMMENT '연차휴가발생일수',
	`REWARD_VCATN_OCCRRNC_CO`	decimal(5, 1)	NOT NULL	COMMENT '보상휴가발생일수',
	`CORP_VCATN_OCCRRNC_CO`	decimal(5, 1)	NOT NULL	COMMENT '회사휴가발생일수',
	`YRYC_VCATN_USE_CO`	decimal(5, 1)	NOT NULL	COMMENT '연차휴가사용일수',
	`REWARD_VCATN_USE_CO`	decimal(5, 1)	NOT NULL	COMMENT '보상휴가사용일수',
	`CORP_VCATN_USE_CO`	decimal(5, 1)	NOT NULL	COMMENT '회사휴가사용일수',
	`YRYC_VCATN_REMNDR_CO`	decimal(5, 1)	NOT NULL	COMMENT '연차휴가잔여일수',
	`REWARD_VCATN_REMNDR_CO`	decimal(5, 1)	NOT NULL	COMMENT '보상휴가잔여일수',
	`CORP_VCATN_REMNDR_CO`	decimal(5, 1)	NOT NULL	COMMENT '회사휴가잔여일수',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOftb_corp_crtfc_option` (
	`OPTION_TYPE`	varchar(20)	NOT NULL	COMMENT '옵션 유형',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`OPTION_VALUE`	varchar(100)	NULL	DEFAULT null	COMMENT '옵션 값',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_trns_corp` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`START_DT`	datetime	NULL	DEFAULT null	COMMENT '시작일시',
	`END_DT`	datetime	NULL	DEFAULT null	COMMENT '종료일시',
	`STATUS`	varchar(20)	NULL	DEFAULT 'WAIT'	COMMENT '상태',
	`MSG`	varchar(1000)	NULL,
	`ZIP_PATH`	varchar(1000)	NULL,
	`ZIP_DOWN_CNT`	int(11)	NULL
);

CREATE TABLE `tb_corp_appr_form_mgmt` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_FORM_NO2`	int(11)	NOT NULL	COMMENT '결재양식번호',
	`APPR_LINE_UPDT_POSBL_YN`	char(1)	NOT NULL	DEFAULT 'Y'	COMMENT '결재라인수정가능여부Y,N',
	`DLVRR_ID`	int(11)	NULL	DEFAULT null	COMMENT '전달자_ID',
	`SORT_ORDR`	int(5)	NULL	DEFAULT 0	COMMENT '정렬순서',
	`DELETE_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '삭제여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`APPR_LINE_BKMK_NO`	int(11)	NOT NULL	COMMENT '결재라인즐겨찾기번호'
);

CREATE TABLE `tb_appr_doc` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`APPR_LINE_BKMK_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재라인즐겨찾기번호',
	`APPR_DOC_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서번호',
	`APPR_DOC_OPERTN_NO`	varchar(50)	NULL	DEFAULT null	COMMENT '결재_문서_시행_번호',
	`OPERTN_DT`	datetime	NULL	DEFAULT null	COMMENT '시행_일시',
	`REFRN_DOC_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '참조문서번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재양식타입코드(10 :동적양식 사용 , 20 : 에디터 사용 )',
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_DOC_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재문서상태코드TEMP:임시저장, WRT:작성중, PROGRS:진행중, CMPL:완료, RTN:반려, CNCL:취소',
	`PRSRV_TMLMT_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '보조기한코드ONE:1년, TWO:2년, THREE:3년, FOUR:4년, FIVE:5년',
	`APPR_CN`	longtext	NULL	DEFAULT null	COMMENT '결재내용',
	`ATCH_FILE_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '첨부파일ID',
	`DLVRR_ID`	int(11)	NULL	DEFAULT null	COMMENT '전달자_ID',
	`DLVRR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '전달자명',
	`DLVRR_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자부서번호',
	`DLVRR_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자부서명',
	`DLVRR_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직급번호',
	`DLVRR_CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직급명',
	`DLVRR_RSPOFC_NO`	int(11)	NULL	DEFAULT null	COMMENT '전달자직책번호',
	`DLVRR_RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '전달자직책명',
	`DLIV_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '전달상태코드',
	`DLIV_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '전달사유',
	`DLIV_STTUS_DT`	datetime	NOT NULL	COMMENT '전달상태일시',
	`DELETE_DT`	datetime	NULL	DEFAULT null	COMMENT '삭제일시',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`APPR_FORM_NO2`	int(11)	NOT NULL	COMMENT '결재양식번호'
);

CREATE TABLE `tb_user_dept` (
	`USER_ID2`	int(11)	NOT NULL	COMMENT '사용자ID',
	`DEPT_NO2`	int(11)	NOT NULL	COMMENT '부서ID',
	`DFLT_YN`	char(1)	NOT NULL	DEFAULT 'N'	COMMENT '기본여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`RSPOFC_NO2`	int(11)	NOT NULL	COMMENT '직책번호'
);

CREATE TABLE `tb_auth_dtl` (
	`Key`	int(11)	NOT NULL	COMMENT '권한정보번호',
	`AUTHOR_INFO_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '권한정보명',
	`JOB_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '업무구분코드(APPR:결재)',
	`AUTHOR_TY_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '권한유형코드(ADMIN:관리자, USER:사용자, SRCH:조회)',
	`AUTHOR_INFO_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '권한정보설명',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`AUTHOR_GROUP_NO`	int(11)	NOT NULL	COMMENT '권한그룹번호'
);

CREATE TABLE `tb_corp_mt_excclc` (
	`EXCCLC_MT`	char(6)	NOT NULL	COMMENT '정산월(ex : 202305)',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`USER_CO`	int(11)	NOT NULL	COMMENT '사용자건수',
	`JOB_GRP_NO`	int(11)	NOT NULL	COMMENT '업무그룹번호',
	`CNTRCT_STLE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '계약형태코드',
	`CNTRCT_CNCLS_DT`	datetime	NULL	DEFAULT null	COMMENT '계약체결일시',
	`CNTRCT_BEGIN_DT`	datetime	NULL	DEFAULT null	COMMENT '계약시작일시',
	`CNTRCT_END_DT`	datetime	NULL	DEFAULT null	COMMENT '계약종료일시',
	`SUB_TOTAL`	int(30)	NULL	DEFAULT 0	COMMENT 'SUB_TOTAL',
	`VAT`	int(30)	NULL	DEFAULT 0	COMMENT 'VAT',
	`TOTAL`	int(30)	NULL	DEFAULT 0	COMMENT 'TOTAL',
	`RCPMNY_DT`	datetime	NULL	DEFAULT null	COMMENT '입금일시',
	`RQEST_DT`	datetime	NULL	DEFAULT null	COMMENT '청구일시',
	`EXCCLC_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '정산여부',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_dclz_form_user_excess_work` (
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`UPPER_APPR_NO`	int(11)	NULL	DEFAULT null	COMMENT '상위 결재번호',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`USER_ID`	int(11)	NOT NULL	COMMENT '신청자_ID',
	`USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '신청부서명',
	`CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '신청직급번호',
	`EXCESS_WORK_PREARNGE_DE`	date	NOT NULL	COMMENT '초과근무 예정일자 ',
	`EXCESS_WORK_BEGIN_TIME`	time	NOT NULL	COMMENT '초과근무 시작시간',
	`EXCESS_WORK_END_TIME`	time	NOT NULL	COMMENT '초과근무 종료시간',
	`RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '사유',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_appr_line` (
	`APPR_LINE_NO`	int(11)	NOT NULL	COMMENT '결재라인번호',
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`APPR_TY_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재유형코드DRFT:기안, AGR:합의, APPR:결재',
	`APPROVER_ID`	int(11)	NULL	DEFAULT null	COMMENT '결재자ID',
	`APPROVER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '결재자명',
	`APPROVER_DEPT_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재자부서번호',
	`APPROVER_DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '결재자부서명',
	`APPROVER_CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재자직급번호',
	`APPROVER_CLSF_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '결재자직급명',
	`APPROVER_RSPOFC_NO`	int(11)	NULL	DEFAULT null	COMMENT '결재자직책번호',
	`APPROVER_RSPOFC_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '결재자직책명',
	`APPR_PROGRS_STTUS_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '결재진행상태코드WAIT:대기, APPRV:승인, RTN:반려',
	`APPR_OPINION`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재의견',
	`APPR_ORDR`	varchar(4)	NULL	DEFAULT null	COMMENT '결재순서',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`MNGR_UPDT_DT`	datetime	NULL	DEFAULT null	COMMENT '관리자승인반려일시'
);

CREATE TABLE `tb_form_restde_work_reqstdoc` (
	`APPR_NO`	int(11)	NOT NULL	COMMENT '결재번호',
	`USER_ID`	int(11)	NOT NULL	COMMENT '신청자_ID',
	`USER_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '신청자명',
	`DEPT_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '신청부서명',
	`CLSF_NO`	int(11)	NULL	DEFAULT null	COMMENT '신청직급번호',
	`PREARNGE_WORK_DE`	date	NULL	DEFAULT null	COMMENT '예정근무일자',
	`PREARNGE_WORK_BEGIN_TIME`	time	NULL	DEFAULT null	COMMENT '예정근무시작시간',
	`PREARNGE_WORK_END_TIME`	time	NULL	DEFAULT null	COMMENT '예정근무종료시간',
	`RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '사유',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOftb_dclz_pow_jobty` (
	`LABOR_STLE_NO2`	int(11)	NOT NULL	COMMENT '근로형태번호',
	`POW_NO`	int(11)	NOT NULL	COMMENT '근무지번호',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_user_labor_time_change_hist` (
	`CHANGE_HIST_NO`	int(11)	NOT NULL	COMMENT '변경이력_번호',
	`POW_NO`	int(11)	NOT NULL	COMMENT '근무지번호',
	`LABOR_STLE_NO`	int(11)	NOT NULL	COMMENT '근로형태번호',
	`ATTEND_DT`	datetime	NULL	DEFAULT null	COMMENT '출근일시',
	`LVFFC_DT`	datetime	NULL	DEFAULT null	COMMENT '퇴근일시',
	`CHANGE_RESN`	varchar(1000)	NULL	DEFAULT null	COMMENT '변경사유',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`USER_ID2`	varchar(50)	NOT NULL	COMMENT '사용자ID',
	`ATTEND_DE_SE2`	char(8)	NOT NULL	COMMENT '출근일_구분 (YYYYMMDD) ex) 20230105'
);

CREATE TABLE `tb_corp_cntrct` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`CNTRCT_STLE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '계약형태코드',
	`CNTRCT_CNCLS_DT`	datetime	NULL	DEFAULT null	COMMENT '계약체결일시',
	`CNTRCT_BEGIN_DT`	datetime	NULL	DEFAULT null	COMMENT '계약시작일시',
	`CNTRCT_END_DT`	datetime	NULL	DEFAULT null	COMMENT '계약종료일시',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOfCopyOftb_corp4` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOftb_appr_form` (
	`APPR_FORM_NO`	int(11)	NOT NULL	COMMENT '결재양식번호',
	`APPR_FORM_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '결재양식명',
	`APPR_FORM_DC`	varchar(4000)	NULL	DEFAULT null	COMMENT '결재양식설명',
	`REFRN_APPR_FORM_NO`	int(11)	NULL	DEFAULT null	COMMENT '참고 결재양식번호',
	`REFRN_APPR_FORM_CD`	varchar(100)	NULL	DEFAULT null	COMMENT '참조결재양식코드',
	`APPR_FORM_TY_CD`	varchar(50)	NULL	DEFAULT null,
	`CMMN_FORM_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '공통양식여부Y,N',
	`APPR_FORM_SE_CD`	varchar(50)	NULL	DEFAULT null,
	`APPR_SJ`	varchar(1000)	NULL	DEFAULT null	COMMENT '결재제목',
	`APPR_FORM`	longtext	NOT NULL	COMMENT '결재양식',
	`USE_YN`	char(1)	NOT NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CTGRY_NO`	int(11)	NOT NULL	COMMENT '카테고리번호'
);

CREATE TABLE `CopyOftb_job_grp` (
	`JOB_GRP_NO`	int(11)	NOT NULL	COMMENT '업무그룹번호',
	`JOB_GRP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '업무그룹명',
	`JOB_GRP_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '업무그룹설명',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOfCopyOftb_user3` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`USER_EMAIL`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '사용자이메일',
	`ECNY_DE`	datetime	NULL	DEFAULT null	COMMENT '입사일자',
	`LXTN_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '내선_번호',
	`MOBILE_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '모바일_번호',
	`PROFILE_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '프로필_파일_경로',
	`CORP_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '회사ID',
	`DEPT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '부서ID',
	`CLSF_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직급코드',
	`RSPOFC_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직책코드',
	`USER_STTUS_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '사용자상태구분코드',
	`USER_LANG_CD`	varchar(50)	NULL	DEFAULT 'ko'	COMMENT '사용자언어코드',
	`AUTHOR_TY_CD`	varchar(50)	NOT NULL	DEFAULT 'USER'	COMMENT '권한유형코드(ADMIN:관리자, LEADER : 부서리더, USER:사용자)',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`DFLT_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '기본 사용자 여부',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_form_purchs_rqstdoc_ofcrk` (
	`APPR_NO2`	int(11)	NOT NULL	COMMENT '결재번호',
	`RM`	varchar(1000)	NULL	DEFAULT null	COMMENT '비고',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_corp` (
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID',
	`TENANT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '테넌트ID',
	`CORP_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '회사명',
	`BIZRNO`	varchar(10)	NULL	DEFAULT null	COMMENT '사업자번호',
	`CPR_REGIST_NO`	varchar(13)	NULL	DEFAULT null	COMMENT '법인등록번호',
	`INDUTY_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업종',
	`BIZCND_NM`	varchar(50)	NULL	DEFAULT null	COMMENT '업태',
	`RPRSNTV_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '대표자명',
	`POST_NO`	varchar(5)	NULL	DEFAULT null	COMMENT '우편번호',
	`BPLC_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장주소',
	`BPLC_DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '사업장_상세_주소',
	`DETAIL_ADRES`	varchar(100)	NULL	DEFAULT null	COMMENT '상세주소',
	`CORP_HMPG`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_홈페이지',
	`CORP_TELNO`	varchar(50)	NULL	DEFAULT null	COMMENT '사업장회사_전화번호',
	`CORP_FXNUM`	varchar(50)	NULL	DEFAULT null	COMMENT '회사_팩스번호',
	`CORP_EMAIL`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_이메일',
	`MNGR_NM`	varchar(20)	NULL	DEFAULT null	COMMENT '관리자명',
	`jandi_team_id`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 팀 아이디',
	`jandi_token`	varchar(100)	NULL	DEFAULT null	COMMENT '잔디 토큰',
	`CORP_LOGO_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '회사_로고_파일_경로',
	`OFFCS_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '직인_파일_경로',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_user_auth` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`Key`	int(11)	NOT NULL	COMMENT '권한정보번호',
	`DFLT_YN`	char(1)	NOT NULL	DEFAULT 'N'	COMMENT '기본여부Y,N',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `CopyOftb_user2` (
	`USER_ID`	int(11)	NOT NULL	COMMENT '사용자ID',
	`USER_EMAIL`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '사용자이메일',
	`ECNY_DE`	datetime	NULL	DEFAULT null	COMMENT '입사일자',
	`LXTN_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '내선_번호',
	`MOBILE_NO`	varchar(20)	NULL	DEFAULT null	COMMENT '모바일_번호',
	`PROFILE_FILE_PATH`	varchar(200)	NULL	DEFAULT null	COMMENT '프로필_파일_경로',
	`CORP_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '회사ID',
	`DEPT_ID`	varchar(50)	NULL	DEFAULT null	COMMENT '부서ID',
	`CLSF_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직급코드',
	`RSPOFC_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '직책코드',
	`USER_STTUS_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '사용자상태구분코드',
	`USER_LANG_CD`	varchar(50)	NULL	DEFAULT 'ko'	COMMENT '사용자언어코드',
	`AUTHOR_TY_CD`	varchar(50)	NOT NULL	DEFAULT 'USER'	COMMENT '권한유형코드(ADMIN:관리자, LEADER : 부서리더, USER:사용자)',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`DFLT_YN`	char(1)	NULL	DEFAULT 'N'	COMMENT '기본 사용자 여부',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_dclz_jobty_manage` (
	`LABOR_STLE_NO`	int(11)	NOT NULL	COMMENT '근로형태번호',
	`LABOR_STLE_NM`	varchar(100)	NOT NULL	COMMENT '근로형태명',
	`LABOR_DFK`	char(7)	NOT NULL	COMMENT '근로요일 \n - 7자리 문자 구분',
	`LABOR_TY_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '근로 유형 (공통코드 참조)',
	`LABOR_BEGIN_TIME`	time	NOT NULL	COMMENT '근로시작시간(출근시간)',
	`LABOR_END_TIME`	time	NOT NULL	COMMENT '근로종료시간(퇴근시간)',
	`REST_TIME_USE_YN`	char(1)	NOT NULL	COMMENT '휴게시간사용여부 (1 : 사용, 0 : 사용안함)',
	`REST_BEGIN_TIME`	time	NULL	DEFAULT null	COMMENT '휴게시작시간',
	`REST_END_TIME`	time	NULL	DEFAULT null	COMMENT '휴게종료시간',
	`EXTN_NIGHT_RESTDE_LABOR_USE_YN`	char(1)	NOT NULL	COMMENT '연장야간휴일근로사용여부(1 : 사용, 0 : 사용안함)',
	`REGARD_LABOR_USE_YN`	char(1)	NOT NULL	COMMENT '간주근로사용여부(1 : 사용, 0 : 사용안함)',
	`ELPD_ATTEND_PERM_SE`	char(1)	NOT NULL	DEFAULT '1'	COMMENT '조기출근허용구분 (1 : 1시간전, 2 : 2시간전 3 : 3시간전)',
	`ATMC_LVFFC_PERM_YN`	char(1)	NOT NULL	DEFAULT 'Y'	COMMENT '자동퇴근허용여부 (Y : 자동퇴근허용, N : 자동퇴근 허용안함)',
	`LABOR_STLE_DC`	varchar(1000)	NULL	DEFAULT null	COMMENT '근로형태_설명',
	`ORGINL_LABOR_STLE_NO`	int(11)	NULL	DEFAULT null	COMMENT '원본근로형태번호',
	`USE_YN`	char(1)	NOT NULL	COMMENT '사용여부Y,N',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시',
	`CORP_ID`	varchar(50)	NOT NULL	COMMENT '회사ID'
);

CREATE TABLE `tb_code_dtl` (
	`CD`	varchar(50)	NOT NULL	COMMENT '코드ID',
	`GROUP_CD2`	varchar(50)	NOT NULL	COMMENT '그룹코드ID',
	`CD_NM`	varchar(100)	NULL	DEFAULT null	COMMENT '코드명',
	`SORT_ORDR`	varchar(4)	NULL	DEFAULT null	COMMENT '정렬순서',
	`USE_YN`	char(1)	NULL	DEFAULT 'Y'	COMMENT '사용여부Y,N',
	`ATTRIBUTE_1`	varchar(100)	NULL	DEFAULT null	COMMENT '속성1',
	`ATTRIBUTE_2`	varchar(100)	NULL	DEFAULT null	COMMENT '속성2',
	`ATTRIBUTE_3`	varchar(100)	NULL	DEFAULT null	COMMENT '속성3',
	`ATTRIBUTE_4`	varchar(100)	NULL	DEFAULT null	COMMENT '속성4',
	`ATTRIBUTE_5`	varchar(100)	NULL	DEFAULT null	COMMENT '속성5',
	`ATTRIBUTE_6`	varchar(100)	NULL	DEFAULT null	COMMENT '속성6',
	`CRTR_ID`	int(11)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	int(11)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_dclz_jobty_cmut_ceck` (
	`CMUT_CECK_MTHD_CD`	varchar(50)	NOT NULL	COMMENT '출퇴근체크방식_코드',
	`LABOR_STLE_NO2`	int(11)	NOT NULL	COMMENT '근로형태번호',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`UPDUSR_ID`	varchar(50)	NOT NULL	COMMENT '수정자ID',
	`UPDT_DT`	datetime	NOT NULL	COMMENT '수정일시'
);

CREATE TABLE `tb_user_hist` (
	`USER_HIST_SEQ`	int(11)	NOT NULL	COMMENT '사용자 이력 순번',
	`USER_STTUS_SE_CD`	varchar(50)	NULL	DEFAULT null	COMMENT '사용자상태구분코드',
	`BEGIN_DT`	datetime	NOT NULL	COMMENT '시작일시',
	`END_DT`	datetime	NULL	DEFAULT null	COMMENT '종료일시',
	`CRTR_ID`	varchar(50)	NOT NULL	COMMENT '생성자ID',
	`CREAT_DT`	datetime	NOT NULL	COMMENT '생성일시',
	`USER_ID2`	int(11)	NOT NULL	COMMENT '사용자ID'
);

ALTER TABLE `tb_user_clsf` ADD CONSTRAINT `PK_TB_USER_CLSF` PRIMARY KEY (
	`USER_ID2`,
	`CLSF_NO2`
);

ALTER TABLE `tb_appr_line_bkmk_dtl` ADD CONSTRAINT `PK_TB_APPR_LINE_BKMK_DTL` PRIMARY KEY (
	`APPR_LINE_BKMK_NO2`
);

ALTER TABLE `tb_appr_read_yn` ADD CONSTRAINT `PK_TB_APPR_READ_YN` PRIMARY KEY (
	`USER_ID`,
	`APPR_NO`
);

ALTER TABLE `tb_user_crtfc_request` ADD CONSTRAINT `PK_TB_USER_CRTFC_REQUEST` PRIMARY KEY (
	`USER_ID`,
	`CRTFC_REQUEST_NO`
);

ALTER TABLE `tb_dclz_setup` ADD CONSTRAINT `PK_TB_DCLZ_SETUP` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_code_cl` ADD CONSTRAINT `PK_TB_CODE_CL` PRIMARY KEY (
	`SYS_SE_CD`
);

ALTER TABLE `CopyOfCopyOftb_corp` ADD CONSTRAINT `PK_COPYOFCOPYOFTB_CORP` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `CopyOfCopyOfCopyOftb_appr_doc2` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFTB_APPR_DOC2` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `tb_user_cntrct` ADD CONSTRAINT `PK_TB_USER_CNTRCT` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `CopyOfCopyOftb_appr_doc2` ADD CONSTRAINT `PK_COPYOFCOPYOFTB_APPR_DOC2` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `CopyOfCopyOftb_user` ADD CONSTRAINT `PK_COPYOFCOPYOFTB_USER` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `tb_job_grp` ADD CONSTRAINT `PK_TB_JOB_GRP` PRIMARY KEY (
	`JOB_GRP_NO`
);

ALTER TABLE `tb_rspofc` ADD CONSTRAINT `PK_TB_RSPOFC` PRIMARY KEY (
	`RSPOFC_NO`
);

ALTER TABLE `tb_form_expndtr_decsn_list` ADD CONSTRAINT `PK_TB_FORM_EXPNDTR_DECSN_LIST` PRIMARY KEY (
	`EXPNDTR_DECSN_NO`,
	`APPR_NO`
);

ALTER TABLE `tb_restde_mgmt` ADD CONSTRAINT `PK_TB_RESTDE_MGMT` PRIMARY KEY (
	`RESTDE_YEAR`,
	`RESTDE_DE`
);

ALTER TABLE `tb_dclz_pow_manage` ADD CONSTRAINT `PK_TB_DCLZ_POW_MANAGE` PRIMARY KEY (
	`POW_NO`
);

ALTER TABLE `tb_user_crtfc_request_dtl` ADD CONSTRAINT `PK_TB_USER_CRTFC_REQUEST_DTL` PRIMARY KEY (
	`CRTFC_REQUEST_KEY`,
	`USER_ID2`,
	`CRTFC_REQUEST_NO2`
);

ALTER TABLE `CopyOftb_corp` ADD CONSTRAINT `PK_COPYOFTB_CORP` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_dclz_vcatn_iem_setup` ADD CONSTRAINT `PK_TB_DCLZ_VCATN_IEM_SETUP` PRIMARY KEY (
	`VCATN_IEM_NO`
);

ALTER TABLE `tb_dept` ADD CONSTRAINT `PK_TB_DEPT` PRIMARY KEY (
	`DEPT_NO`
);

ALTER TABLE `CopyOfCopyOfCopyOftb_corp2` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFTB_CORP2` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_appr_form` ADD CONSTRAINT `PK_TB_APPR_FORM` PRIMARY KEY (
	`APPR_FORM_NO`
);

ALTER TABLE `tb_form_mcrtf_reqstdoc` ADD CONSTRAINT `PK_TB_FORM_MCRTF_REQSTDOC` PRIMARY KEY (
	`APPR_NO2`
);

ALTER TABLE `tb_clsf` ADD CONSTRAINT `PK_TB_CLSF` PRIMARY KEY (
	`CLSF_NO`
);

ALTER TABLE `tb_form_bkmk` ADD CONSTRAINT `PK_TB_FORM_BKMK` PRIMARY KEY (
	`USER_ID`,
	`APPR_FORM_NO`
);

ALTER TABLE `tb_auth_grp` ADD CONSTRAINT `PK_TB_AUTH_GRP` PRIMARY KEY (
	`AUTHOR_GROUP_NO`
);

ALTER TABLE `CopyOfCopyOfCopyOftb_corp3` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFTB_CORP3` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_translate` ADD CONSTRAINT `PK_TB_TRANSLATE` PRIMARY KEY (
	`ORIGIN_TEXT`,
	`SUB_KEY`,
	`TO_LANGUAGE`
);

ALTER TABLE `CopyOfCopyOfCopyOfCopyOfCopyOftb_corp` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFCOPYOFCOPYOFTB_CORP` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_dclz_user_vcatn_manage_change_hist` ADD CONSTRAINT `PK_TB_DCLZ_USER_VCATN_MANAGE_CHANGE_HIST` PRIMARY KEY (
	`CHANGE_HIST_NO`
);

ALTER TABLE `tb_form_purchs_rqstdoc_list` ADD CONSTRAINT `PK_TB_FORM_PURCHS_RQSTDOC_LIST` PRIMARY KEY (
	`PURCHS_RQSTDOC_NO`
);

ALTER TABLE `tb_user_pow_jobty` ADD CONSTRAINT `PK_TB_USER_POW_JOBTY` PRIMARY KEY (
	`Key`,
	`POW_NO`,
	`LABOR_STLE_NO`
);

ALTER TABLE `CopyOftb_user3` ADD CONSTRAINT `PK_COPYOFTB_USER3` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `tb_form_purchs_rqstdoc_ofcrk_list` ADD CONSTRAINT `PK_TB_FORM_PURCHS_RQSTDOC_OFCRK_LIST` PRIMARY KEY (
	`PURCHS_RQSTDOC_OFCRK_NO`
);

ALTER TABLE `CopyOfCopyOfCopyOftb_appr_doc22` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFTB_APPR_DOC22` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `tb_appr_cnrs` ADD CONSTRAINT `PK_TB_APPR_CNRS` PRIMARY KEY (
	`COCNR_ID`,
	`APPR_NO2`
);

ALTER TABLE `tb_appr_line_bkmk` ADD CONSTRAINT `PK_TB_APPR_LINE_BKMK` PRIMARY KEY (
	`APPR_LINE_BKMK_NO`
);

ALTER TABLE `tb_corp_job_grp` ADD CONSTRAINT `PK_TB_CORP_JOB_GRP` PRIMARY KEY (
	`CORP_ID2`,
	`JOB_GRP_NO`
);

ALTER TABLE `tb_corp_hist` ADD CONSTRAINT `PK_TB_CORP_HIST` PRIMARY KEY (
	`HIST_NO`
);

ALTER TABLE `tb_code` ADD CONSTRAINT `PK_TB_CODE` PRIMARY KEY (
	`GROUP_CD`,
	`SYS_SE_CD2`
);

ALTER TABLE `tb_user_token` ADD CONSTRAINT `PK_TB_USER_TOKEN` PRIMARY KEY (
	`USER_AUTH_TOKEN`,
	`USER_ID`
);

ALTER TABLE `CopyOftb_user` ADD CONSTRAINT `PK_COPYOFTB_USER` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `tb_menu_auth` ADD CONSTRAINT `PK_TB_MENU_AUTH` PRIMARY KEY (
	`AUTHOR_TY_CD`,
	`MENU_NO2`,
	`JOB_GRP_NO2`
);

ALTER TABLE `tb_file_link` ADD CONSTRAINT `PK_TB_FILE_LINK` PRIMARY KEY (
	`file_link_id`
);

ALTER TABLE `tb_user` ADD CONSTRAINT `PK_TB_USER` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `tb_vcatn_mgmt` ADD CONSTRAINT `PK_TB_VCATN_MGMT` PRIMARY KEY (
	`CORP_ID`,
	`YEAR`,
	`USER_ID`
);

ALTER TABLE `tb_trns_appr_doc` ADD CONSTRAINT `PK_TB_TRNS_APPR_DOC` PRIMARY KEY (
	`APPR_NO`,
	`CORP_ID2`
);

ALTER TABLE `CopyOfCopyOfCopyOfCopyOftb_corp` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFCOPYOFTB_CORP` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_corp_restde_mgmt` ADD CONSTRAINT `PK_TB_CORP_RESTDE_MGMT` PRIMARY KEY (
	`RESTDE_YEAR`,
	`RESTDE_DE`,
	`CORP_ID2`
);

ALTER TABLE `CopyOfCopyOfCopyOfCopyOftb_corp4` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFCOPYOFTB_CORP4` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_form_rsgnation` ADD CONSTRAINT `PK_TB_FORM_RSGNATION` PRIMARY KEY (
	`APPR_NO2`
);

ALTER TABLE `CopyOftb_corp2` ADD CONSTRAINT `PK_COPYOFTB_CORP2` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `CopyOfCopyOftb_appr_doc3` ADD CONSTRAINT `PK_COPYOFCOPYOFTB_APPR_DOC3` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `tb_user_labor_time` ADD CONSTRAINT `PK_TB_USER_LABOR_TIME` PRIMARY KEY (
	`USER_ID`,
	`ATTEND_DE_SE`
);

ALTER TABLE `tb_form_vcatn_use` ADD CONSTRAINT `PK_TB_FORM_VCATN_USE` PRIMARY KEY (
	`APPR_NO2`
);

ALTER TABLE `tb_job_grp_dtl` ADD CONSTRAINT `PK_TB_JOB_GRP_DTL` PRIMARY KEY (
	`JOB_SE_CD`,
	`JOB_GRP_NO`
);

ALTER TABLE `CopyOfCopyOftb_appr_doc` ADD CONSTRAINT `PK_COPYOFCOPYOFTB_APPR_DOC` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `tb_refrn_doc` ADD CONSTRAINT `PK_TB_REFRN_DOC` PRIMARY KEY (
	`REFRN_DOC_NO`,
	`APPR_NO2`
);

ALTER TABLE `tb_dclz_form_user_vcatn` ADD CONSTRAINT `PK_TB_DCLZ_FORM_USER_VCATN` PRIMARY KEY (
	`APPR_NO2`
);

ALTER TABLE `tb_dclz_form_user_bsrp_reqst` ADD CONSTRAINT `PK_TB_DCLZ_FORM_USER_BSRP_REQST` PRIMARY KEY (
	`APPR_NO2`
);

ALTER TABLE `tb_form_ctgry` ADD CONSTRAINT `PK_TB_FORM_CTGRY` PRIMARY KEY (
	`CTGRY_NO`
);

ALTER TABLE `tb_job_grp_auth` ADD CONSTRAINT `PK_TB_JOB_GRP_AUTH` PRIMARY KEY (
	`AUTHOR_TY_CD`,
	`JOB_GRP_NO`
);

ALTER TABLE `tb_file` ADD CONSTRAINT `PK_TB_FILE` PRIMARY KEY (
	`FILE_ID`
);

ALTER TABLE `CopyOftb_appr_doc` ADD CONSTRAINT `PK_COPYOFTB_APPR_DOC` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `tb_menu` ADD CONSTRAINT `PK_TB_MENU` PRIMARY KEY (
	`MENU_NO`
);

ALTER TABLE `tb_dclz_pow_jobty_cmut_ceck` ADD CONSTRAINT `PK_TB_DCLZ_POW_JOBTY_CMUT_CECK` PRIMARY KEY (
	`CMUT_CECK_MTHD_CD`,
	`POW_NO2`
);

ALTER TABLE `tb_form_ctsnncost_pymnt_reqstdoc` ADD CONSTRAINT `PK_TB_FORM_CTSNNCOST_PYMNT_REQSTDOC` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `tb_appr_doc_answer` ADD CONSTRAINT `PK_TB_APPR_DOC_ANSWER` PRIMARY KEY (
	`APPR_ANSWER_NO`
);

ALTER TABLE `tb_corp_webhook` ADD CONSTRAINT `PK_TB_CORP_WEBHOOK` PRIMARY KEY (
	`WEBHOOK_TOKEN`,
	`CORP_ID`
);

ALTER TABLE `tb_user_dflt` ADD CONSTRAINT `PK_TB_USER_DFLT` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `tb_dclz_user_vcatn_manage` ADD CONSTRAINT `PK_TB_DCLZ_USER_VCATN_MANAGE` PRIMARY KEY (
	`STDR_YEAR`,
	`CORP_ID2`,
	`USER_ID`
);

ALTER TABLE `CopyOftb_corp_crtfc_option` ADD CONSTRAINT `PK_COPYOFTB_CORP_CRTFC_OPTION` PRIMARY KEY (
	`OPTION_TYPE`,
	`CORP_ID`
);

ALTER TABLE `tb_trns_corp` ADD CONSTRAINT `PK_TB_TRNS_CORP` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_corp_appr_form_mgmt` ADD CONSTRAINT `PK_TB_CORP_APPR_FORM_MGMT` PRIMARY KEY (
	`CORP_ID`,
	`APPR_FORM_NO2`
);

ALTER TABLE `tb_appr_doc` ADD CONSTRAINT `PK_TB_APPR_DOC` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `tb_user_dept` ADD CONSTRAINT `PK_TB_USER_DEPT` PRIMARY KEY (
	`USER_ID2`,
	`DEPT_NO2`
);

ALTER TABLE `tb_auth_dtl` ADD CONSTRAINT `PK_TB_AUTH_DTL` PRIMARY KEY (
	`Key`
);

ALTER TABLE `tb_corp_mt_excclc` ADD CONSTRAINT `PK_TB_CORP_MT_EXCCLC` PRIMARY KEY (
	`EXCCLC_MT`,
	`CORP_ID`
);

ALTER TABLE `tb_dclz_form_user_excess_work` ADD CONSTRAINT `PK_TB_DCLZ_FORM_USER_EXCESS_WORK` PRIMARY KEY (
	`APPR_NO2`
);

ALTER TABLE `tb_appr_line` ADD CONSTRAINT `PK_TB_APPR_LINE` PRIMARY KEY (
	`APPR_LINE_NO`,
	`APPR_NO2`
);

ALTER TABLE `tb_form_restde_work_reqstdoc` ADD CONSTRAINT `PK_TB_FORM_RESTDE_WORK_REQSTDOC` PRIMARY KEY (
	`APPR_NO`
);

ALTER TABLE `CopyOftb_dclz_pow_jobty` ADD CONSTRAINT `PK_COPYOFTB_DCLZ_POW_JOBTY` PRIMARY KEY (
	`LABOR_STLE_NO2`,
	`POW_NO`
);

ALTER TABLE `tb_user_labor_time_change_hist` ADD CONSTRAINT `PK_TB_USER_LABOR_TIME_CHANGE_HIST` PRIMARY KEY (
	`CHANGE_HIST_NO`
);

ALTER TABLE `tb_corp_cntrct` ADD CONSTRAINT `PK_TB_CORP_CNTRCT` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `CopyOfCopyOfCopyOftb_corp4` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFTB_CORP4` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `CopyOftb_appr_form` ADD CONSTRAINT `PK_COPYOFTB_APPR_FORM` PRIMARY KEY (
	`APPR_FORM_NO`
);

ALTER TABLE `CopyOftb_job_grp` ADD CONSTRAINT `PK_COPYOFTB_JOB_GRP` PRIMARY KEY (
	`JOB_GRP_NO`
);

ALTER TABLE `CopyOfCopyOftb_user3` ADD CONSTRAINT `PK_COPYOFCOPYOFTB_USER3` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `tb_form_purchs_rqstdoc_ofcrk` ADD CONSTRAINT `PK_TB_FORM_PURCHS_RQSTDOC_OFCRK` PRIMARY KEY (
	`APPR_NO2`
);

ALTER TABLE `tb_corp` ADD CONSTRAINT `PK_TB_CORP` PRIMARY KEY (
	`CORP_ID`
);

ALTER TABLE `tb_user_auth` ADD CONSTRAINT `PK_TB_USER_AUTH` PRIMARY KEY (
	`USER_ID`,
	`Key`
);

ALTER TABLE `CopyOftb_user2` ADD CONSTRAINT `PK_COPYOFTB_USER2` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `tb_dclz_jobty_manage` ADD CONSTRAINT `PK_TB_DCLZ_JOBTY_MANAGE` PRIMARY KEY (
	`LABOR_STLE_NO`
);

ALTER TABLE `tb_code_dtl` ADD CONSTRAINT `PK_TB_CODE_DTL` PRIMARY KEY (
	`CD`,
	`GROUP_CD2`
);

ALTER TABLE `tb_dclz_jobty_cmut_ceck` ADD CONSTRAINT `PK_TB_DCLZ_JOBTY_CMUT_CECK` PRIMARY KEY (
	`CMUT_CECK_MTHD_CD`,
	`LABOR_STLE_NO2`
);

ALTER TABLE `tb_user_hist` ADD CONSTRAINT `PK_TB_USER_HIST` PRIMARY KEY (
	`USER_HIST_SEQ`
);

ALTER TABLE `tb_user_clsf` ADD CONSTRAINT `FK_CopyOftb_user2_TO_tb_user_clsf_1` FOREIGN KEY (
	`USER_ID2`
)
REFERENCES `CopyOftb_user2` (
	`USER_ID`
);

ALTER TABLE `tb_user_clsf` ADD CONSTRAINT `FK_tb_clsf_TO_tb_user_clsf_1` FOREIGN KEY (
	`CLSF_NO2`
)
REFERENCES `tb_clsf` (
	`CLSF_NO`
);

ALTER TABLE `tb_appr_read_yn` ADD CONSTRAINT `FK_CopyOftb_appr_doc_TO_tb_appr_read_yn_1` FOREIGN KEY (
	`APPR_NO`
)
REFERENCES `CopyOftb_appr_doc` (
	`APPR_NO`
);

ALTER TABLE `tb_dclz_setup` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_corp4_TO_tb_dclz_setup_1` FOREIGN KEY (
	`CORP_ID`
)
REFERENCES `CopyOfCopyOfCopyOftb_corp4` (
	`CORP_ID`
);

ALTER TABLE `tb_user_cntrct` ADD CONSTRAINT `FK_CopyOfCopyOftb_user_TO_tb_user_cntrct_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `CopyOfCopyOftb_user` (
	`USER_ID`
);

ALTER TABLE `tb_form_expndtr_decsn_list` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_appr_doc2_TO_tb_form_expndtr_decsn_list_1` FOREIGN KEY (
	`APPR_NO`
)
REFERENCES `CopyOfCopyOfCopyOftb_appr_doc2` (
	`APPR_NO`
);

ALTER TABLE `tb_user_crtfc_request_dtl` ADD CONSTRAINT `FK_tb_user_TO_tb_user_crtfc_request_dtl_1` FOREIGN KEY (
	`USER_ID2`
)
REFERENCES `tb_user` (
	`USER_ID`
);

ALTER TABLE `tb_user_crtfc_request_dtl` ADD CONSTRAINT `FK_tb_user_crtfc_request_TO_tb_user_crtfc_request_dtl_1` FOREIGN KEY (
	`CRTFC_REQUEST_NO2`
)
REFERENCES `tb_user_crtfc_request` (
	`CRTFC_REQUEST_NO`
);

ALTER TABLE `tb_form_mcrtf_reqstdoc` ADD CONSTRAINT `FK_tb_form_rsgnation_TO_tb_form_mcrtf_reqstdoc_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `tb_form_rsgnation` (
	`APPR_NO2`
);

ALTER TABLE `tb_form_bkmk` ADD CONSTRAINT `FK_CopyOftb_appr_form_TO_tb_form_bkmk_1` FOREIGN KEY (
	`APPR_FORM_NO`
)
REFERENCES `CopyOftb_appr_form` (
	`APPR_FORM_NO`
);

ALTER TABLE `tb_user_pow_jobty` ADD CONSTRAINT `FK_tb_dclz_pow_manage_TO_tb_user_pow_jobty_1` FOREIGN KEY (
	`POW_NO`
)
REFERENCES `tb_dclz_pow_manage` (
	`POW_NO`
);

ALTER TABLE `tb_user_pow_jobty` ADD CONSTRAINT `FK_tb_dclz_jobty_manage_TO_tb_user_pow_jobty_1` FOREIGN KEY (
	`LABOR_STLE_NO`
)
REFERENCES `tb_dclz_jobty_manage` (
	`LABOR_STLE_NO`
);

ALTER TABLE `tb_appr_cnrs` ADD CONSTRAINT `FK_tb_appr_doc_TO_tb_appr_cnrs_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `tb_appr_doc` (
	`APPR_NO`
);

ALTER TABLE `tb_corp_job_grp` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOfCopyOftb_corp4_TO_tb_corp_job_grp_1` FOREIGN KEY (
	`CORP_ID2`
)
REFERENCES `CopyOfCopyOfCopyOfCopyOftb_corp4` (
	`CORP_ID`
);

ALTER TABLE `tb_corp_job_grp` ADD CONSTRAINT `FK_CopyOftb_job_grp_TO_tb_corp_job_grp_1` FOREIGN KEY (
	`JOB_GRP_NO`
)
REFERENCES `CopyOftb_job_grp` (
	`JOB_GRP_NO`
);

ALTER TABLE `tb_code` ADD CONSTRAINT `FK_tb_code_cl_TO_tb_code_1` FOREIGN KEY (
	`SYS_SE_CD2`
)
REFERENCES `tb_code_cl` (
	`SYS_SE_CD`
);

ALTER TABLE `tb_user_token` ADD CONSTRAINT `FK_tb_user_dflt_TO_tb_user_token_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `tb_user_dflt` (
	`USER_ID`
);

ALTER TABLE `tb_menu_auth` ADD CONSTRAINT `FK_tb_menu_TO_tb_menu_auth_1` FOREIGN KEY (
	`MENU_NO2`
)
REFERENCES `tb_menu` (
	`MENU_NO`
);

ALTER TABLE `tb_menu_auth` ADD CONSTRAINT `FK_tb_job_grp_TO_tb_menu_auth_1` FOREIGN KEY (
	`JOB_GRP_NO2`
)
REFERENCES `tb_job_grp` (
	`JOB_GRP_NO`
);

ALTER TABLE `tb_trns_appr_doc` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_corp3_TO_tb_trns_appr_doc_1` FOREIGN KEY (
	`CORP_ID2`
)
REFERENCES `CopyOfCopyOfCopyOftb_corp3` (
	`CORP_ID`
);

ALTER TABLE `tb_corp_restde_mgmt` ADD CONSTRAINT `FK_CopyOftb_corp2_TO_tb_corp_restde_mgmt_1` FOREIGN KEY (
	`CORP_ID2`
)
REFERENCES `CopyOftb_corp2` (
	`CORP_ID`
);

ALTER TABLE `tb_form_rsgnation` ADD CONSTRAINT `FK_CopyOfCopyOftb_appr_doc3_TO_tb_form_rsgnation_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `CopyOfCopyOftb_appr_doc3` (
	`APPR_NO`
);

ALTER TABLE `tb_form_vcatn_use` ADD CONSTRAINT `FK_CopyOfCopyOftb_appr_doc2_TO_tb_form_vcatn_use_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `CopyOfCopyOftb_appr_doc2` (
	`APPR_NO`
);

ALTER TABLE `tb_job_grp_dtl` ADD CONSTRAINT `FK_tb_job_grp_TO_tb_job_grp_dtl_1` FOREIGN KEY (
	`JOB_GRP_NO`
)
REFERENCES `tb_job_grp` (
	`JOB_GRP_NO`
);

ALTER TABLE `tb_refrn_doc` ADD CONSTRAINT `FK_tb_appr_doc_TO_tb_refrn_doc_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `tb_appr_doc` (
	`APPR_NO`
);

ALTER TABLE `tb_dclz_form_user_vcatn` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_appr_doc2_TO_tb_dclz_form_user_vcatn_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `CopyOfCopyOfCopyOftb_appr_doc2` (
	`APPR_NO`
);

ALTER TABLE `tb_dclz_form_user_bsrp_reqst` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_appr_doc2_TO_tb_dclz_form_user_bsrp_reqst_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `CopyOfCopyOfCopyOftb_appr_doc2` (
	`APPR_NO`
);

ALTER TABLE `tb_job_grp_auth` ADD CONSTRAINT `FK_CopyOftb_job_grp_TO_tb_job_grp_auth_1` FOREIGN KEY (
	`JOB_GRP_NO`
)
REFERENCES `CopyOftb_job_grp` (
	`JOB_GRP_NO`
);

ALTER TABLE `tb_dclz_pow_jobty_cmut_ceck` ADD CONSTRAINT `FK_tb_dclz_pow_manage_TO_tb_dclz_pow_jobty_cmut_ceck_1` FOREIGN KEY (
	`POW_NO2`
)
REFERENCES `tb_dclz_pow_manage` (
	`POW_NO`
);

ALTER TABLE `tb_form_ctsnncost_pymnt_reqstdoc` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_appr_doc2_TO_tb_form_ctsnncost_pymnt_reqstdoc_1` FOREIGN KEY (
	`APPR_NO`
)
REFERENCES `CopyOfCopyOfCopyOftb_appr_doc2` (
	`APPR_NO`
);

ALTER TABLE `tb_corp_webhook` ADD CONSTRAINT `FK_CopyOfCopyOftb_corp_TO_tb_corp_webhook_1` FOREIGN KEY (
	`CORP_ID`
)
REFERENCES `CopyOfCopyOftb_corp` (
	`CORP_ID`
);

ALTER TABLE `tb_user_dflt` ADD CONSTRAINT `FK_CopyOftb_user_TO_tb_user_dflt_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `CopyOftb_user` (
	`USER_ID`
);

ALTER TABLE `tb_dclz_user_vcatn_manage` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOfCopyOftb_corp_TO_tb_dclz_user_vcatn_manage_1` FOREIGN KEY (
	`CORP_ID2`
)
REFERENCES `CopyOfCopyOfCopyOfCopyOftb_corp` (
	`CORP_ID`
);

ALTER TABLE `tb_dclz_user_vcatn_manage` ADD CONSTRAINT `FK_CopyOfCopyOftb_user3_TO_tb_dclz_user_vcatn_manage_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `CopyOfCopyOftb_user3` (
	`USER_ID`
);

ALTER TABLE `CopyOftb_corp_crtfc_option` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_corp2_TO_CopyOftb_corp_crtfc_option_1` FOREIGN KEY (
	`CORP_ID`
)
REFERENCES `CopyOfCopyOfCopyOftb_corp2` (
	`CORP_ID`
);

ALTER TABLE `tb_trns_corp` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_corp3_TO_tb_trns_corp_1` FOREIGN KEY (
	`CORP_ID`
)
REFERENCES `CopyOfCopyOfCopyOftb_corp3` (
	`CORP_ID`
);

ALTER TABLE `tb_corp_appr_form_mgmt` ADD CONSTRAINT `FK_CopyOftb_appr_form_TO_tb_corp_appr_form_mgmt_1` FOREIGN KEY (
	`APPR_FORM_NO2`
)
REFERENCES `CopyOftb_appr_form` (
	`APPR_FORM_NO`
);

ALTER TABLE `tb_user_dept` ADD CONSTRAINT `FK_CopyOftb_user2_TO_tb_user_dept_1` FOREIGN KEY (
	`USER_ID2`
)
REFERENCES `CopyOftb_user2` (
	`USER_ID`
);

ALTER TABLE `tb_user_dept` ADD CONSTRAINT `FK_tb_dept_TO_tb_user_dept_1` FOREIGN KEY (
	`DEPT_NO2`
)
REFERENCES `tb_dept` (
	`DEPT_NO`
);

ALTER TABLE `tb_corp_mt_excclc` ADD CONSTRAINT `FK_CopyOftb_corp_TO_tb_corp_mt_excclc_1` FOREIGN KEY (
	`CORP_ID`
)
REFERENCES `CopyOftb_corp` (
	`CORP_ID`
);

ALTER TABLE `tb_dclz_form_user_excess_work` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_appr_doc2_TO_tb_dclz_form_user_excess_work_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `CopyOfCopyOfCopyOftb_appr_doc2` (
	`APPR_NO`
);

ALTER TABLE `tb_appr_line` ADD CONSTRAINT `FK_tb_appr_doc_TO_tb_appr_line_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `tb_appr_doc` (
	`APPR_NO`
);

ALTER TABLE `tb_form_restde_work_reqstdoc` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOftb_appr_doc2_TO_tb_form_restde_work_reqstdoc_1` FOREIGN KEY (
	`APPR_NO`
)
REFERENCES `CopyOfCopyOfCopyOftb_appr_doc2` (
	`APPR_NO`
);

ALTER TABLE `CopyOftb_dclz_pow_jobty` ADD CONSTRAINT `FK_tb_dclz_jobty_manage_TO_CopyOftb_dclz_pow_jobty_1` FOREIGN KEY (
	`LABOR_STLE_NO2`
)
REFERENCES `tb_dclz_jobty_manage` (
	`LABOR_STLE_NO`
);

ALTER TABLE `CopyOftb_dclz_pow_jobty` ADD CONSTRAINT `FK_tb_dclz_pow_manage_TO_CopyOftb_dclz_pow_jobty_1` FOREIGN KEY (
	`POW_NO`
)
REFERENCES `tb_dclz_pow_manage` (
	`POW_NO`
);

ALTER TABLE `tb_corp_cntrct` ADD CONSTRAINT `FK_CopyOftb_corp_TO_tb_corp_cntrct_1` FOREIGN KEY (
	`CORP_ID`
)
REFERENCES `CopyOftb_corp` (
	`CORP_ID`
);

ALTER TABLE `tb_form_purchs_rqstdoc_ofcrk` ADD CONSTRAINT `FK_CopyOfCopyOftb_appr_doc_TO_tb_form_purchs_rqstdoc_ofcrk_1` FOREIGN KEY (
	`APPR_NO2`
)
REFERENCES `CopyOfCopyOftb_appr_doc` (
	`APPR_NO`
);

ALTER TABLE `tb_user_auth` ADD CONSTRAINT `FK_CopyOftb_user3_TO_tb_user_auth_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `CopyOftb_user3` (
	`USER_ID`
);

ALTER TABLE `tb_user_auth` ADD CONSTRAINT `FK_tb_auth_dtl_TO_tb_user_auth_1` FOREIGN KEY (
	`Key`
)
REFERENCES `tb_auth_dtl` (
	`Key`
);

ALTER TABLE `tb_code_dtl` ADD CONSTRAINT `FK_tb_code_TO_tb_code_dtl_1` FOREIGN KEY (
	`GROUP_CD2`
)
REFERENCES `tb_code` (
	`GROUP_CD`
);

ALTER TABLE `tb_dclz_jobty_cmut_ceck` ADD CONSTRAINT `FK_tb_dclz_jobty_manage_TO_tb_dclz_jobty_cmut_ceck_1` FOREIGN KEY (
	`LABOR_STLE_NO2`
)
REFERENCES `tb_dclz_jobty_manage` (
	`LABOR_STLE_NO`
);


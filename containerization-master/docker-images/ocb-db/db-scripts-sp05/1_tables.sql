SET client_encoding TO 'UTF8';

CREATE TABLE bpw_rectrans (
	tid varchar(36) NOT NULL,
	customerid varchar(32),
	bankid varchar(48),
	acctid varchar(48),
	accttype varchar(32),
	token numeric(38),
	response text,
	synctype varchar(32) NOT NULL,
	status varchar(16),
	recsrvrtid varchar(32) NOT NULL,
	submitdate varchar(32) NOT NULL
) ;
CREATE INDEX ind_rectrn_idtype ON bpw_rectrans (acctid, synctype);
ALTER TABLE bpw_rectrans ADD PRIMARY KEY (tid,recsrvrtid);

CREATE TABLE bpw_recpmtinstruction (
	recsrvrtid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	fiid varchar(32),
	payeeid varchar(32) NOT NULL,
	payeelistid numeric(38) NOT NULL,
	payacct varchar(48),
	amount varchar(32) NOT NULL,
	bankid varchar(48) NOT NULL,
	acctdebitid varchar(48) NOT NULL,
	acctdebittype varchar(32) NOT NULL,
	memo varchar(64),
	extdpmtinfo varchar(80),
	datecreate varchar(32) NOT NULL,
	curdef varchar(3),
	initialamt varchar(32),
	finalamt varchar(32),
	frequency numeric(38) NOT NULL,
	startdate numeric(38) NOT NULL,
	enddate numeric(38) NOT NULL,
	instancecount numeric(38) NOT NULL,
	status varchar(32),
	logid varchar(32),
	createtime varchar(32),
	lastmodified varchar(32),
	submittedby varchar(32),
	paymentname varchar(32),
	templateid varchar(32),
	paymenttype varchar(32),
	batchid varchar(32),
	acctdebitcountrycode varchar(3),
	pmtsubtype varchar(32) NOT NULL DEFAULT 'PAYMENT'
) ;
CREATE INDEX ind_recpmti_st ON bpw_recpmtinstruction (status);
CREATE INDEX ind_recpmti_pid ON bpw_recpmtinstruction (payeeid);
CREATE INDEX ind_recpmti_endt ON bpw_recpmtinstruction (enddate);
CREATE INDEX ind_recpmti_pl ON bpw_recpmtinstruction (payeelistid);
CREATE INDEX ind_recpmti_uid ON bpw_recpmtinstruction (customerid);
ALTER TABLE bpw_recpmtinstruction ADD PRIMARY KEY (recsrvrtid);

CREATE TABLE product_i18n (
	bank_id varchar(20) NOT NULL,
	product_id numeric(38) NOT NULL,
	language char(5) NOT NULL,
	description varchar(800),
	title varchar(280),
	url varchar(1024)
) ;
ALTER TABLE product_i18n ADD PRIMARY KEY (bank_id,product_id,language);

CREATE TABLE cache_statistics (
	id numeric(38) NOT NULL,
	cache_name varchar(255) NOT NULL,
	cache_server_id varchar(255) NOT NULL,
	cache_status varchar(255),
	cache_last_reset varchar(255),
	cache_size varchar(255),
	cache_max_size varchar(255),
	cache_hits varchar(255),
	cache_misses varchar(255),
	cache_hit_ratio varchar(255),
	cache_memory varchar(255),
	cluster_name varchar(255) NOT NULL,
	cluster_status varchar(255),
	created_date_time timestamp NOT NULL,
	last_updated timestamp
) ;
ALTER TABLE cache_statistics ADD PRIMARY KEY (id);

CREATE TABLE ach_file (
	fileid varchar(32) NOT NULL,
	customerid varchar(32),
	rdfiachid varchar(32),
	odfiachid varchar(32),
	referencecode varchar(16),
	orgcreatedate varchar(32),
	bpwcreatedate varchar(32),
	duedate numeric(38),
	fileheadertype varchar(6),
	submitdate varchar(32),
	filestatus varchar(32),
	memo varchar(256),
	batchcount numeric(38),
	blockcount numeric(38),
	recordcount numeric(38),
	totaldebit varchar(32),
	totalcredit varchar(32),
	logid varchar(32),
	submittedby varchar(32),
	dtprocessed numeric(38),
	numberofcredits numeric(38) DEFAULT 0,
	numberofdebits numeric(38) DEFAULT 0,
	processid varchar(32),
	exportfilename varchar(255),
	uploadfilename varchar(128),
	fileprocessdt numeric(38)
) ;
CREATE INDEX idx_ach_file_02 ON ach_file (odfiachid);
CREATE INDEX idx_ach_file_03 ON ach_file (dtprocessed);
CREATE INDEX idx_ach_file_07 ON ach_file (fileid, orgcreatedate, odfiachid);
CREATE INDEX ind_ach_file ON ach_file (customerid, filestatus, duedate, fileid);
CREATE INDEX idx_ach_file_06 ON ach_file (orgcreatedate, odfiachid, filestatus);
CREATE INDEX idx_ach_file_04 ON ach_file (duedate);
CREATE INDEX idx_ach_file_09 ON ach_file (fileid, filestatus, processid, exportfilename);
CREATE INDEX idx_ach_file_05 ON ach_file (fileid, filestatus);
CREATE INDEX ind_achfilestatus ON ach_file (filestatus);
CREATE INDEX idx_ach_file_08 ON ach_file (fileid, numberofcredits, numberofdebits);
CREATE INDEX idx_ach_file_01 ON ach_file (orgcreatedate);
CREATE INDEX ind_achfilecustid ON ach_file (customerid);
ALTER TABLE ach_file ADD PRIMARY KEY (fileid);

CREATE TABLE mb_rtflowdefn (
	fdid numeric(22) NOT NULL,
	flid numeric(22) NOT NULL,
	fdname char(128) NOT NULL,
	xmlfilename varchar(255) NOT NULL,
	codefile varchar(255) NOT NULL
) ;

CREATE TABLE bpw_internalindices (
	indexname varchar(32) NOT NULL,
	indexvalue numeric(38),
	indexstring varchar(32)
) ;
ALTER TABLE bpw_internalindices ADD PRIMARY KEY (indexname);

CREATE TABLE ach_recrecord (
	recrecordid varchar(32) NOT NULL,
	batchid varchar(32),
	payeeid varchar(32),
	rdfiachid varchar(32),
	addendacount numeric(38),
	amount varchar(32),
	checkdigit varchar(2),
	checkserialnum varchar(32),
	recorddiscdata varchar(32),
	docrefnum varchar(16),
	itemresearchnum varchar(32),
	pmttype varchar(16),
	recordtype varchar(4),
	recordcategory varchar(32),
	pairedid varchar(32),
	recordcontent varchar(128),
	transcode varchar(6),
	recvcompid varchar(32),
	cardnum varchar(32),
	cardexpiredate varchar(32),
	cardtranscode varchar(32),
	payacct varchar(256),
	payeename varchar(50),
	bankacctid varchar(40),
	bankaccttype varchar(32),
	itemtypeind varchar(6),
	processcontrol varchar(12),
	recordseqnum numeric(38),
	terminalcity varchar(32),
	terminalstate varchar(32),
	tracenum varchar(32),
	origtracenum varchar(32),
	transdate varchar(32),
	effectivedate varchar(32),
	settlementdate varchar(32),
	submittedby varchar(32),
	submitdate varchar(32),
	recordstatus varchar(32),
	srvclasscode varchar(6),
	frequency numeric(38),
	startdate numeric(38),
	enddate numeric(38),
	pmtscount numeric(38),
	logid varchar(32),
	lastmodified varchar(32),
	dirtyflag numeric(38),
	offsetaccountid varchar(32),
	taxformid varchar(32),
	memo varchar(1024),
	activerecord char(1) DEFAULT 'Y',
	destctrycurrfxmeth varchar(32),
	payeenamelower varchar(50),
	payeenicknamelower varchar(50),
	payeeidentifier varchar(50),
	payeeroutingnumber varchar(50)
) ;
CREATE INDEX ind_recrcd_rdfi ON ach_recrecord (rdfiachid);
CREATE INDEX idx_ach_rec_rcd_05 ON ach_recrecord (recrecordid desc, recordstatus);
CREATE INDEX ind_recrdoffacctid ON ach_recrecord (offsetaccountid);
CREATE INDEX ind_recrdpairedid ON ach_recrecord (pairedid);
CREATE INDEX idx_ach_rec_rcd_03 ON ach_recrecord (batchid desc, recordstatus desc);
CREATE INDEX ind_recrecordbchid ON ach_recrecord (batchid);
CREATE INDEX ind_recrcd_payid ON ach_recrecord (payeeid);
CREATE INDEX idx_ach_rec_rcd_01 ON ach_recrecord (recordstatus desc);
CREATE INDEX idx_ach_rec_rcd_04 ON ach_recrecord (batchid, recrecordid, recordstatus);
ALTER TABLE ach_recrecord ADD PRIMARY KEY (recrecordid);

CREATE TABLE etf_achfile (
	fileid varchar(32) NOT NULL,
	createdate varchar(32),
	filestatus varchar(32),
	batchcount numeric(38),
	recordcount numeric(38),
	totaldebit varchar(32),
	totalcredit varchar(32),
	numberofcredits numeric(38) DEFAULT 0,
	numberofdebits numeric(38) DEFAULT 0,
	processid varchar(32),
	exportfilename varchar(255)
) ;
ALTER TABLE etf_achfile ADD PRIMARY KEY (fileid);

CREATE TABLE reg_srvr_tran_cat (
	server_tran_id varchar(255),
	rec_server_tran_id varchar(255),
	reg_user_cat_id numeric(38) NOT NULL
) ;
CREATE INDEX reg_tran_cat_idx ON reg_srvr_tran_cat (server_tran_id, rec_server_tran_id);

CREATE TABLE ent_profile_info (
	profile_ent_group_id numeric(38) NOT NULL,
	profile_type char(1) DEFAULT 'P',
	profile_sub_type char(1) NOT NULL,
	profile_scope char(1) DEFAULT '0',
	description varchar(255),
	profile_category numeric(38) NOT NULL,
	can_subscribe numeric(38) NOT NULL DEFAULT 0,
	create_date timestamp,
	modified_date timestamp,
	activation_date timestamp,
	cloned_profile_ent_group_id varchar(20),
	cloned_profile_reject_reason varchar(255),
	cloned_profile_created_by varchar(32),
	cloned_profile_submitted_by varchar(32),
	cloned_profile_approved_by varchar(32),
	cloned_profile_create_date timestamp,
	cloned_profile_tracking_id varchar(20),
	cloned_profile_status numeric(38) DEFAULT 0,
	status numeric(38) NOT NULL
) ;
ALTER TABLE ent_profile_info ADD PRIMARY KEY (profile_ent_group_id);

CREATE TABLE mbk_sec_factor_authen (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	channelname varchar(20),
	userid varchar(20),
	backenduserid varchar(30),
	usertype varchar(30),
	usergroupid varchar(48),
	sessionid varchar(100),
	phonenumber varchar(20),
	token varchar(20),
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL,
	numberoftries numeric(38)
) ;
ALTER TABLE mbk_sec_factor_authen ADD PRIMARY KEY (systemid);

CREATE TABLE ach_filebatch (
	batchid varchar(32) NOT NULL,
	fileid varchar(32) NOT NULL,
	companyname varchar(32) NOT NULL,
	companyidentification varchar(32) NOT NULL,
	stdentryclasscode varchar(32) NOT NULL,
	effectiveentrydate varchar(32) NOT NULL,
	entryaddendacount numeric(38),
	totaldebits varchar(32) NOT NULL,
	numberofdebits numeric(38),
	totalcredits varchar(32) NOT NULL,
	numberofcredits numeric(38),
	batchnumber numeric(38),
	sameday numeric(38) DEFAULT 0
) ;
CREATE INDEX idx_ach_fbatch_01 ON ach_filebatch (batchid, numberofcredits, numberofdebits);
CREATE INDEX ind_ach_filebatch ON ach_filebatch (fileid, batchid);
ALTER TABLE ach_filebatch ADD PRIMARY KEY (batchid);

CREATE TABLE object_type_props (
	object_type varchar(255) NOT NULL,
	prop_name varchar(255) NOT NULL,
	prop_value varchar(255) NOT NULL
) ;
CREATE INDEX xperfobjectprops ON object_type_props (object_type desc);
ALTER TABLE object_type_props ADD PRIMARY KEY (object_type,prop_name,prop_value);

CREATE TABLE res_summary_txt (
	stmt_id varchar(40) NOT NULL,
	msg_id numeric(38) NOT NULL,
	res_summary_txt varchar(40)
) ;
CREATE INDEX rst_idx1 ON res_summary_txt (stmt_id);

CREATE TABLE mbk_app_registration (
	registration_id varchar(32) NOT NULL,
	directory_id numeric(38) NOT NULL,
	push_token varchar(1024),
	push_token_updated_date timestamp,
	device_name varchar(32) NOT NULL,
	device_platform varchar(16) NOT NULL,
	device_unique_id varchar(64),
	device_home_location varchar(24),
	push_enabled char(1) NOT NULL DEFAULT 'F',
	auth_token varchar(256),
	auth_token_updated_date timestamp,
	status varchar(20) NOT NULL,
	tcaccepted char(1) NOT NULL DEFAULT 'F',
	tcaccepted_date timestamp,
	lastaccessed_date timestamp
) ;
ALTER TABLE mbk_app_registration ADD PRIMARY KEY (registration_id);

CREATE TABLE contact_points (
	contact_point_id numeric(6) NOT NULL,
	directory_id numeric(38) NOT NULL,
	contact_point_name varchar(40) NOT NULL,
	contact_point_type numeric(38) NOT NULL,
	address varchar(255),
	secure char(1),
	status numeric(38) NOT NULL DEFAULT 1
) ;
CREATE INDEX conpt_idx1 ON contact_points (directory_id);
ALTER TABLE contact_points ADD PRIMARY KEY (contact_point_id);

CREATE TABLE bs_transactions (
	transactionid numeric NOT NULL,
	transactiontypeid numeric NOT NULL,
	trnuid varchar(36),
	accountid varchar(48) NOT NULL,
	fiid varchar(32) NOT NULL,
	transactiondate numeric,
	amount varchar(32),
	destaccountid varchar(48),
	destfiid varchar(32),
	currencycode varchar(3) NOT NULL,
	memo varchar(40),
	referencenumber numeric NOT NULL,
	chequenumber varchar(32),
	dataclassification char(1) NOT NULL,
	runningbalance decimal(31,3)
) ;
CREATE INDEX xif45transactions ON bs_transactions (transactiontypeid);
CREATE INDEX xif85transactions ON bs_transactions (destaccountid);
CREATE INDEX xif62transactions ON bs_transactions (destfiid);
CREATE INDEX xif23transactions ON bs_transactions (accountid);
ALTER TABLE bs_transactions ADD PRIMARY KEY (transactionid);

CREATE TABLE rpps_fiinfo (
	rppsfiid varchar(32) NOT NULL,
	firppsid varchar(32) NOT NULL,
	fiid varchar(32) NOT NULL,
	firppsname varchar(32),
	rppsid varchar(32) NOT NULL,
	rppsname varchar(32) NOT NULL,
	memo varchar(256),
	submitdate varchar(32),
	activationdate varchar(32),
	fistatus varchar(32) NOT NULL,
	creditcap varchar(32) NOT NULL,
	logid varchar(32)
) ;
ALTER TABLE rpps_fiinfo ADD PRIMARY KEY (rppsfiid);

CREATE TABLE sa_dataretention (
	data_ret_type numeric(38) NOT NULL,
	data_ret_id numeric(38) NOT NULL,
	data_type varchar(50) NOT NULL,
	data_class char(1) NOT NULL,
	num_days numeric(38) NOT NULL
) ;
ALTER TABLE sa_dataretention ADD PRIMARY KEY (data_ret_type,data_ret_id,data_type,data_class);

CREATE TABLE user_alerts (
	alert_id numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL,
	alert_type numeric(38) NOT NULL,
	status numeric(38) NOT NULL,
	one_time char(1)
) ;
ALTER TABLE user_alerts ADD PRIMARY KEY (alert_id);

CREATE TABLE bs_lbtransactions (
	accountid varchar(48) NOT NULL,
	transactionindex numeric NOT NULL,
	lockboxnumber varchar(40) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	transid numeric(38),
	transtypeid numeric(38),
	description varchar(255),
	amount decimal(31,3),
	numrejectedchecks numeric(38),
	rejectedamount decimal(31,3),
	immedavailamount decimal(31,3),
	onedayavailamount decimal(31,3),
	moreonedayavailam decimal(31,3),
	valuedatetime timestamp,
	bankrefnum varchar(40),
	custrefnum varchar(40),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(1024),
	extra varchar(1024)
) ;
ALTER TABLE bs_lbtransactions ADD PRIMARY KEY (accountid,transactionindex);

CREATE TABLE bpw_customer (
	customerid varchar(32) NOT NULL,
	firstname varchar(35),
	middleinitial varchar(35),
	lastname varchar(35),
	suffix varchar(5),
	ssn varchar(12),
	jointfirstname varchar(32),
	jointmiddleinitial varchar(32),
	jointlastname varchar(32),
	jointsuffix varchar(5),
	addressline1 varchar(40),
	addressline2 varchar(40),
	city varchar(32),
	state varchar(2),
	zipcode varchar(11),
	country varchar(10),
	consumerstatus varchar(32),
	ctrycode varchar(3),
	phone varchar(32),
	inetaddr varchar(255),
	secondctrycode varchar(3),
	secondphone varchar(32),
	jointcountrycode varchar(3),
	jointphone varchar(32),
	jointsecondctrycode varchar(3),
	jointsecondphone varchar(32),
	personalseccode varchar(32),
	dollarlimit double precision,
	sponsorid varchar(10),
	billingplan varchar(10),
	custtype varchar(32),
	custgroup varchar(32),
	custcategory varchar(32),
	fiid varchar(32) NOT NULL,
	birthdate varchar(32),
	extinfo varchar(255),
	remoteuserkey varchar(20),
	acctverification varchar(32),
	submitdate varchar(32),
	allowzerodayprocess char(1),
	achcreditleaddays numeric(38) DEFAULT 2,
	achdebitleaddays numeric(38) DEFAULT 1,
	virtualcustomer char(1),
	usertype numeric(38),
	ach_iat_usetaxid char(1),
	originatorid varchar(16),
	originatoraddress varchar(40),
	originatorcitystate varchar(40),
	originatorcountryzip varchar(40),
	backendcustomerid varchar(20)
) ;
CREATE INDEX indcustfiid ON bpw_customer (fiid);
CREATE INDEX indcuststatus ON bpw_customer (consumerstatus);
CREATE INDEX ind_cust_ltft ON bpw_customer (lastname, firstname);
CREATE INDEX idxbpwetf0023 ON bpw_customer (fiid, customerid);
ALTER TABLE bpw_customer ADD PRIMARY KEY (customerid);

CREATE TABLE entitlement_del (
	ent_group_id numeric(38),
	member_type varchar(255),
	member_subtype varchar(255),
	member_id varchar(255),
	operation_name varchar(255),
	object_type varchar(255),
	object_id varchar(255)
) ;
CREATE INDEX xperfentdel4 ON entitlement_del (ent_group_id, operation_name, object_id);
CREATE INDEX xperfentdel2 ON entitlement_del (ent_group_id, member_type, member_subtype, member_id);
CREATE INDEX xperfentdel3 ON entitlement_del (member_id, member_subtype, member_type, ent_group_id);
CREATE INDEX xperfentdel1 ON entitlement_del (ent_group_id);

CREATE TABLE feature_group_type_props (
	feature_group_id numeric(38) NOT NULL,
	prop_name varchar(255) NOT NULL,
	prop_value varchar(255) NOT NULL
) ;
ALTER TABLE feature_group_type_props ADD PRIMARY KEY (feature_group_id,prop_name,prop_value);

CREATE TABLE ach_record (
	recordid varchar(32) NOT NULL,
	batchid varchar(32),
	payeeid varchar(32),
	rdfiachid varchar(32),
	addendacount numeric(38),
	amount varchar(32),
	checkdigit varchar(2),
	checkserialnum varchar(32),
	recorddiscdata varchar(32),
	docrefnum varchar(16),
	itemresearchnum varchar(32),
	pmttype varchar(16),
	recordtype varchar(4),
	recordcategory varchar(32),
	pairedid varchar(32),
	recordcontent varchar(128),
	transcode varchar(6),
	recvcompid varchar(32),
	payacct varchar(256),
	payeename varchar(50),
	bankacctid varchar(40),
	bankaccttype varchar(32),
	cardnum varchar(32),
	cardexpiredate varchar(32),
	cardtranscode varchar(32),
	itemtypeind varchar(6),
	processcontrol varchar(12),
	recordseqnum numeric(38),
	terminalcity varchar(32),
	terminalstate varchar(32),
	tracenum varchar(32),
	origtracenum varchar(32),
	transdate varchar(32),
	effectivedate varchar(32),
	settlementdate varchar(32),
	submittedby varchar(32),
	submitdate varchar(32),
	recordstatus varchar(32),
	srvclasscode varchar(6),
	logid varchar(32),
	lastmodified varchar(32),
	dirtyflag numeric(38),
	offsetaccountid varchar(32),
	taxformid varchar(32),
	memo varchar(1024),
	activerecord char(1) DEFAULT 'Y',
	destctrycurrfxmeth varchar(32),
	payeenamelower varchar(50),
	payeenicknamelower varchar(50),
	payeeidentifier varchar(50),
	payeeroutingnumber varchar(50)
) ;
CREATE INDEX ind_achrcd_payid ON ach_record (payeeid);
CREATE INDEX ind_recordbatchid ON ach_record (batchid);
CREATE INDEX idx_ach_record_05 ON ach_record (recordid desc, recordstatus);
CREATE INDEX idx_ach_record_02 ON ach_record (transcode);
CREATE INDEX ind_rcdoffacctid ON ach_record (offsetaccountid);
CREATE INDEX idx_ach_record_01 ON ach_record (recordstatus);
CREATE INDEX idx_ach_record_03 ON ach_record (batchid desc, recordstatus desc);
CREATE INDEX ind_achrcd_rdfi ON ach_record (rdfiachid);
CREATE INDEX ind_rcd_pairedid ON ach_record (pairedid);
CREATE INDEX idx_ach_record_04 ON ach_record (batchid, recordid, recordstatus);
ALTER TABLE ach_record ADD PRIMARY KEY (recordid);

CREATE TABLE business_employee (
	business_id numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL,
	primary_user char(1),
	primary_admin numeric(38) NOT NULL DEFAULT 0
) ;
CREATE INDEX business_emp_idx3 ON business_employee (directory_id);
CREATE INDEX business_emp_idx2 ON business_employee (directory_id, primary_user, business_id);
CREATE UNIQUE INDEX business_emp_idx ON business_employee (directory_id desc, business_id);
ALTER TABLE business_employee ADD PRIMARY KEY (business_id,directory_id);

CREATE TABLE rptsortcriteria (
	reportid numeric(38) NOT NULL,
	ordinal numeric(38) NOT NULL,
	criterianame varchar(40) NOT NULL,
	ascdesc char(1) NOT NULL
) ;
CREATE INDEX rptsortidx ON rptsortcriteria (reportid);

CREATE TABLE mbk_session_history (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	msisdn varchar(30),
	userid varchar(128) NOT NULL,
	backenduserid varchar(30),
	usertype varchar(30),
	channelname varchar(255) NOT NULL,
	userbankid varchar(48),
	usergroupid varchar(48),
	sessioncreateddate numeric(20) NOT NULL,
	sessionupdateddate numeric(20) NOT NULL,
	datausage numeric(20),
	sessiontime numeric(20),
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
ALTER TABLE mbk_session_history ADD PRIMARY KEY (systemid);

CREATE TABLE bs_config (
	id varchar(32) NOT NULL
) ;
ALTER TABLE bs_config ADD PRIMARY KEY (id);

CREATE TABLE sch_instructiontypestatus (
	fiid varchar(32) NOT NULL,
	instructiontype varchar(32) NOT NULL,
	lastschedulertime varchar(32),
	schedulerstatus varchar(32),
	lastdispatchtime varchar(32),
	dispatchstatus varchar(32),
	cutoffid varchar(32),
	processid varchar(32)
) ;
CREATE INDEX ind_sch_inst_st ON sch_instructiontypestatus (schedulerstatus);
CREATE INDEX ind_sch_inst_typ ON sch_instructiontypestatus (instructiontype);
ALTER TABLE sch_instructiontypestatus ADD PRIMARY KEY (fiid,instructiontype);

CREATE TABLE bpw_consumercrossreference (
	consumerid varchar(32),
	federaltaxid varchar(9),
	consumerssn varchar(9),
	sponsorid varchar(32),
	sponsorconsumerid varchar(32) NOT NULL,
	consumertype varchar(32),
	submitdate varchar(32)
) ;
CREATE INDEX ind_custxfid ON bpw_consumercrossreference (consumerid);
ALTER TABLE bpw_consumercrossreference ADD PRIMARY KEY (sponsorconsumerid);

CREATE TABLE dc_ccacctsummary (
	dcaccountid numeric(38) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	availablecredit decimal(31,3),
	amountdue decimal(31,3),
	interestrate double precision,
	duedate timestamp,
	cardholdername varchar(1024),
	cardexpdate timestamp,
	creditlimit decimal(31,3),
	lastpaymentamt decimal(31,3),
	nextpaymentminamt decimal(31,3),
	nextpaymentdue timestamp,
	lastpaymentdate timestamp,
	valuedate timestamp,
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_ccacctsummary_idx2 ON dc_ccacctsummary (dataclassification, dcaccountid);
CREATE INDEX dc_ccacctsummary_idx1 ON dc_ccacctsummary (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
ALTER TABLE dc_ccacctsummary ADD PRIMARY KEY (dcaccountid,datadate,dataclassification);

CREATE TABLE bpw_propertyconfig (
	propertyname varchar(64) NOT NULL,
	value varchar(255)
) ;
ALTER TABLE bpw_propertyconfig ADD PRIMARY KEY (propertyname);

CREATE TABLE limits (
	limit_id numeric NOT NULL,
	ent_group_id numeric(38),
	member_type varchar(255),
	member_subtype varchar(255),
	member_id varchar(255),
	operation_name varchar(255),
	object_type varchar(255),
	object_id varchar(255),
	period numeric NOT NULL,
	data varchar(30),
	modified_date timestamp,
	allowapproval char(1) NOT NULL,
	running_total_type char(1) NOT NULL,
	iscrosscurrency char(1) NOT NULL,
	currencycode char(3) NOT NULL
) ;
CREATE INDEX xperflimits2 ON limits (ent_group_id, member_type, member_subtype, member_id);
CREATE INDEX xperflimits ON limits (ent_group_id desc);
ALTER TABLE limits ADD PRIMARY KEY (limit_id);

CREATE TABLE req_appr (
	req_appr_id numeric NOT NULL,
	ent_group_id numeric(38),
	member_type varchar(255),
	member_subtype varchar(255),
	member_id varchar(255),
	operation_name varchar(255),
	object_type varchar(255),
	object_id varchar(255)
) ;
CREATE INDEX xperfreqappr ON req_appr (ent_group_id desc);
CREATE INDEX xperfreqappr2 ON req_appr (ent_group_id, member_type, member_subtype, member_id);
ALTER TABLE req_appr ADD PRIMARY KEY (req_appr_id);

CREATE TABLE object_properties (
	object_type numeric(38) NOT NULL,
	object_id varchar(128) NOT NULL,
	prop_name varchar(40) NOT NULL,
	seq_no numeric(38) NOT NULL,
	prop_value varchar(1024) NOT NULL
) ;
ALTER TABLE object_properties ADD PRIMARY KEY (object_type,object_id,prop_name,seq_no);

CREATE TABLE customer_rel (
	directory_id numeric(38) NOT NULL,
	primary_user_id numeric(38) NOT NULL
) ;
CREATE INDEX customer_rel_idx2 ON customer_rel (primary_user_id, directory_id desc);
CREATE INDEX customer_rel_idx ON customer_rel (directory_id, primary_user_id);

CREATE TABLE bpw_xferinstruction (
	srvrtid varchar(32) NOT NULL,
	bankid varchar(48),
	branchid varchar(32),
	customerid varchar(32) NOT NULL,
	fiid varchar(32),
	amount varchar(32) NOT NULL,
	acctdebitid varchar(48) NOT NULL,
	acctdebittype varchar(32) NOT NULL,
	acctcreditid varchar(48) NOT NULL,
	acctcredittype varchar(32) NOT NULL,
	datecreate varchar(32) NOT NULL,
	datetopost varchar(32) NOT NULL,
	status varchar(32),
	logid varchar(32),
	confirmnum varchar(64),
	recsrvrtid varchar(32),
	lastmodified varchar(32),
	submittedby varchar(32),
	frombankid varchar(48),
	frombranchid varchar(32),
	curdef varchar(3) DEFAULT 'USD',
	batchid varchar(32),
	toamount varchar(32),
	toamountcurrency varchar(3),
	userassignedamount numeric(38) DEFAULT 0,
	acctfromcountrycode varchar(3),
	accttocountrycode varchar(3),
	pmtsubtype varchar(32) NOT NULL DEFAULT 'TRANSFER'
) ;
CREATE INDEX ind_xfinst_01 ON bpw_xferinstruction (datetopost, customerid, fiid, status, recsrvrtid);
CREATE INDEX ind_xfinst_st ON bpw_xferinstruction (status);
CREATE INDEX ind_xfinst_dtpst ON bpw_xferinstruction (datetopost);
CREATE INDEX ind_xfinst_srvrtid ON bpw_xferinstruction (srvrtid, confirmnum, recsrvrtid);
CREATE INDEX ind_xfinst_cust ON bpw_xferinstruction (customerid);
ALTER TABLE bpw_xferinstruction ADD PRIMARY KEY (srvrtid);

CREATE TABLE mb_rtenumvalues (
	mdeid numeric(22) NOT NULL,
	mdlid numeric(22) NOT NULL,
	ordinal numeric(22) NOT NULL,
	name varchar(255) NOT NULL,
	value varchar(255) NOT NULL
) ;

CREATE TABLE bs_mail (
	messageid numeric NOT NULL,
	customerid varchar(32) NOT NULL,
	sentdate numeric NOT NULL,
	sentfrom varchar(32) NOT NULL,
	sentto varchar(32) NOT NULL,
	subject varchar(60),
	message text,
	accountnumber varchar(48)
) ;

CREATE TABLE appr_groups (
	apprgroupid numeric(38) NOT NULL,
	businessid numeric(38) NOT NULL,
	groupname varchar(255) NOT NULL
) ;
CREATE INDEX appr_grbusid ON appr_groups (businessid);
ALTER TABLE appr_groups ADD PRIMARY KEY (apprgroupid);

CREATE TABLE bpw_wirebank (
	bankid varchar(32) NOT NULL,
	bankname varchar(128) NOT NULL,
	extbankid varchar(32),
	addressline1 varchar(128),
	addressline2 varchar(128),
	addressline3 varchar(128),
	city varchar(35),
	state varchar(32),
	postalcode varchar(32),
	country varchar(64),
	bankphone varchar(32),
	fedrtn varchar(32),
	swiftrtn varchar(32),
	chipsrtn varchar(32),
	otherrtn varchar(32),
	iban varchar(48),
	corrpsbankaccnumber varchar(48)
) ;
CREATE INDEX ind_wbchipsrtn ON bpw_wirebank (chipsrtn);
CREATE INDEX ind_wbfedrtn ON bpw_wirebank (fedrtn);
CREATE INDEX ind_wbbankname ON bpw_wirebank (bankname);
CREATE INDEX ind_wbextbankid ON bpw_wirebank (extbankid);
CREATE INDEX ind_wbotherrtn ON bpw_wirebank (otherrtn);
CREATE INDEX ind_wbcountry ON bpw_wirebank (country);
CREATE INDEX ind_wbswiftrtn ON bpw_wirebank (swiftrtn);
CREATE INDEX ind_wbcity ON bpw_wirebank (city);
CREATE INDEX ind_wbaddress1 ON bpw_wirebank (addressline1);
CREATE INDEX ind_wbstate ON bpw_wirebank (state);
ALTER TABLE bpw_wirebank ADD PRIMARY KEY (bankid);

CREATE TABLE tw_transaction (
	twid numeric(38) NOT NULL,
	trackingid varchar(32) NOT NULL,
	userid numeric(38) NOT NULL,
	transactiontype numeric(38) NOT NULL,
	dtsubmit timestamp NOT NULL,
	amount varchar(32) NOT NULL,
	username varchar(32),
	password varchar(32),
	transdetailxml varchar(2200) NOT NULL
) ;
ALTER TABLE tw_transaction ADD PRIMARY KEY (twid);

CREATE TABLE reg_transaction (
	reg_transaction_id numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL,
	account_id varchar(48) NOT NULL,
	fi_transaction_id varchar(255),
	reference_number varchar(20),
	payee_name varchar(40),
	type numeric(38),
	status numeric(38),
	memo varchar(255),
	date_issued timestamp,
	date_cleared timestamp,
	rec_server_tran_id varchar(255),
	server_tran_id varchar(255),
	amount decimal(31,3) NOT NULL,
	base_amount decimal(31,3),
	base_currency_code varchar(3)
) ;
CREATE INDEX reg_tran_idx2 ON reg_transaction (directory_id);
CREATE INDEX reg_tran_idx ON reg_transaction (account_id);
CREATE INDEX reg_tran_idx3 ON reg_transaction (fi_transaction_id);
ALTER TABLE reg_transaction ADD PRIMARY KEY (reg_transaction_id);

CREATE TABLE mb_rtdefinition (
	fieldid numeric(22) NOT NULL,
	mdlid numeric(22) NOT NULL,
	fieldtype numeric(22) NOT NULL,
	fieldname char(128) NOT NULL,
	readtype numeric(22) NOT NULL,
	datatype numeric(22) NOT NULL,
	dataformat numeric(22) NOT NULL,
	atomicid numeric(22) NOT NULL,
	reusableid numeric(22) NOT NULL,
	parentid numeric(22) NOT NULL,
	ordinal numeric(22) NOT NULL,
	minlength numeric(22) NOT NULL,
	maxlength numeric(22) NOT NULL,
	fixedlength numeric(22) NOT NULL,
	pretag varchar(255),
	posttag varchar(255),
	picture varchar(255),
	enumlookup numeric(22) NOT NULL,
	properties numeric(22) NOT NULL,
	headervalue varchar(255),
	minrepeatcount numeric(22) NOT NULL,
	maxrepeatcount numeric(22) NOT NULL,
	minvalue varchar(255),
	maxvalue varchar(255),
	namevaluepairs numeric(22) NOT NULL,
	defaultvalue varchar(255),
	codefile varchar(255),
	tagdelimiterbegin varchar(255),
	tagdelimiterend varchar(255),
	fielddelimiterbegin varchar(255),
	fielddelimiterend varchar(255),
	leadingpad varchar(8),
	trailingpad varchar(8),
	numchildren numeric(22) NOT NULL,
	prefixlength numeric(22),
	customid numeric(22) NOT NULL
) ;

CREATE TABLE bank_employee (
	employee_id numeric(38) NOT NULL,
	ext_id varchar(64),
	user_name varchar(64) NOT NULL,
	bank_employee_id varchar(20),
	first_name varchar(35),
	last_name varchar(35),
	email_address varchar(255),
	employee_admin_access numeric(38),
	user_password varchar(100),
	address1 varchar(40),
	address2 varchar(40),
	city varchar(20),
	state varchar(2),
	zip varchar(11),
	home_phone varchar(14),
	employee_status numeric(38) NOT NULL,
	supervisor numeric(38),
	employee_notify numeric(38),
	bank_id varchar(20) NOT NULL,
	approval_provider numeric(38),
	review_required char(1),
	obo_enabled char(1),
	msg_approval_provider numeric(38),
	affiliate_bank_id numeric(38) NOT NULL,
	password_status numeric(38) NOT NULL,
	password_fail_count numeric(38) NOT NULL,
	password_lockout_time timestamp,
	last_active_date timestamp
) ;
CREATE UNIQUE INDEX bank_employee_idx ON bank_employee (user_name);
CREATE INDEX bank_employee_idx2 ON bank_employee (employee_id, first_name, last_name);
ALTER TABLE bank_employee ADD PRIMARY KEY (employee_id);

CREATE TABLE appr_itemprops (
	itemid numeric(38) NOT NULL,
	itemtype numeric(38) NOT NULL,
	propname varchar(255) NOT NULL,
	propvalue varchar(255) NOT NULL
) ;
ALTER TABLE appr_itemprops ADD PRIMARY KEY (itemid,itemtype,propname);

CREATE TABLE category (
	category_id numeric(38) NOT NULL,
	parent_category_id numeric(38),
	bank_id varchar(20) NOT NULL,
	name varchar(50)
) ;
ALTER TABLE category ADD PRIMARY KEY (bank_id,category_id);

CREATE TABLE accounts (
	directory_id numeric(38) NOT NULL,
	account_id varchar(48) NOT NULL,
	nickname varchar(40),
	hide numeric(38),
	export_begin_date timestamp,
	export_end_date timestamp,
	bank_email_token varchar(20),
	reg_retrieval_date timestamp,
	reg_default char(1),
	reg_enabled char(1),
	positive_pay char(1),
	routing_num varchar(100),
	bic_account varchar(100),
	primary_account char(1),
	core_account char(1),
	personal_account char(1),
	currency_type char(3),
	bank_name varchar(100),
	zbaflag char(1) NOT NULL DEFAULT 'B',
	showprevopenledger char(1) NOT NULL DEFAULT 'Y',
	contact_id numeric(38),
	account_type numeric(38) NOT NULL,
	account_num varchar(48) NOT NULL,
	is_master char(1) NOT NULL DEFAULT 'N',
	inc_zbacr_inrollup char(1) NOT NULL DEFAULT 'N',
	inc_zbadb_inrollup char(1) NOT NULL DEFAULT 'N',
	withhold_nzb_sub char(1) NOT NULL DEFAULT 'N',
	stripped_account_num varchar(48) NOT NULL,
	country_code varchar(3),
	internal_account_id varchar(48)
) ;
CREATE INDEX accounts_idx8_td ON accounts (account_id, routing_num, directory_id, is_master);
CREATE INDEX accounts_idx ON accounts (account_id desc);
CREATE INDEX accounts_idx6 ON accounts (directory_id);
CREATE INDEX accounts_idx2 ON accounts (directory_id, account_id, nickname, routing_num);
CREATE INDEX accounts_idx9 ON accounts (directory_id, contact_id);
CREATE INDEX accounts_idx7_td ON accounts (account_id, routing_num);
CREATE INDEX accounts_idx3 ON accounts (account_id desc, nickname desc);
CREATE INDEX accounts_idx5 ON accounts (routing_num, account_id);
ALTER TABLE accounts ADD PRIMARY KEY (directory_id,account_id);

CREATE TABLE blk_account (
	user_dir_id numeric(38) NOT NULL,
	routing_num varchar(100) NOT NULL,
	account_num varchar(48) NOT NULL,
	stripped_account_num varchar(48) NOT NULL,
	bank_name varchar(100) NOT NULL,
	lower_bank_name varchar(100) NOT NULL
) ;
CREATE UNIQUE INDEX blk_account_idx ON blk_account (stripped_account_num, routing_num, user_dir_id);
CREATE INDEX blk_account_idx2 ON blk_account (routing_num, user_dir_id, bank_name, stripped_account_num, account_num);
CREATE INDEX blk_account_idx3 ON blk_account (lower_bank_name, user_dir_id, bank_name, stripped_account_num, account_num, routing_num);
ALTER TABLE blk_account ADD PRIMARY KEY (user_dir_id,routing_num,stripped_account_num);

CREATE TABLE bpw_pmtinstruction (
	srvrtid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	fiid varchar(32),
	payeeid varchar(32) NOT NULL,
	payeelistid numeric(38) NOT NULL,
	payacct varchar(48),
	routeid numeric(38) NOT NULL,
	amount varchar(32) NOT NULL,
	bankid varchar(48) NOT NULL,
	acctdebitid varchar(48) NOT NULL,
	acctdebittype varchar(32) NOT NULL,
	memo varchar(64),
	extdpmtinfo varchar(80),
	datecreate varchar(32) NOT NULL,
	curdef varchar(3),
	startdate numeric(38) NOT NULL,
	status varchar(32),
	logid varchar(32),
	paymenttype varchar(32),
	recsrvrtid varchar(32),
	lastmodified varchar(32),
	submittedby varchar(32),
	batchid varchar(32),
	paymentname varchar(32),
	templateid varchar(32),
	immediatefundallocation char(1),
	immediateprocessing char(1),
	payeemode varchar(30),
	acctdebitcountrycode varchar(3),
	confirmnum varchar(64),
	pmtsubtype varchar(32) NOT NULL DEFAULT 'PAYMENT'
) ;
CREATE INDEX ind_pmtins_plst ON bpw_pmtinstruction (payeelistid);
CREATE INDEX ind_pmtins_stdt ON bpw_pmtinstruction (startdate);
CREATE INDEX ind_pmtins_uid ON bpw_pmtinstruction (customerid);
CREATE INDEX ind_pmtins_pid ON bpw_pmtinstruction (payeeid);
CREATE INDEX ind_pmtins_st ON bpw_pmtinstruction (status);
ALTER TABLE bpw_pmtinstruction ADD PRIMARY KEY (srvrtid);

CREATE TABLE queue_members (
	queue_id numeric(38) NOT NULL,
	employee_id numeric(38) NOT NULL,
	status numeric(38)
) ;
CREATE INDEX queue_queue_id ON queue_members (queue_id);
ALTER TABLE queue_members ADD PRIMARY KEY (queue_id,employee_id);

CREATE TABLE mnthly_acct_smry (
	stmt_id varchar(40) NOT NULL,
	heading varchar(40),
	avg_coll_balance varchar(40) NOT NULL,
	deposits numeric(38) NOT NULL,
	items_deposited numeric(38) NOT NULL,
	withdrawals numeric(38) NOT NULL,
	cash_deposited numeric(38) NOT NULL,
	trans_to_limit numeric(38) NOT NULL,
	elec_trans numeric(38) NOT NULL,
	num_xs_trans numeric(38) NOT NULL,
	trans_fee varchar(40) NOT NULL,
	xs_limit numeric(38) NOT NULL,
	xs_trans_tot_fee varchar(40) NOT NULL
) ;
ALTER TABLE mnthly_acct_smry ADD PRIMARY KEY (stmt_id);

CREATE TABLE dc_lbcredititems (
	dclockboxid numeric(38) NOT NULL,
	dccredititemindex numeric NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	itemid numeric(38),
	documenttype varchar(40),
	payor varchar(80),
	amount decimal(31,3),
	checknumber varchar(40),
	checkdate timestamp,
	couponaccountnum varchar(40),
	couponamount1 decimal(31,3),
	couponamount2 decimal(31,3),
	coupondate1 timestamp,
	coupondate2 timestamp,
	couponrefnum varchar(40),
	checkroutingnum varchar(48),
	checkaccountnum varchar(48),
	lockboxworktype varchar(40),
	lockboxbatchnum varchar(40),
	lockboxseqnum varchar(40),
	memo varchar(1024),
	immedavailamount decimal(31,3),
	onedayavailamount decimal(31,3),
	moreonedayavailam decimal(31,3),
	valuedatetime timestamp,
	bankrefnum varchar(40),
	custrefnum varchar(40),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_lbcredititems_idx2 ON dc_lbcredititems (dataclassification, dclockboxid);
CREATE INDEX dc_lbcredititems_idx1 ON dc_lbcredititems (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX dc_lbcredititems_idx3 ON dc_lbcredititems (dclockboxid, datadate, dataclassification);
ALTER TABLE dc_lbcredititems ADD PRIMARY KEY (dclockboxid,dccredititemindex,dataclassification);

CREATE TABLE app_form (
	app_id numeric(38) NOT NULL
) ;
ALTER TABLE app_form ADD PRIMARY KEY (app_id);

CREATE TABLE interest_summary (
	stmt_id varchar(40) NOT NULL,
	apy double precision NOT NULL,
	based_avg_coll_bal varchar(40) NOT NULL,
	interest_earned varchar(40) NOT NULL,
	avg_coll_bal varchar(40) NOT NULL
) ;
ALTER TABLE interest_summary ADD PRIMARY KEY (stmt_id);

CREATE TABLE etoe_btx_data (
	id numeric NOT NULL,
	etoe_session_id numeric NOT NULL,
	root_context_id varchar(200) NOT NULL,
	correlation_id varchar(200) NOT NULL,
	bytes_sent_by_client numeric NOT NULL,
	bytes_sent_to_client numeric NOT NULL,
	request_from_client timestamp NOT NULL,
	response_to_client timestamp NOT NULL,
	request_headers varchar(4000) NOT NULL,
	response_headers varchar(4000) NOT NULL,
	created_date timestamp NOT NULL,
	transaction_step numeric NOT NULL,
	message_index numeric NOT NULL,
	message_dsr_guid varchar(100) NOT NULL,
	request_method varchar(20) NOT NULL,
	request_protocol varchar(50) NOT NULL,
	request_uri varchar(500)
) ;
ALTER TABLE etoe_btx_data ADD PRIMARY KEY (id);

CREATE TABLE bpw_recsrvrtrans (
	recsrvrtid varchar(32) NOT NULL,
	customerid varchar(32),
	bankid varchar(48),
	acctid varchar(48) NOT NULL,
	accttype varchar(32),
	response text,
	synctype varchar(32) NOT NULL,
	token numeric(38),
	submitdate varchar(32) NOT NULL,
	status varchar(16)
) ;
CREATE INDEX ind_rcsrtrn_ciaiat ON bpw_recsrvrtrans (customerid, acctid, accttype);
ALTER TABLE bpw_recsrvrtrans ADD PRIMARY KEY (recsrvrtid);

CREATE TABLE status_i18n (
	bank_id varchar(20) NOT NULL,
	status_id numeric(38) NOT NULL,
	language char(5) NOT NULL,
	name varchar(200)
) ;
ALTER TABLE status_i18n ADD PRIMARY KEY (bank_id,status_id,language);

CREATE TABLE dc_lockboxsummary (
	dcaccountid numeric(38) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	totalcredits decimal(31,3),
	totaldebits decimal(31,3),
	totalnumcredits numeric(38),
	totalnumdebits numeric(38),
	immediatefloat decimal(31,3),
	onedayfloat decimal(31,3),
	twodayfloat decimal(31,3),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_lockboxsummary_idx2 ON dc_lockboxsummary (dataclassification, dcaccountid);
CREATE INDEX dc_lockboxsummary_idx1 ON dc_lockboxsummary (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
ALTER TABLE dc_lockboxsummary ADD PRIMARY KEY (dcaccountid,datadate,dataclassification);

CREATE TABLE transactions (
	stmt_id varchar(40) NOT NULL,
	transaction_id varchar(40) NOT NULL,
	trans_amount varchar(40) NOT NULL,
	trns_ref_num varchar(40) NOT NULL,
	card_number varchar(40),
	trans_type numeric(38) NOT NULL,
	description1 varchar(40),
	description2 varchar(40),
	description3 varchar(40),
	trans_date timestamp NOT NULL
) ;
CREATE INDEX txs_idx1 ON transactions (stmt_id);

CREATE TABLE mb_rtflowlibrary (
	flid numeric(22) NOT NULL,
	flname char(128) NOT NULL
) ;

CREATE TABLE bpw_wireaddenda (
	srvrtid varchar(32) NOT NULL,
	ordinal numeric(38) NOT NULL,
	addenda varchar(1024) DEFAULT 'NULL'
) ;
ALTER TABLE bpw_wireaddenda ADD PRIMARY KEY (srvrtid,ordinal);

CREATE TABLE cc_location (
	locationid varchar(32) NOT NULL,
	locationname varchar(64) NOT NULL,
	cclocationid varchar(64) NOT NULL,
	compid varchar(32) NOT NULL,
	concentrateacctid varchar(32),
	disburseacctid varchar(32),
	bankrtn varchar(32) NOT NULL,
	bankname varchar(256),
	accountnum varchar(32) NOT NULL,
	accounttype varchar(32) NOT NULL,
	depositmin varchar(32),
	depositmax varchar(32),
	anticipatorydepos varchar(32),
	thresholddeposamt varchar(32),
	consolidatedepos char(1),
	depositprenote char(1),
	depprensubdate varchar(32),
	depprenotestatus varchar(32),
	disburseprenote char(1),
	disprensubdate varchar(32),
	disprenotestatus varchar(32),
	memo varchar(256),
	status varchar(32) NOT NULL,
	logid varchar(32) NOT NULL,
	lastrequesttime varchar(32) NOT NULL,
	submittedby varchar(32) NOT NULL,
	agentid varchar(32),
	agenttype varchar(32),
	depositsamedayprenote char(1) DEFAULT 'N',
	disbursesamedayprenote char(1) DEFAULT 'N'
) ;
CREATE INDEX idx_cc_location_01 ON cc_location (locationid, status);
CREATE INDEX idx_cc_location_09 ON cc_location (compid, status, disburseacctid, concentrateacctid);
CREATE INDEX idx_cc_location_11 ON cc_location (compid, locationid);
CREATE INDEX idx_cc_location_04 ON cc_location (locationid, depprenotestatus);
CREATE INDEX idx_cc_location_07 ON cc_location (locationid, compid);
CREATE INDEX idx_cc_location_06 ON cc_location (compid, locationid, status);
CREATE INDEX idx_cc_location_02 ON cc_location (locationid, disprenotestatus);
CREATE INDEX idx_cc_location_08 ON cc_location (accountnum, bankrtn, cclocationid, status);
CREATE INDEX idx_cc_location_03 ON cc_location (locationid, lastrequesttime);
CREATE INDEX idx_cc_location_10 ON cc_location (compid, disburseacctid, concentrateacctid, locationname, locationid);
CREATE INDEX idx_cc_location_05 ON cc_location (compid, status);
ALTER TABLE cc_location ADD PRIMARY KEY (locationid);

CREATE TABLE ach_flatfile (
	fileid varchar(32) NOT NULL,
	chunkid numeric(38) NOT NULL,
	cumchunksize numeric(38),
	filecontent text,
	submitdate varchar(32),
	filestatus varchar(32),
	filesize varchar(32),
	filetype varchar(32),
	logid varchar(32)
) ;
CREATE INDEX idx_ach_ffile_02 ON ach_flatfile (cumchunksize);
CREATE INDEX idx_ach_ffile_04 ON ach_flatfile (fileid, chunkid);
CREATE INDEX idx_ach_ffile_03 ON ach_flatfile (chunkid);
CREATE INDEX idx_ach_ffile_01 ON ach_flatfile (fileid);

CREATE TABLE bpw_paymentbatch (
	batchid varchar(32) NOT NULL,
	fiid varchar(32) NOT NULL,
	customerid varchar(32),
	batchname varchar(128),
	batchtype varchar(32),
	totalamount varchar(32),
	amountcurrency char(3),
	paymentcount numeric(38),
	submittedby varchar(32),
	submitdate timestamp,
	batchstatus varchar(32),
	logid varchar(32) DEFAULT 'NULL'
) ;
ALTER TABLE bpw_paymentbatch ADD PRIMARY KEY (batchid);

CREATE TABLE queue (
	queue_id numeric(38) NOT NULL,
	queue_type numeric(38) NOT NULL,
	queue_name varchar(100),
	product_id numeric(38),
	status numeric(38) NOT NULL,
	status_id numeric(38),
	autoreply_text varchar(255),
	subject varchar(100),
	from_id numeric(38),
	bank_id varchar(20) NOT NULL,
	email_address varchar(255),
	description varchar(255),
	modified_date timestamp,
	is_consumer char(1) NOT NULL DEFAULT 'Y',
	is_corporate char(1) NOT NULL DEFAULT 'Y'
) ;
CREATE INDEX queue_idx3 ON queue (queue_id, bank_id);
CREATE INDEX queue_status_id ON queue (status_id);
CREATE INDEX queue_idx1 ON queue (queue_name, product_id, status_id);
CREATE INDEX queue_idx2 ON queue (queue_id, queue_name);
ALTER TABLE queue ADD PRIMARY KEY (queue_id);

CREATE TABLE bpw_payeeeditmask (
	payeeid varchar(32) NOT NULL,
	obsoleteeditmask varchar(32),
	valideditmask varchar(32) NOT NULL,
	submitdate varchar(32)
) ;
ALTER TABLE bpw_payeeeditmask ADD PRIMARY KEY (payeeid,valideditmask);

CREATE TABLE object_type (
	object_type varchar(255) NOT NULL
) ;
ALTER TABLE object_type ADD PRIMARY KEY (object_type);

CREATE TABLE application (
	app_id numeric(38) NOT NULL,
	product_id numeric(38) NOT NULL,
	form_id numeric(38) NOT NULL,
	category_id numeric(38) NOT NULL,
	status_id numeric(38) NOT NULL,
	tracking_no varchar(20),
	first_name varchar(50),
	last_name varchar(50),
	email_address varchar(255),
	ssn varchar(12),
	create_date timestamp,
	customer_id numeric(38),
	bank_id varchar(20) NOT NULL,
	employee_id numeric(38),
	affiliate_bank_id numeric(38),
	process_id numeric(38),
	process_name varchar(35),
	process_desc varchar(255),
	channel_type varchar(20),
	address1 varchar(40),
	address2 varchar(40),
	city varchar(20),
	state varchar(2),
	zip varchar(11),
	country varchar(30),
	home_phone varchar(25),
	work_phone varchar(25),
	submitting_user_name varchar(50) NOT NULL,
	due_date timestamp,
	decision_reason varchar(255),
	terms_accepted varchar(10),
	auth_type varchar(10),
	auth_code varchar(10),
	auth_verified varchar(10),
	auth_verified_date timestamp
) ;
ALTER TABLE application ADD PRIMARY KEY (app_id);

CREATE TABLE lu_swiftbic_fi (
	swiftinstitutionid numeric(38) NOT NULL,
	modificationflag varchar(2),
	bic varchar(8),
	bicbranchcode varchar(3),
	institutionname1 varchar(35),
	institutionname2 varchar(35),
	institutionname3 varchar(35),
	branchinformation1 varchar(35),
	branchinformation2 varchar(35),
	city varchar(35),
	subtype varchar(4),
	vas varchar(60),
	extra varchar(35),
	address1 varchar(35),
	address2 varchar(35),
	address3 varchar(35),
	address4 varchar(35),
	location1 varchar(35),
	location2 varchar(35),
	location3 varchar(35),
	country1 varchar(35),
	country2 varchar(35),
	pobnumber varchar(35),
	poblocation1 varchar(35),
	poblocation2 varchar(35),
	poblocation3 varchar(35),
	pobcountry1 varchar(35),
	pobcountry2 varchar(35) DEFAULT 'NULL'
) ;
CREATE UNIQUE INDEX ind_swiftbiccode ON lu_swiftbic_fi (bic, bicbranchcode);
ALTER TABLE lu_swiftbic_fi ADD PRIMARY KEY (swiftinstitutionid);

CREATE TABLE queue_i18n (
	queue_id numeric(38) NOT NULL,
	language char(5) NOT NULL,
	queue_name varchar(400),
	autoreply_text varchar(1020),
	subject varchar(400),
	description varchar(1020)
) ;
ALTER TABLE queue_i18n ADD PRIMARY KEY (queue_id,language);

CREATE TABLE affil_cutoff_times (
	affiliate_bank_id numeric(38) NOT NULL,
	cut_off_type numeric(38) NOT NULL,
	day_of_week numeric(38),
	time_of_day char(5) NOT NULL,
	one_time_extension char(5),
	active char(1) NOT NULL
) ;
CREATE INDEX affil_cutoff_t_idx ON affil_cutoff_times (affiliate_bank_id, cut_off_type);

CREATE TABLE bpw_bank (
	bankid varchar(48) NOT NULL,
	sitename varchar(5),
	sponsorid varchar(10),
	debitacctrtn varchar(48),
	debitacctnumber varchar(48),
	debitglacct varchar(32),
	dollarlimit double precision,
	submitdate varchar(32)
) ;
ALTER TABLE bpw_bank ADD PRIMARY KEY (bankid);

CREATE TABLE feature_type_props (
	feature_id numeric(38) NOT NULL,
	prop_name varchar(255) NOT NULL,
	prop_value varchar(255) NOT NULL
) ;
ALTER TABLE feature_type_props ADD PRIMARY KEY (feature_id,prop_name,prop_value);

CREATE TABLE bpw_billpaytmphist (
	sessionid varchar(32) NOT NULL,
	cursorid numeric(38) NOT NULL,
	submitdate varchar(32) NOT NULL,
	transactionid varchar(32) NOT NULL,
	transactiontype varchar(32) NOT NULL,
	datetopost numeric(38) NOT NULL,
	payeename varchar(50) NOT NULL,
	acctdebitid varchar(48) NOT NULL,
	frequency varchar(32),
	freqintval numeric(38) NOT NULL,
	status varchar(32) NOT NULL,
	amount decimal(28,4) NOT NULL,
	templatename varchar(32),
	acctdebitnickname varchar(40),
	instancenum numeric(38) DEFAULT 0
) ;
ALTER TABLE bpw_billpaytmphist ADD PRIMARY KEY (sessionid,cursorid);

CREATE TABLE bank (
	bank_id varchar(20) NOT NULL
) ;
ALTER TABLE bank ADD PRIMARY KEY (bank_id);

CREATE TABLE daily_bal_summary (
	stmt_id varchar(40) NOT NULL,
	summary_date timestamp NOT NULL,
	balance varchar(40) NOT NULL,
	res_in_use varchar(40) NOT NULL
) ;
CREATE INDEX dbs_idx1 ON daily_bal_summary (stmt_id);

CREATE TABLE mb_rtadapttempl (
	atid numeric(22) NOT NULL,
	alid numeric(22) NOT NULL,
	atname char(128) NOT NULL,
	templatetype numeric(22) NOT NULL,
	codefile varchar(255) NOT NULL
) ;

CREATE TABLE bpw_transid (
	tid varchar(36) NOT NULL,
	submitdate varchar(32) NOT NULL
) ;
CREATE INDEX ind_trnid_subdt ON bpw_transid (submitdate);
ALTER TABLE bpw_transid ADD PRIMARY KEY (tid);

CREATE TABLE reg_transtypedesc (
	trans_type_id numeric(38) NOT NULL,
	language varchar(5) NOT NULL,
	trans_type_desc varchar(255) NOT NULL
) ;
ALTER TABLE reg_transtypedesc ADD PRIMARY KEY (trans_type_id,language);

CREATE TABLE lu_financialinstrtn (
	institutionid numeric(38) NOT NULL,
	achroutingnumber varchar(9)
) ;
CREATE INDEX ind_firtn_rtn ON lu_financialinstrtn (achroutingnumber);
CREATE INDEX ind_firtn_idrtn ON lu_financialinstrtn (institutionid, achroutingnumber);

CREATE TABLE fm_log (
	logdate timestamp NOT NULL,
	filetype varchar(255) NOT NULL,
	hostname varchar(255) NOT NULL,
	filename varchar(512) NOT NULL,
	activitytype varchar(32) NOT NULL,
	fromsystem varchar(255),
	tosystem varchar(255),
	status varchar(32) NOT NULL,
	comments varchar(1024)
) ;
COMMENT ON TABLE fm_log IS E'File monitor log table';
CREATE INDEX index_tosys ON fm_log (tosystem);
CREATE INDEX index_7 ON fm_log (logdate, filetype, status);
CREATE INDEX index_status ON fm_log (status);
CREATE INDEX index_fromsys ON fm_log (fromsystem);
CREATE INDEX index_filetype ON fm_log (filetype);
CREATE INDEX index_host_file ON fm_log (hostname, filename);
CREATE INDEX index_logdate ON fm_log (logdate);

CREATE TABLE customer (
	directory_id numeric(38) NOT NULL,
	ext_id varchar(64),
	affiliate_bank_id numeric(38),
	first_name varchar(35),
	middle_name varchar(35),
	last_name varchar(35),
	user_name varchar(255) NOT NULL,
	ssn varchar(12),
	processor_pin varchar(50),
	address1 varchar(40),
	address2 varchar(40),
	city varchar(20),
	state varchar(2),
	zip varchar(11),
	country varchar(30),
	mothers_maiden varchar(20),
	home_phone varchar(25),
	work_phone varchar(25),
	email_address varchar(255),
	funding_account varchar(50),
	birth_date timestamp,
	password varchar(100),
	income numeric(38),
	family numeric(38),
	residence numeric(38),
	intended_use numeric(38),
	gender numeric(38),
	marital_status numeric(38),
	title varchar(10),
	access_mode numeric(38),
	timeout numeric(38),
	greeting_type numeric(38),
	greeting varchar(20),
	email_list_access numeric(38),
	software_have varchar(10),
	software_need varchar(15),
	computer_os varchar(20),
	heard_about numeric(38),
	service_level numeric(38),
	billing_period numeric(38),
	reminder varchar(255),
	pwd_reminder varchar(255),
	general_email_token varchar(20),
	payment_email_token varchar(20),
	password_status numeric(38),
	password_fail_count numeric(38),
	password_lockout_time timestamp,
	bank_id varchar(20) NOT NULL,
	personal_banker numeric(38),
	prefer_contact varchar(35),
	fax_phone varchar(25),
	data_phone varchar(25),
	customer_type char(1),
	low_first_name varchar(35),
	low_last_name varchar(35),
	low_middle_name varchar(35),
	lastviewintratrans timestamp,
	preferred_lang varchar(5) NOT NULL,
	reminder2 varchar(255),
	pwd_reminder2 varchar(255),
	terms_accepted numeric(38) NOT NULL DEFAULT 0,
	terms_accepted_date timestamp,
	user_type numeric(38),
	ent_sys_type varchar(8)
) ;
CREATE INDEX customer_idx_3 ON customer (low_first_name);
CREATE INDEX customer_idx12 ON customer (directory_id, first_name, last_name, user_name, email_address);
CREATE INDEX customer_idx ON customer (user_name);
CREATE INDEX customer_idx_8 ON customer (directory_id, first_name, last_name, personal_banker);
CREATE INDEX customer_idx_7 ON customer (directory_id, first_name, last_name, email_address, bank_id, customer_type);
CREATE INDEX customer_idx9 ON customer (directory_id, user_name);
CREATE INDEX customer_idx_1 ON customer (low_last_name);
CREATE INDEX customer_idx_5 ON customer (directory_id, low_last_name);
CREATE INDEX customer_idx_4 ON customer (directory_id, low_first_name);
CREATE INDEX customer_idx11 ON customer (directory_id, first_name, last_name, email_address);
CREATE INDEX customer_idx10 ON customer (first_name, last_name, email_address, personal_banker);
CREATE INDEX customer_idx_6 ON customer (customer_type);
ALTER TABLE customer ADD PRIMARY KEY (directory_id);

CREATE TABLE bpw_extrainfo (
	fiid varchar(32) NOT NULL,
	recordid varchar(32) NOT NULL,
	recordtype varchar(32) NOT NULL,
	name varchar(64) NOT NULL,
	value varchar(128) DEFAULT 'NULL'
) ;
CREATE INDEX ind_extrainfo1 ON bpw_extrainfo (recordid);
ALTER TABLE bpw_extrainfo ADD PRIMARY KEY (fiid,recordid,recordtype,name);

CREATE TABLE sva_wallet_assets (
	asset_id numeric(38) NOT NULL,
	asset_name varchar(48) NOT NULL,
	asset_type varchar(48) NOT NULL,
	description varchar(100)
) ;
ALTER TABLE sva_wallet_assets ADD PRIMARY KEY (asset_id);

CREATE TABLE bpw_customerroute (
	customerid varchar(32) NOT NULL,
	routeid numeric(38) NOT NULL,
	status varchar(32) NOT NULL,
	submitdate varchar(32)
) ;
CREATE INDEX ind_cr_status ON bpw_customerroute (status);
CREATE INDEX ind_cr_routeid ON bpw_customerroute (routeid);
CREATE INDEX ind_cr_custid ON bpw_customerroute (customerid);
ALTER TABLE bpw_customerroute ADD PRIMARY KEY (customerid,routeid);

CREATE TABLE limit_list (
	operation_name varchar(255) NOT NULL
) ;
ALTER TABLE limit_list ADD PRIMARY KEY (operation_name);

CREATE TABLE mb_rtlibrary (
	mdlid numeric(22) NOT NULL,
	mdfid numeric(22) NOT NULL,
	mdlname char(128) NOT NULL,
	charencoding varchar(255),
	encryption varchar(255),
	protocolheader numeric(22) NOT NULL,
	protocoltrailer numeric(22) NOT NULL,
	headermarker numeric(22),
	properties numeric(22) NOT NULL,
	parsejavaclass varchar(255),
	parsejavamethod varchar(255)
) ;

CREATE TABLE bpw_recwireinfo (
	recsrvrtid varchar(32) NOT NULL,
	batchid varchar(32),
	extid varchar(32),
	templateid varchar(32),
	userid varchar(32),
	contractnumber varchar(32),
	bankfromid varchar(32),
	branchfromid varchar(32),
	customerid varchar(32) NOT NULL,
	wirepayeeid varchar(32),
	wirecreditid varchar(32),
	fiid varchar(32),
	amount varchar(16) NOT NULL,
	acctdebitid varchar(32),
	acctdebittype varchar(32),
	acctdebitkey varchar(32),
	wiretype varchar(32) NOT NULL,
	wirecategory varchar(32),
	wiregroup varchar(32),
	wiredest varchar(32),
	status varchar(32),
	logid varchar(32),
	exchangerate varchar(32),
	payinstruct varchar(255),
	memo varchar(255),
	extinfo varchar(255),
	amtcurrency varchar(32),
	destcurrency varchar(32),
	origamount varchar(32),
	origcurrency varchar(32),
	xferfee varchar(32),
	startamount varchar(16),
	endamount varchar(16),
	datecreate varchar(32) NOT NULL,
	frequency numeric(38) NOT NULL,
	startdate varchar(32),
	enddate varchar(32),
	instancecount numeric(38) NOT NULL,
	lastmodified varchar(32),
	submittedby varchar(32),
	wiresource varchar(32),
	wirename varchar(64),
	nickname varchar(64),
	wirelimit varchar(32),
	settlementdate varchar(32),
	wirescope varchar(32),
	mathrule varchar(32),
	origtobeneficiarymemo varchar(128),
	origtobeneficiaryinfo varchar(255),
	banktobankinfo varchar(255),
	processedby varchar(32),
	agentid varchar(32),
	agentname varchar(128),
	agenttype varchar(32),
	method varchar(32),
	customerref varchar(32),
	originatorcharges varchar(32),
	receivercharges varchar(32),
	wirechargesdetails varchar(32),
	orgchargesaccountnum varchar(32),
	benefchargesaccountnum varchar(32),
	pmtsubtype varchar(32) NOT NULL DEFAULT 'DOMESTIC'
) ;
CREATE INDEX idxbpwwire0075 ON bpw_recwireinfo (fiid, submittedby, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0002 ON bpw_recwireinfo (customerid, enddate, startdate, fiid, instancecount, frequency, recsrvrtid, status);
CREATE INDEX ind_rwistatus ON bpw_recwireinfo (status);
CREATE INDEX idxbpwwire0023 ON bpw_recwireinfo (wiresource, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0068 ON bpw_recwireinfo (customerid, submittedby, startdate, recsrvrtid, status);
CREATE INDEX ind_rwiwirepayeeid ON bpw_recwireinfo (wirepayeeid);
CREATE INDEX idxbpwwire0040 ON bpw_recwireinfo (recsrvrtid, customerid, fiid, wiretype, status);
CREATE INDEX idxbpwwire0001 ON bpw_recwireinfo (templateid, recsrvrtid, enddate, startdate, fiid, instancecount, frequency, status);
CREATE INDEX idxbpwwire0030 ON bpw_recwireinfo (submittedby, status, startdate, recsrvrtid, amount);
CREATE INDEX idxbpwwire0021 ON bpw_recwireinfo (customerid, submittedby, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0110 ON bpw_recwireinfo (submittedby, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0039 ON bpw_recwireinfo (wirepayeeid, recsrvrtid, status);
CREATE INDEX idxbpwwire0092 ON bpw_recwireinfo (wirescope, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0109 ON bpw_recwireinfo (wiredest, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0086 ON bpw_recwireinfo (wiretype, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0053 ON bpw_recwireinfo (fiid, status, enddate, startdate, instancecount, frequency, recsrvrtid);
CREATE INDEX idxbpwwire0090 ON bpw_recwireinfo (templateid, recsrvrtid, startdate, status);
CREATE INDEX idxbpwwire0087 ON bpw_recwireinfo (customerid, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0019 ON bpw_recwireinfo (wirescope, submittedby, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0033 ON bpw_recwireinfo (wiredest, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0115 ON bpw_recwireinfo (startdate, recsrvrtid, amount, status);
CREATE INDEX idxbpwwire0020 ON bpw_recwireinfo (templateid, submittedby, status, recsrvrtid, startdate);
CREATE INDEX idxbpwwire0028 ON bpw_recwireinfo (wirescope, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0088 ON bpw_recwireinfo (fiid, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0089 ON bpw_recwireinfo (startdate, recsrvrtid, wiretype, status);
CREATE INDEX idxbpwwire0074 ON bpw_recwireinfo (userid, submittedby, startdate, recsrvrtid, status);
CREATE INDEX ind_rwistartdate ON bpw_recwireinfo (startdate);
CREATE INDEX idxbpwwire0035 ON bpw_recwireinfo (status, startdate, recsrvrtid, amount);
CREATE INDEX idxbpwwire0091 ON bpw_recwireinfo (wiresource, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0018 ON bpw_recwireinfo (submittedby, status, startdate, recsrvrtid, wiretype);
CREATE INDEX idxbpwwire0032 ON bpw_recwireinfo (userid, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0025 ON bpw_recwireinfo (fiid, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0051 ON bpw_recwireinfo (templateid, status, recsrvrtid, enddate, startdate, fiid, instancecount, frequency);
CREATE INDEX idxbpwwire0022 ON bpw_recwireinfo (customerid, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0069 ON bpw_recwireinfo (wiresource, submittedby, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0014 ON bpw_recwireinfo (wiresource, submittedby, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0054 ON bpw_recwireinfo (recsrvrtid, customerid, fiid, status);
CREATE INDEX idxbpwwire0024 ON bpw_recwireinfo (status, startdate, recsrvrtid, wiretype);
CREATE INDEX idxbpwwire0111 ON bpw_recwireinfo (startdate, enddate desc);
CREATE INDEX idxbpwwire0099 ON bpw_recwireinfo (recsrvrtid desc, status desc);
CREATE INDEX idxbpwwire0017 ON bpw_recwireinfo (fiid, submittedby, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0072 ON bpw_recwireinfo (wiretype, submittedby, startdate, recsrvrtid, status);
CREATE INDEX ind_rwiextid ON bpw_recwireinfo (extid);
CREATE INDEX idxbpwwire0103 ON bpw_recwireinfo (instancecount, amount);
CREATE INDEX idxbpwwire0026 ON bpw_recwireinfo (status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0071 ON bpw_recwireinfo (wirescope, submittedby, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0016 ON bpw_recwireinfo (userid, submittedby, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0013 ON bpw_recwireinfo (wiretype, submittedby, status, startdate, recsrvrtid);
CREATE INDEX ind_rwirecbatchid ON bpw_recwireinfo (batchid);
CREATE INDEX idxbpwwire0073 ON bpw_recwireinfo (submittedby, startdate, recsrvrtid, wiretype, status);
CREATE INDEX idxbpwwire0108 ON bpw_recwireinfo (userid, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0066 ON bpw_recwireinfo (wiredest, status, enddate, startdate, fiid, instancecount, frequency, recsrvrtid);
CREATE INDEX idxbpwwire0034 ON bpw_recwireinfo (submittedby, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0027 ON bpw_recwireinfo (templateid, status, recsrvrtid, startdate);
CREATE INDEX idxbpwwire0067 ON bpw_recwireinfo (templateid, submittedby, recsrvrtid, startdate, status);
CREATE INDEX idxbpwwire0107 ON bpw_recwireinfo (submittedby, startdate, recsrvrtid, amount, status);
CREATE INDEX idxbpwwire0029 ON bpw_recwireinfo (wiretype, status, startdate, recsrvrtid);
CREATE INDEX idxbpwwire0070 ON bpw_recwireinfo (wiredest, submittedby, startdate, recsrvrtid, status);
CREATE INDEX idxbpwwire0052 ON bpw_recwireinfo (customerid, status, enddate, startdate, fiid, instancecount, frequency, recsrvrtid);
CREATE INDEX idxbpwwire0000 ON bpw_recwireinfo (recsrvrtid, status);
CREATE INDEX idxbpwwire0015 ON bpw_recwireinfo (wiredest, submittedby, status, startdate, recsrvrtid);
ALTER TABLE bpw_recwireinfo ADD PRIMARY KEY (recsrvrtid);

CREATE TABLE global_msg_body (
	global_body_id numeric(38) NOT NULL,
	seq numeric(38) NOT NULL,
	text varchar(255) NOT NULL
) ;
ALTER TABLE global_msg_body ADD PRIMARY KEY (global_body_id,seq);

CREATE TABLE reg_def_category (
	reg_def_cat_id numeric(38) NOT NULL,
	name varchar(40),
	description varchar(200),
	type numeric(38),
	parent_category_id numeric(38),
	tax_related char(1),
	icon_name varchar(56)
) ;
ALTER TABLE reg_def_category ADD PRIMARY KEY (reg_def_cat_id);

CREATE TABLE lu_financialinstitution (
	institutionid numeric(38) NOT NULL,
	institutionname varchar(158) NOT NULL,
	branchname varchar(70),
	addressline1 varchar(144),
	addressline2 varchar(144),
	addressline3 varchar(144),
	city varchar(64),
	state varchar(64),
	statecode varchar(2),
	postalcode varchar(32),
	country varchar(64),
	phone varchar(32),
	achroutingnumber varchar(9),
	wireroutingnumber varchar(9),
	swiftbic varchar(11),
	chipsuid varchar(32),
	nationalid varchar(25) DEFAULT 'NULL'
) ;
CREATE INDEX ind_fibrctystct ON lu_financialinstitution (branchname, city, state, country);
CREATE INDEX ind_finationalid ON lu_financialinstitution (nationalid);
CREATE INDEX ind_fichipsuid ON lu_financialinstitution (chipsuid);
CREATE INDEX ind_fiachroutnum ON lu_financialinstitution (achroutingnumber);
CREATE INDEX ind_fiinstname ON lu_financialinstitution (institutionname);
CREATE INDEX ind_fi_swiftbic ON lu_financialinstitution (swiftbic);
CREATE INDEX ind_fiwireroutnum ON lu_financialinstitution (wireroutingnumber);
ALTER TABLE lu_financialinstitution ADD PRIMARY KEY (institutionid);

CREATE TABLE rpps_payeeext (
	rppsfiid varchar(32) NOT NULL,
	billerrppsid varchar(10) NOT NULL,
	billeraliasid varchar(32),
	billername varchar(128) NOT NULL,
	billerclass varchar(50) NOT NULL,
	billertype varchar(32) NOT NULL,
	trnaba varchar(10),
	prenotes varchar(1),
	guarpayonly varchar(1),
	dmpprenote varchar(1),
	dmppayonly varchar(1),
	oldname varchar(32),
	privateflag varchar(1),
	memo varchar(1000),
	submitdate varchar(32),
	billerstatus varchar(32) NOT NULL,
	logid varchar(32)
) ;
ALTER TABLE rpps_payeeext ADD PRIMARY KEY (rppsfiid,billerrppsid);

CREATE TABLE dc_recordcounter (
	dcobjecttype numeric(38) NOT NULL,
	dcobjectid numeric(38) NOT NULL,
	countername varchar(40) NOT NULL,
	nextindex numeric NOT NULL,
	dataclassification char(1) NOT NULL
) ;
ALTER TABLE dc_recordcounter ADD PRIMARY KEY (dcobjecttype,dcobjectid,countername,dataclassification);

CREATE TABLE bpw_orcc_payee_mask (
	payeeid varchar(32) NOT NULL,
	acctminlength numeric(38),
	acctmaxlength numeric(38),
	acctmask1 varchar(22),
	acctmask2 varchar(22),
	acctmask3 varchar(22),
	acctmask4 varchar(22),
	acctmask5 varchar(22)
) ;
CREATE INDEX indorccpayeemask ON bpw_orcc_payee_mask (payeeid);

CREATE TABLE affiliate_bank (
	affiliate_bank_id numeric(38) NOT NULL,
	affiliate_name varchar(64) NOT NULL,
	bank_id varchar(20) NOT NULL,
	bpw_fi_id varchar(32) NOT NULL,
	bank_type numeric(38) NOT NULL,
	currency_code char(3) NOT NULL,
	brand_id varchar(255),
	timeout_seconds varchar(10),
	no_concurrent_login char(1),
	corporate_url varchar(1024),
	consumer_url varchar(1024)
) ;
ALTER TABLE affiliate_bank ADD PRIMARY KEY (affiliate_bank_id);

CREATE TABLE bpw_recxferextrainfo (
	recsrvrtid varchar(32) NOT NULL,
	name varchar(64) NOT NULL,
	value varchar(255)
) ;
ALTER TABLE bpw_recxferextrainfo ADD PRIMARY KEY (recsrvrtid,name);

CREATE TABLE entitlement_feature (
	ent_feature_id numeric(38) NOT NULL,
	feature_id numeric(38),
	ent_group_id numeric(38) NOT NULL,
	member_id varchar(255),
	member_type varchar(255),
	member_subtype varchar(255),
	created_date timestamp,
	has_entitlements numeric(38),
	sequenceno numeric(38)
) ;
ALTER TABLE entitlement_feature ADD PRIMARY KEY (ent_feature_id);

CREATE TABLE server_list (
	server_id varchar(255) NOT NULL,
	module_id varchar(255) NOT NULL
) ;
ALTER TABLE server_list ADD PRIMARY KEY (server_id,module_id);

CREATE TABLE ent_type_props (
	operation_name varchar(255) NOT NULL,
	prop_name varchar(255) NOT NULL,
	prop_value varchar(255) NOT NULL
) ;
CREATE INDEX xperfentprops ON ent_type_props (operation_name desc);
ALTER TABLE ent_type_props ADD PRIMARY KEY (operation_name,prop_name,prop_value);

CREATE TABLE td_accounts_rel (
	bank_id varchar(20) NOT NULL,
	bus_directory_id numeric(38) NOT NULL,
	master_routing_num varchar(100),
	master_account_id varchar(48) NOT NULL,
	sub_routing_num varchar(100),
	sub_account_id varchar(48) NOT NULL,
	location_id varchar(40) NOT NULL,
	inc_zbacr_inrollup char(1) NOT NULL DEFAULT 'N',
	inc_zbadb_inrollup char(1) NOT NULL DEFAULT 'N'
) ;
CREATE INDEX td4 ON td_accounts_rel (bus_directory_id, bank_id, inc_zbadb_inrollup, inc_zbacr_inrollup, sub_account_id, sub_routing_num);
CREATE INDEX td2 ON td_accounts_rel (master_account_id, master_routing_num, bus_directory_id, bank_id);
CREATE INDEX td1 ON td_accounts_rel (sub_account_id desc, sub_routing_num desc);
CREATE INDEX td3 ON td_accounts_rel (bus_directory_id, bank_id, sub_account_id, sub_routing_num);

CREATE TABLE bpw_recxferinstruction (
	recsrvrtid varchar(32) NOT NULL,
	bankid varchar(48),
	branchid varchar(32),
	customerid varchar(32) NOT NULL,
	fiid varchar(32),
	amount varchar(32) NOT NULL,
	acctdebitid varchar(48) NOT NULL,
	acctdebittype varchar(32) NOT NULL,
	acctcreditid varchar(48) NOT NULL,
	acctcredittype varchar(32) NOT NULL,
	frequency numeric(38) NOT NULL,
	startdate numeric(38) NOT NULL,
	enddate numeric(38) NOT NULL,
	instancecount numeric(38) NOT NULL,
	datecreate varchar(32) NOT NULL,
	status varchar(32),
	logid varchar(32),
	lastmodified varchar(32),
	submittedby varchar(32),
	frombankid varchar(48),
	frombranchid varchar(32),
	curdef varchar(3) DEFAULT 'USD',
	toamount varchar(32),
	toamountcurrency varchar(3),
	userassignedamount numeric(38) DEFAULT 0,
	acctfromcountrycode varchar(3),
	accttocountrycode varchar(3),
	pmtsubtype varchar(32) NOT NULL DEFAULT 'TRANSFER'
) ;
CREATE INDEX ind_rxfinst_eddt ON bpw_recxferinstruction (enddate);
CREATE INDEX ind_rxfinst_cust ON bpw_recxferinstruction (customerid);
ALTER TABLE bpw_recxferinstruction ADD PRIMARY KEY (recsrvrtid);

CREATE TABLE bs_lbcredititems (
	lockboxid numeric(38) NOT NULL,
	credititemindex numeric NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	itemid numeric(38),
	documenttype varchar(40),
	payor varchar(80) NOT NULL,
	amount decimal(31,3),
	checknumber varchar(40) NOT NULL,
	checkdate timestamp NOT NULL,
	couponaccountnum varchar(40),
	couponamount1 decimal(31,3),
	couponamount2 decimal(31,3),
	coupondate1 timestamp,
	coupondate2 timestamp,
	couponrefnum varchar(40),
	checkroutingnum varchar(48),
	checkaccountnum varchar(48),
	lockboxworktype varchar(40),
	lockboxbatchnum varchar(40),
	lockboxseqnum varchar(40),
	memo varchar(255),
	immedavailamount decimal(31,3),
	onedayavailamount decimal(31,3),
	moreonedayavailam decimal(31,3),
	valuedatetime timestamp,
	bankrefnum varchar(40),
	custrefnum varchar(40),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(1024),
	extra varchar(1024)
) ;
ALTER TABLE bs_lbcredititems ADD PRIMARY KEY (lockboxid,credititemindex);

CREATE TABLE transaction_log (
	perf_log_session_id varchar(256) NOT NULL,
	application_name varchar(256) NOT NULL,
	module_name varchar(256),
	trans_type numeric(38),
	trans_description varchar(1024) NOT NULL,
	server_id varchar(40) NOT NULL,
	log_time timestamp NOT NULL,
	duration numeric(19),
	avg_duration numeric(38),
	success_cnt numeric(38),
	failure_cnt numeric(38),
	min_time numeric(38),
	max_time numeric(38),
	first_access_time timestamp,
	last_access_time timestamp,
	perf_log_session_sequence numeric(38),
	perf_log_session_create_time timestamp
) ;

CREATE TABLE etf_achbatch (
	batchid varchar(32) NOT NULL,
	fileid varchar(32) NOT NULL,
	customeridint numeric(38),
	customerid varchar(32) NOT NULL,
	companyname varchar(32) NOT NULL,
	companyidentification varchar(32) NOT NULL,
	stdentryclasscode varchar(32) NOT NULL,
	effectiveentrydate varchar(32) NOT NULL,
	entryaddendacount numeric(38),
	totaldebits numeric(38),
	numberofdebits numeric(38),
	totalcredits numeric(38),
	numberofcredits numeric(38),
	batchnumber numeric(38)
) ;
ALTER TABLE etf_achbatch ADD PRIMARY KEY (batchid);

CREATE TABLE bpw_uidtosynctoken (
	customerid varchar(32) NOT NULL,
	token numeric(38) NOT NULL,
	synctype varchar(32) NOT NULL
) ;
ALTER TABLE bpw_uidtosynctoken ADD PRIMARY KEY (customerid,synctype);

CREATE TABLE da_category_details (
	da_detail_id varchar(32) NOT NULL,
	category_id varchar(32) NOT NULL,
	field_name varchar(255),
	old_value varchar(255),
	new_value varchar(255)
) ;
CREATE INDEX da_cd_catid ON da_category_details (category_id);
ALTER TABLE da_category_details ADD PRIMARY KEY (da_detail_id);

CREATE TABLE ent_cache_changes (
	group_id numeric(38) NOT NULL,
	member_type varchar(255),
	member_subtype varchar(255),
	member_id varchar(255),
	change_maker numeric NOT NULL,
	change_time timestamp NOT NULL
) ;
CREATE INDEX ent_changes_clean ON ent_cache_changes (change_time);
CREATE INDEX ent_changes_time ON ent_cache_changes (change_maker, change_time);

CREATE TABLE application_history (
	app_id numeric(38) NOT NULL,
	status_id numeric(38) NOT NULL,
	product_id numeric(38),
	owner_id numeric(38) NOT NULL,
	modifier_id numeric(38) NOT NULL,
	history_comment varchar(255) NOT NULL,
	modified_date timestamp NOT NULL
) ;

CREATE TABLE req_appr_list (
	operation_name varchar(255) NOT NULL
) ;
ALTER TABLE req_appr_list ADD PRIMARY KEY (operation_name);

CREATE TABLE tw_transdetail (
	twid numeric(38) NOT NULL,
	ordinal numeric(38) NOT NULL,
	transdetailxml varchar(2000) NOT NULL
) ;
CREATE INDEX tw_idx ON tw_transdetail (twid);
ALTER TABLE tw_transdetail ADD PRIMARY KEY (twid,ordinal);

CREATE TABLE bpw_wireinfo (
	srvrtid varchar(32) NOT NULL,
	batchid varchar(32),
	extid varchar(32),
	templateid varchar(32),
	hostid varchar(32),
	userid varchar(32),
	contractnumber varchar(32),
	bankfromid varchar(32),
	branchfromid varchar(32),
	customerid varchar(32) NOT NULL,
	wirepayeeid varchar(32),
	wirecreditid varchar(32),
	recsrvrtid varchar(32),
	fiid varchar(32),
	amount varchar(16) NOT NULL,
	amtcurrency varchar(32),
	destcurrency varchar(32),
	origamount varchar(32),
	origcurrency varchar(32),
	xferfee varchar(32),
	exchangerate varchar(32),
	acctdebitid varchar(32),
	acctdebittype varchar(32),
	acctdebitkey varchar(32),
	datecreate varchar(32) NOT NULL,
	datedue varchar(32) NOT NULL,
	datetopost varchar(32),
	dateposted varchar(32),
	wiretype varchar(32) NOT NULL,
	wirecategory varchar(32),
	wiregroup varchar(32),
	wiredest varchar(32),
	status varchar(32),
	logid varchar(32),
	confirmnum varchar(64),
	confirmnum2 varchar(64),
	confirmmsg varchar(255),
	payinstruct varchar(255),
	memo varchar(255),
	extinfo varchar(255),
	lastmodified varchar(32),
	submittedby varchar(32),
	wiresource varchar(32),
	wirename varchar(64),
	nickname varchar(64),
	wirelimit varchar(32),
	settlementdate varchar(32),
	wirescope varchar(32),
	mathrule varchar(32),
	origtobeneficiarymemo varchar(128),
	origtobeneficiaryinfo varchar(255),
	banktobankinfo varchar(255),
	processedby varchar(32),
	agentid varchar(32),
	agentname varchar(128),
	agenttype varchar(32),
	method varchar(32),
	amounttype varchar(32),
	customerref varchar(32),
	originatorcharges varchar(32),
	receivercharges varchar(32),
	wirechargesdetails varchar(32),
	orgchargesaccountnum varchar(32),
	benefchargesaccountnum varchar(32),
	pmtsubtype varchar(32) NOT NULL DEFAULT 'DOMESTIC'
) ;
CREATE INDEX idxbpwwire0062 ON bpw_wireinfo (fiid, submittedby, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0047 ON bpw_wireinfo (status, submittedby, datetopost, recsrvrtid, srvrtid, wiretype);
CREATE INDEX idxbpwwire0101 ON bpw_wireinfo (submittedby, datetopost, recsrvrtid, srvrtid, amount, status);
CREATE INDEX ind_wistatus ON bpw_wireinfo (status);
CREATE INDEX idxbpwwire0056 ON bpw_wireinfo (status, wiretype, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0080 ON bpw_wireinfo (datetopost, recsrvrtid, srvrtid, wiretype, status);
CREATE INDEX idxbpwwire0050 ON bpw_wireinfo (customerid, status, submittedby, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0048 ON bpw_wireinfo (status, fiid, submittedby, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0114 ON bpw_wireinfo (datetopost desc, submittedby desc);
CREATE INDEX idxbpwwire0046 ON bpw_wireinfo (status, wiretype, submittedby, datetopost, recsrvrtid, srvrtid);
CREATE INDEX ind_wirecsrvrtid ON bpw_wireinfo (recsrvrtid);
CREATE INDEX idxbpwwire0093 ON bpw_wireinfo (status, submittedby, datetopost, recsrvrtid, srvrtid, amount);
CREATE INDEX idxbpwwire0059 ON bpw_wireinfo (status, wirescope, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0038 ON bpw_wireinfo (srvrtid, status, dateposted);
CREATE INDEX idxbpwwire0060 ON bpw_wireinfo (status, wiresource, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0094 ON bpw_wireinfo (datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX ind_wiwirepayeeid ON bpw_wireinfo (wirepayeeid);
CREATE INDEX idxbpwwire0076 ON bpw_wireinfo (status, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0082 ON bpw_wireinfo (wiretype, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0084 ON bpw_wireinfo (templateid, srvrtid, datetopost, recsrvrtid, status);
CREATE INDEX idxbpwwire0006 ON bpw_wireinfo (srvrtid, status);
CREATE INDEX idxbpwwire0098 ON bpw_wireinfo (wiredest, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0064 ON bpw_wireinfo (customerid, submittedby, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0102 ON bpw_wireinfo (wiredest, status, submittedby, datetopost, recsrvrtid, srvrtid);
CREATE INDEX ind_widatetopost ON bpw_wireinfo (datetopost);
CREATE INDEX idxbpwwire0085 ON bpw_wireinfo (srvrtid desc, status desc);
CREATE INDEX idxbpwwire0045 ON bpw_wireinfo (status, submittedby, wirescope, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0042 ON bpw_wireinfo (status, submittedby, wiresource, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0041 ON bpw_wireinfo (wirepayeeid, srvrtid, status);
CREATE INDEX idxbpwwire0055 ON bpw_wireinfo (status, fiid, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0105 ON bpw_wireinfo (submittedby, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0061 ON bpw_wireinfo (customerid, status, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0096 ON bpw_wireinfo (status, userid, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0058 ON bpw_wireinfo (status, datetopost, recsrvrtid, srvrtid, wiretype);
CREATE INDEX idxbpwwire0104 ON bpw_wireinfo (userid, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0097 ON bpw_wireinfo (status, submittedby, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0063 ON bpw_wireinfo (wiretype, submittedby, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0100 ON bpw_wireinfo (status, datetopost, recsrvrtid, srvrtid, amount);
CREATE INDEX ind_wiredest ON bpw_wireinfo (wiredest);
CREATE INDEX idxbpwwire0057 ON bpw_wireinfo (templateid, status, srvrtid, datetopost, recsrvrtid);
CREATE INDEX idxbpwwire0031 ON bpw_wireinfo (srvrtid, customerid, fiid, status);
CREATE INDEX idxbpwwire0083 ON bpw_wireinfo (fiid, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0037 ON bpw_wireinfo (srvrtid, status, processedby);
CREATE INDEX idxbpwwire0077 ON bpw_wireinfo (customerid, status, fiid, datetopost);
CREATE INDEX idxbpwwire0011 ON bpw_wireinfo (srvrtid, customerid, status, wiretype, fiid);
CREATE INDEX idxbpwwire0044 ON bpw_wireinfo (templateid, status, submittedby, srvrtid, datetopost, recsrvrtid);
CREATE INDEX idxbpwwire0079 ON bpw_wireinfo (wiresource, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0036 ON bpw_wireinfo (recsrvrtid, srvrtid, status);
CREATE INDEX ind_wibatchid ON bpw_wireinfo (batchid);
CREATE INDEX ind_wiredest_02 ON bpw_wireinfo (wiredest, origcurrency, datetopost, confirmnum2, confirmnum, srvrtid, recsrvrtid, origamount, extid);
CREATE INDEX idxbpwwire0078 ON bpw_wireinfo (wirescope, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX ind_wiwireextid ON bpw_wireinfo (extid);
CREATE INDEX idxbpwwire0049 ON bpw_wireinfo (wiredest, submittedby, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0081 ON bpw_wireinfo (customerid, datetopost, recsrvrtid, srvrtid, status);
CREATE INDEX idxbpwwire0113 ON bpw_wireinfo (wiredest, status, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0043 ON bpw_wireinfo (status, submittedby, userid, datetopost, recsrvrtid, srvrtid);
CREATE INDEX idxbpwwire0106 ON bpw_wireinfo (datetopost, recsrvrtid, srvrtid, amount, status);
CREATE INDEX idxbpwwire0065 ON bpw_wireinfo (templateid, submittedby, srvrtid, datetopost, recsrvrtid, status);
ALTER TABLE bpw_wireinfo ADD PRIMARY KEY (srvrtid);

CREATE TABLE bpw_instructionactivitylog (
	logtype numeric(38) NOT NULL,
	logdate varchar(32) NOT NULL,
	logid varchar(32),
	instructiontype varchar(32),
	instructionid varchar(32),
	content text,
	loglevel numeric(38)
) ;
CREATE INDEX ind_inactlg_ty_id ON bpw_instructionactivitylog (instructiontype, instructionid);
CREATE INDEX ind_inactlg_lgdt ON bpw_instructionactivitylog (logdate);
CREATE INDEX ind_inactlg_lgid ON bpw_instructionactivitylog (logid);

CREATE TABLE appr_flowlevels (
	levelid numeric(38) NOT NULL,
	leveltype varchar(32) NOT NULL,
	businessid numeric(38) NOT NULL,
	operationtype varchar(255),
	approvalobjecttype varchar(32),
	approvalobjectid varchar(32),
	minamount decimal(31,3) NOT NULL,
	maxamount decimal(31,3) NOT NULL,
	objecttype numeric(38) NOT NULL DEFAULT 1,
	workflowid varchar(32) NOT NULL DEFAULT '0',
	workflowname varchar(100) NOT NULL DEFAULT 'Default Workflow'
) ;
CREATE INDEX appr_flbusid ON appr_flowlevels (businessid);
ALTER TABLE appr_flowlevels ADD PRIMARY KEY (levelid);

CREATE TABLE location (
	location_bpw_id varchar(32) NOT NULL,
	division_ent_group_id numeric(38) NOT NULL,
	location_name varchar(22),
	location_id varchar(15),
	location_name_lower varchar(22),
	location_id_lower varchar(15)
) ;
CREATE INDEX loc_grpid_name ON location (division_ent_group_id, location_name_lower);
CREATE INDEX loc_grpid_id ON location (division_ent_group_id, location_id_lower);
ALTER TABLE location ADD PRIMARY KEY (location_bpw_id);

CREATE TABLE bs_fi (
	fiid varchar(32) NOT NULL,
	name varchar(32) NOT NULL,
	address1 varchar(50),
	address2 varchar(50),
	city varchar(32),
	state varchar(5),
	postalcode varchar(10),
	country varchar(32),
	phone varchar(32),
	emailaddress varchar(32),
	host varchar(32) NOT NULL,
	port numeric NOT NULL
) ;
CREATE UNIQUE INDEX xak1fi ON bs_fi (name);
ALTER TABLE bs_fi ADD PRIMARY KEY (fiid);

CREATE TABLE bpw_cleanupreq (
	customerid varchar(32),
	paymenttypelist varchar(256),
	ageindayslist varchar(256),
	memo varchar(256) DEFAULT 'NULL'
) ;
CREATE INDEX ind_cleanupreq_02 ON bpw_cleanupreq (ageindayslist, paymenttypelist, customerid);
CREATE INDEX ind_cleanupreq_01 ON bpw_cleanupreq (customerid);

CREATE TABLE bs_lockboxsummary (
	accountid varchar(48) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	totalcredits decimal(31,3),
	totaldebits decimal(31,3),
	totalnumcredits numeric(38),
	totalnumdebits numeric(38),
	immediatefloat decimal(31,3),
	onedayfloat decimal(31,3),
	twodayfloat decimal(31,3),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(1024),
	extra varchar(1024)
) ;
ALTER TABLE bs_lockboxsummary ADD PRIMARY KEY (accountid,datadate);

CREATE TABLE ach_samedayeffdate (
	objecttype numeric(38) NOT NULL,
	objectid varchar(32) NOT NULL,
	secs varchar(2048)
) ;
ALTER TABLE ach_samedayeffdate ADD PRIMARY KEY (objecttype,objectid);

CREATE TABLE ach_leaddays (
	objecttype numeric(38) NOT NULL,
	objectid varchar(32) NOT NULL,
	seccode varchar(32) NOT NULL,
	bankid varchar(32),
	processdays numeric(38) NOT NULL,
	alloweddays numeric(38) NOT NULL,
	effectivedatedays numeric(38) NOT NULL
) ;
ALTER TABLE ach_leaddays ADD PRIMARY KEY (objecttype,objectid,seccode);

CREATE TABLE ints_statement (
	stmt_id varchar(40) NOT NULL,
	account_number varchar(40) NOT NULL,
	account_name varchar(40),
	stmt_start_date timestamp,
	stmt_end_date timestamp,
	prod_code varchar(20) NOT NULL,
	svc_charge_code numeric(38) NOT NULL,
	stmt_cycle varchar(10) NOT NULL,
	bank_id varchar(40) NOT NULL,
	ret_addr1 varchar(40),
	ret_addr2 varchar(40),
	name_addr1 varchar(40),
	name_addr2 varchar(40),
	name_addr3 varchar(40),
	name_addr4 varchar(40),
	name_addr5 varchar(40),
	name_addr6 varchar(40),
	update_time timestamp,
	stmt_date timestamp NOT NULL
) ;
CREATE INDEX idx_is_bid_acctno ON ints_statement (bank_id, account_number);
CREATE UNIQUE INDEX is_idx1 ON ints_statement (bank_id, account_number, stmt_date);
ALTER TABLE ints_statement ADD PRIMARY KEY (stmt_id);

CREATE TABLE mbk_audit_sms_event (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	eventdate numeric(20) NOT NULL,
	eventseverity numeric(38) NOT NULL,
	eventstatus numeric(38) NOT NULL,
	channeltype varchar(20) DEFAULT 'SMS',
	locale varchar(10),
	encoding varchar(10),
	networktype varchar(10),
	carrierid varchar(20),
	userid varchar(20),
	backenduserid varchar(30),
	modifierid varchar(30),
	modifiertype varchar(30),
	modifieruserid varchar(30),
	usertype varchar(20),
	userbankid varchar(48),
	usergroupid varchar(48),
	usermsisdn varchar(17),
	msgtrackingid varchar(30),
	msgid varchar(10),
	mobileack varchar(2),
	msgdatetime varchar(35),
	smseventtype numeric(38),
	operatorid varchar(30),
	acctid varchar(40),
	msgtype varchar(30),
	msgvalue varchar(1024),
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
CREATE INDEX ind_sms_event_2 ON mbk_audit_sms_event (msgtype);
CREATE INDEX ind_sms_event ON mbk_audit_sms_event (smseventtype);
ALTER TABLE mbk_audit_sms_event ADD PRIMARY KEY (systemid);

CREATE TABLE etf_achentry (
	entryid varchar(32) NOT NULL,
	batchid varchar(32) NOT NULL,
	transactioncode varchar(32),
	recvdfiidentification varchar(32),
	dfiaccountnumber varchar(32),
	rcvcompindvname varchar(32),
	identificationnumber varchar(32),
	amount varchar(32),
	tracenumber varchar(32),
	logid varchar(32),
	category varchar(24)
) ;
ALTER TABLE etf_achentry ADD PRIMARY KEY (entryid);

CREATE TABLE sc_calendarassoc (
	bank_dir_type varchar(32) NOT NULL,
	bank_dir_id varchar(100) NOT NULL,
	service_bureau_id varchar(20) NOT NULL,
	calendar_id numeric(38) NOT NULL
) ;
ALTER TABLE sc_calendarassoc ADD PRIMARY KEY (bank_dir_type,bank_dir_id,service_bureau_id);

CREATE TABLE sch_instructiontype (
	fiid varchar(32) NOT NULL,
	instructiontype varchar(32) NOT NULL,
	handlerclassname varchar(255),
	schedulerstarttime varchar(32),
	schedulerinterval numeric(38),
	dispatchstarttime varchar(32),
	dispatchinterval numeric(38),
	resubmiteventsupported numeric(38),
	chktmautorecover numeric(38),
	filebasedrecovery numeric(38),
	activeflag numeric(38),
	routeid numeric(38),
	processonholidays varchar(1),
	createemptyfile varchar(1),
	usecutoffs varchar(1),
	category varchar(32),
	memo varchar(256)
) ;
ALTER TABLE sch_instructiontype ADD PRIMARY KEY (fiid,instructiontype);

CREATE TABLE perf_stalled_operation_log (
	unique_id varchar(256) NOT NULL,
	unique_id_index numeric(38) NOT NULL,
	application_name varchar(256) NOT NULL,
	module_name varchar(256),
	trans_type numeric(38),
	trans_description varchar(1024) NOT NULL,
	server_id varchar(40) NOT NULL,
	start_time timestamp NOT NULL,
	end_time timestamp,
	log_time timestamp NOT NULL,
	duration numeric(19),
	res_received numeric(38)
) ;

CREATE TABLE reg_payee (
	reg_payee_id numeric(38) NOT NULL,
	reg_user_cat_id numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL,
	name varchar(40)
) ;
CREATE INDEX reg_payee_idx ON reg_payee (directory_id);
CREATE INDEX reg_payee_idx2 ON reg_payee (directory_id, reg_user_cat_id desc);
ALTER TABLE reg_payee ADD PRIMARY KEY (reg_payee_id);

CREATE TABLE reg_user_category (
	reg_user_cat_id numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL,
	name varchar(40) NOT NULL,
	description varchar(200),
	type numeric(38),
	parent_category_id numeric(38),
	tax_related char(1),
	icon_name varchar(56)
) ;
CREATE INDEX reg_user_cat_idx ON reg_user_category (directory_id);
ALTER TABLE reg_user_category ADD PRIMARY KEY (reg_user_cat_id,directory_id);

CREATE TABLE dnf_notification_message (
	notification_message_row_id numeric(20) NOT NULL,
	notification_message_id numeric(20) NOT NULL,
	notification_message bytea NOT NULL,
	notification_message_type numeric(6) NOT NULL,
	notification_command_type numeric(6) NOT NULL,
	notification_module_type numeric(20) NOT NULL,
	notification_scope_type_id numeric(20) NOT NULL,
	processing_group_name varchar(128) NOT NULL,
	created_date_time timestamp NOT NULL,
	source_ip_address varchar(256) NOT NULL,
	source_cluster varchar(256) NOT NULL
) ;
ALTER TABLE dnf_notification_message ADD PRIMARY KEY (notification_message_row_id);

CREATE TABLE message_body (
	body_id numeric(38) NOT NULL,
	seq numeric(38) NOT NULL,
	text varchar(1024)
) ;
ALTER TABLE message_body ADD PRIMARY KEY (body_id,seq);

CREATE TABLE bpw_wirepayee (
	payeeid varchar(32) NOT NULL,
	payeetype varchar(32),
	payeegroup varchar(32),
	beneficiaryname varchar(128) NOT NULL,
	nickname varchar(64),
	contactname varchar(64),
	customerid varchar(32) NOT NULL,
	routeid varchar(32),
	payeeextid varchar(32),
	extid varchar(32),
	payeedest varchar(32),
	beneficiarybankid varchar(32) NOT NULL,
	bankacctid varchar(35) NOT NULL,
	bankaccttype varchar(32),
	branchid varchar(32),
	acctkey varchar(32),
	payeeaddr1 varchar(128),
	payeeaddr2 varchar(128),
	payeeaddr3 varchar(128),
	payeecity varchar(32),
	payeestate varchar(32),
	payeezipcode varchar(32),
	payeecountry varchar(64),
	payeephone varchar(32),
	status varchar(32),
	memo varchar(256),
	submitdate varchar(32),
	activationdate varchar(32),
	lastmoddate varchar(32),
	logid varchar(32),
	submittedby varchar(32) DEFAULT 'NULL'
) ;
CREATE INDEX ind_wpextid ON bpw_wirepayee (extid);
CREATE INDEX ind_wpbankacctid ON bpw_wirepayee (bankacctid);
CREATE INDEX ind_wppayeeextid ON bpw_wirepayee (payeeextid);
CREATE INDEX ind_wpbenbankid ON bpw_wirepayee (beneficiarybankid);
CREATE INDEX ind_wpbankaccttype ON bpw_wirepayee (bankaccttype);
CREATE INDEX ind_wp001 ON bpw_wirepayee (customerid, status, payeegroup, submittedby, payeedest);
ALTER TABLE bpw_wirepayee ADD PRIMARY KEY (payeeid);

CREATE TABLE bs_account (
	accountid varchar(48) NOT NULL,
	accountname varchar(32),
	accounttypeid numeric NOT NULL,
	currencycode varchar(3) NOT NULL,
	fiid varchar(32) NOT NULL,
	accountnumber varchar(48) NOT NULL,
	balance varchar(32) NOT NULL,
	status numeric NOT NULL,
	type varchar(32),
	lastupdated numeric,
	description varchar(80),
	primaryaccount char(1),
	coreaccount char(1),
	personalaccount char(1),
	positivepay char(1),
	routingnum varchar(48) NOT NULL,
	bicnum varchar(11) NOT NULL,
	stmtflag char(1),
	countrycode varchar(3),
	internalaccountid varchar(48)
) ;
CREATE INDEX xif50account ON bs_account (fiid);
CREATE INDEX xif75account ON bs_account (accounttypeid);
CREATE UNIQUE INDEX xak1account ON bs_account (accountnumber);
ALTER TABLE bs_account ADD PRIMARY KEY (accountid);

CREATE TABLE bpw_fulfillment (
	fulfillmentsystemname varchar(128) NOT NULL,
	routeid numeric(38) NOT NULL,
	paymentcost double precision NOT NULL,
	handlername varchar(255) NOT NULL,
	immediatefundallocation char(1),
	immediateprocessing char(1),
	immediatehandlername varchar(255)
) ;
ALTER TABLE bpw_fulfillment ADD PRIMARY KEY (routeid);

CREATE TABLE dc_dsbsummary (
	dcaccountid numeric(38) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	numitemspending numeric(38),
	totaldebits decimal(31,3),
	totalcredits decimal(31,3),
	totaldtccredits decimal(31,3),
	immedfundsneeded decimal(31,3),
	onedayfundsneeded decimal(31,3),
	twodayfundsneeded decimal(31,3),
	valuedatetime timestamp,
	checkspaidearly decimal(31,3),
	checkspaidlate decimal(31,3),
	checkspaidlast decimal(31,3),
	fedestimate decimal(31,3),
	latedebits decimal(31,3),
	numdisbcredits numeric(38),
	numdtccredits numeric(38),
	numcheckpaidearly numeric(38),
	numcheckpaidlate numeric(38),
	numimmedfundneed numeric(38),
	numfedestimate numeric(38),
	numlatedebits numeric(38),
	numcheckpaidlast numeric(38),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_dsbsummary_idx1 ON dc_dsbsummary (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX dc_dsbsummary_idx2 ON dc_dsbsummary (dataclassification, dcaccountid);
ALTER TABLE dc_dsbsummary ADD PRIMARY KEY (dcaccountid,datadate,dataclassification);

CREATE TABLE dc_account (
	dcaccountid numeric(38) NOT NULL,
	bankid varchar(40) NOT NULL,
	accountid varchar(48) NOT NULL,
	currencycode char(3) NOT NULL,
	routingnumber varchar(100),
	extra varchar(1024)
) ;
CREATE UNIQUE INDEX dc_account1 ON dc_account (accountid, bankid, routingnumber);
ALTER TABLE dc_account ADD PRIMARY KEY (dcaccountid);

CREATE TABLE alert_properties (
	alert_id numeric(38) NOT NULL,
	prop_name varchar(100) NOT NULL,
	prop_value varchar(1024)
) ;
ALTER TABLE alert_properties ADD PRIMARY KEY (alert_id,prop_name);

CREATE TABLE bpw_employee (
	employeeid varchar(32) NOT NULL,
	employeeaddress1 varchar(48) NOT NULL,
	employeeaddress2 varchar(48),
	employeecity varchar(32) NOT NULL,
	employeecountry varchar(32) NOT NULL,
	employeedob timestamp NOT NULL,
	emailaddress varchar(255) NOT NULL,
	employeestatus varchar(12) NOT NULL,
	employeestartdate timestamp NOT NULL,
	employeeenddate timestamp,
	firstname varchar(32) NOT NULL,
	homephone varchar(32) NOT NULL,
	lastname varchar(32) NOT NULL,
	nickname varchar(32) NOT NULL,
	ssn varchar(32) NOT NULL,
	tranid varchar(32) NOT NULL,
	state varchar(32) NOT NULL,
	zip varchar(16) NOT NULL,
	directdepositenabled varchar(2) NOT NULL,
	business_id numeric(38) NOT NULL,
	employeecode varchar(32) NOT NULL,
	acctid varchar(48) NOT NULL,
	createddate timestamp NOT NULL,
	lastupdated timestamp NOT NULL,
	submittedby varchar(32) NOT NULL
) ;
CREATE INDEX ind_lastname ON bpw_employee (lastname);
CREATE INDEX ind_employeestatus ON bpw_employee (employeestatus);
CREATE INDEX ind_firstname ON bpw_employee (firstname);
ALTER TABLE bpw_employee ADD PRIMARY KEY (employeeid);

CREATE TABLE bpw_pmtextrainfo (
	srvrtid varchar(32) NOT NULL,
	name varchar(64) NOT NULL,
	value varchar(512)
) ;
ALTER TABLE bpw_pmtextrainfo ADD PRIMARY KEY (srvrtid,name);

CREATE TABLE ach_batchtemplate (
	templateid varchar(32) NOT NULL,
	compid varchar(32),
	compdata varchar(32),
	odfiachid varchar(32),
	batchtype varchar(32),
	templateextid varchar(32) NOT NULL,
	templatename varchar(32) NOT NULL,
	nickname varchar(32),
	templategroup varchar(32),
	templaterank varchar(32),
	extdinfo varchar(80),
	compentrydesc varchar(32),
	srvclasscode varchar(6),
	countrycode varchar(4),
	origincurrcode varchar(6),
	destcurrcode varchar(6),
	msgauthcode varchar(32),
	stdclasscode varchar(6),
	frgnexind varchar(6),
	frgnexrefind varchar(6),
	frgnexref varchar(32),
	origstatuscode varchar(6),
	submitdate varchar(32),
	batchstatus varchar(32),
	achversion varchar(32),
	logid varchar(32)
) ;
CREATE UNIQUE INDEX ind_tempnamextid ON ach_batchtemplate (templatename, templateextid);
CREATE INDEX ind_btmplcompid ON ach_batchtemplate (compid);
CREATE INDEX ind_btmplodfiid ON ach_batchtemplate (odfiachid);
ALTER TABLE ach_batchtemplate ADD PRIMARY KEY (templateid);

CREATE TABLE bpw_payee (
	payeeid varchar(32) NOT NULL,
	extdpayeeid varchar(32) NOT NULL,
	payeetype numeric(38) NOT NULL,
	payeename varchar(50) NOT NULL,
	encoding varchar(8),
	addr1 varchar(128) NOT NULL,
	addr2 varchar(128),
	addr3 varchar(128),
	city varchar(32) NOT NULL,
	state varchar(5) NOT NULL,
	zipcode varchar(11),
	country varchar(20),
	phone varchar(32),
	extension varchar(5),
	routeid numeric(38) NOT NULL,
	linkpayeeid varchar(32),
	status varchar(16),
	disbursementtype varchar(32),
	payeeleveltype varchar(32),
	nickname varchar(50),
	contactname varchar(40),
	daystopay numeric(38) DEFAULT -1,
	submitdate varchar(32),
	tranid varchar(32),
	fiid varchar(32),
	receiverid varchar(50),
	payeemode varchar(30),
	accesscode varchar(50),
	photourl varchar(1024),
	emailid varchar(50),
	tcaccepted char(1),
	tcaccepteddate timestamp
) ;
CREATE INDEX ind_payee_lvltyp ON bpw_payee (payeeleveltype);
CREATE INDEX ind_payee_routeid ON bpw_payee (routeid);
CREATE INDEX ind_payee_fiid ON bpw_payee (fiid);
CREATE INDEX ind_payee_tpcod ON bpw_payee (payeetype, encoding);
CREATE INDEX indpayeestatus ON bpw_payee (status);
CREATE INDEX ind_payee_linkid ON bpw_payee (linkpayeeid);
CREATE INDEX ind_payee_pname ON bpw_payee (payeename);
CREATE INDEX ind_payee_extid ON bpw_payee (extdpayeeid);
ALTER TABLE bpw_payee ADD PRIMARY KEY (payeeid);

CREATE TABLE rpps_entrytmp (
	srvrtid varchar(32) NOT NULL,
	entryid numeric(38) NOT NULL,
	fiid varchar(32),
	payeeid varchar(32),
	txcode numeric(38)
) ;
CREATE INDEX ind_rppsentryfpprr ON rpps_entrytmp (fiid, payeeid, txcode, entryid);
ALTER TABLE rpps_entrytmp ADD PRIMARY KEY (entryid);

CREATE TABLE customer_payee (
	directory_id numeric(38) NOT NULL,
	employee_id numeric(38) NOT NULL,
	payee_id varchar(30) NOT NULL,
	nick_name varchar(30),
	bank_id varchar(20)
) ;
CREATE INDEX ind_customer_payee_01 ON customer_payee (bank_id, directory_id);
ALTER TABLE customer_payee ADD PRIMARY KEY (directory_id,employee_id,payee_id);

CREATE TABLE ach_batch (
	batchid varchar(32) NOT NULL,
	compid varchar(32),
	compdata varchar(32),
	odfiachid varchar(32),
	batchtype varchar(32),
	batchcategory varchar(32),
	batchbalancetype varchar(32),
	effectivedate varchar(32),
	settlementdate varchar(32),
	compentrydesc varchar(32),
	descpdate varchar(32),
	batchnum numeric(38),
	srvclasscode varchar(6),
	countrycode varchar(4),
	origincurrcode varchar(6),
	destcurrcode varchar(6),
	totaldebit varchar(32),
	totalcredit varchar(32),
	msgauthcode varchar(32),
	recordcount numeric(38),
	stdclasscode varchar(6),
	frgnexind varchar(6),
	frgnexrefind varchar(6),
	frgnexref varchar(32),
	origstatuscode varchar(6),
	compachid varchar(32),
	entryhash varchar(32),
	submittedby varchar(32),
	submitdate varchar(32),
	batchstatus varchar(32),
	exportfilename varchar(64),
	memo varchar(2048),
	logid varchar(32),
	duedate numeric(38),
	dtprocessed numeric(38),
	offsetaccountid varchar(32),
	headercompname varchar(32),
	processid varchar(32),
	lastmodifier varchar(32),
	multibatchid varchar(32),
	nonofftotalcredit varchar(32),
	nonofftotaldebit varchar(32),
	nonoffrecordcount numeric(38),
	numberofcredits numeric(38),
	numberofdebits numeric(38),
	numberofprenotes numeric(38),
	sameday numeric(38) DEFAULT 0,
	originatorid varchar(16),
	originatorname varchar(40),
	originatoraddress varchar(40),
	originatorcitystate varchar(40),
	originatorcountryzip varchar(40)
) ;
CREATE INDEX idx_ach_batch_02 ON ach_batch (exportfilename);
CREATE INDEX idx_ach_batch_01 ON ach_batch (batchstatus);
CREATE INDEX idx_ach_batch_07 ON ach_batch (totaldebit);
CREATE INDEX ind_batchdtproc ON ach_batch (dtprocessed);
CREATE INDEX idx_ach_batch_06 ON ach_batch (batchtype);
CREATE INDEX idx_ach_batch_11 ON ach_batch (entryhash);
CREATE INDEX ind_batchodfiachid ON ach_batch (odfiachid);
CREATE INDEX idx_ach_batch_10 ON ach_batch (msgauthcode);
CREATE INDEX idx_ach_batch_03 ON ach_batch (batchnum);
CREATE INDEX idx_ach_batch_14 ON ach_batch (compid, batchcategory, totalcredit, submittedby);
CREATE INDEX idx_ach_batch_08 ON ach_batch (totalcredit);
CREATE INDEX idx_ach_batch_04 ON ach_batch (batchcategory);
CREATE INDEX idx_ach_batch_12 ON ach_batch (logid);
CREATE INDEX ind_batchoffacctid ON ach_batch (offsetaccountid);
CREATE INDEX idx_ach_batch_05 ON ach_batch (duedate);
CREATE INDEX idx_ach_batch_15 ON ach_batch (compid, batchtype, totaldebit, totalcredit, recordcount, batchcategory, batchstatus);
CREATE INDEX ind_batchstsubdate ON ach_batch (batchstatus, submitdate);
CREATE INDEX idx_ach_batch_16 ON ach_batch (batchid, batchstatus);
CREATE INDEX ind_batchcompid ON ach_batch (compid);
CREATE INDEX idx_ach_batch_09 ON ach_batch (recordcount);
CREATE INDEX idx_ach_batch_13 ON ach_batch (compid, batchcategory, batchid, logid);
ALTER TABLE ach_batch ADD PRIMARY KEY (batchid);

CREATE TABLE product_status (
	bank_id varchar(20) NOT NULL,
	product_id numeric(38) NOT NULL,
	status_id numeric(38) NOT NULL
) ;
ALTER TABLE product_status ADD PRIMARY KEY (bank_id,product_id,status_id);

CREATE TABLE etoe_session (
	id numeric NOT NULL,
	directory_id numeric NOT NULL,
	channel_id varchar(20),
	start_date timestamp NOT NULL,
	end_date timestamp
) ;
ALTER TABLE etoe_session ADD PRIMARY KEY (id);

CREATE TABLE bpw_pmthist (
	srvrtid varchar(32) NOT NULL,
	pmttype varchar(1),
	settlemethod varchar(2),
	prcdate varchar(8),
	sprefid varchar(32),
	credittrcnum varchar(15),
	checknum varchar(8),
	srvrsubmitdate varchar(20),
	filetrackid varchar(10),
	pmttranstype varchar(2),
	datecreditted varchar(8),
	datecreditrtn varchar(8),
	creditrtnreason varchar(3),
	submitdate varchar(32),
	localpmtid varchar(32)
) ;
CREATE INDEX indlocalpmtid ON bpw_pmthist (localpmtid);
CREATE INDEX indcrdttrcnum ON bpw_pmthist (srvrsubmitdate);
ALTER TABLE bpw_pmthist ADD PRIMARY KEY (srvrtid);

CREATE TABLE bs_dsbtransactions (
	accountid varchar(48) NOT NULL,
	transactionindex numeric NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	transid numeric(38),
	checkdate timestamp,
	payee varchar(40),
	amount decimal(31,3),
	checknumber varchar(40),
	checkrefnum varchar(40),
	memo varchar(255),
	issuedby varchar(80),
	approvedby varchar(80),
	immedfundsneeded decimal(31,3),
	onedayfundsneeded decimal(31,3),
	twodayfundsneeded decimal(31,3),
	valuedatetime timestamp,
	bankrefnum varchar(40),
	custrefnum varchar(40),
	presentment varchar(40),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(1024),
	extra varchar(1024)
) ;
ALTER TABLE bs_dsbtransactions ADD PRIMARY KEY (accountid,transactionindex);

CREATE TABLE bpw_orcclinkcrossreference (
	id numeric(38) NOT NULL,
	remotelinkid varchar(10),
	payeeid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	submitdate varchar(32)
) ;
CREATE INDEX ind_olnxref_cp ON bpw_orcclinkcrossreference (customerid, payeeid);
CREATE INDEX indorcclinkxref ON bpw_orcclinkcrossreference (payeeid);
ALTER TABLE bpw_orcclinkcrossreference ADD PRIMARY KEY (id);

CREATE TABLE status (
	status_id numeric(38) NOT NULL,
	bank_id varchar(20) NOT NULL,
	name varchar(50)
) ;
CREATE INDEX idx_status_id ON status (status_id);
ALTER TABLE status ADD PRIMARY KEY (bank_id,status_id);

CREATE TABLE bpw_payeeintrmdbnks (
	linkid varchar(32) NOT NULL,
	bankid varchar(32) NOT NULL,
	payeeid varchar(35) NOT NULL,
	rank varchar(10) NOT NULL
) ;
CREATE INDEX ind_pimbrank ON bpw_payeeintrmdbnks (rank);
CREATE INDEX ind_pimbpayeeid ON bpw_payeeintrmdbnks (payeeid);
CREATE UNIQUE INDEX ind_pimbbidpid ON bpw_payeeintrmdbnks (bankid, payeeid);
ALTER TABLE bpw_payeeintrmdbnks ADD PRIMARY KEY (linkid);

CREATE TABLE bpw_orcccustomercrossreference (
	orcccustomerid numeric(38) NOT NULL,
	orccacctid numeric(38) NOT NULL,
	customerid varchar(32) NOT NULL
) ;
CREATE INDEX indcustxrefcustid ON bpw_orcccustomercrossreference (customerid);
ALTER TABLE bpw_orcccustomercrossreference ADD PRIMARY KEY (orcccustomerid);

CREATE TABLE carrier_tc (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	carrierid varchar(20) NOT NULL,
	enabled char(1) DEFAULT 'T',
	resetdate timestamp,
	resetnotify char(1) DEFAULT 'T',
	acceptancewindow numeric(38) DEFAULT 30,
	alertdisable char(1) DEFAULT 'T',
	alertdisablenotify char(1) DEFAULT 'T',
	processstatus numeric(38),
	tokenrequired char(1) DEFAULT 'T',
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
CREATE UNIQUE INDEX mbk_carrier_tc_indx1 ON carrier_tc (carrierid);
ALTER TABLE carrier_tc ADD PRIMARY KEY (systemid);

CREATE TABLE ppay_issuedecisions (
	accountid varchar(40) NOT NULL,
	bankid varchar(40) NOT NULL,
	bankname varchar(100),
	routingnumber varchar(100),
	checknumber varchar(20) NOT NULL,
	checkdate timestamp NOT NULL,
	amount decimal(31,3) NOT NULL,
	voidcheck char(1) NOT NULL,
	additionaldata varchar(32),
	rejectreason varchar(32),
	issuedate timestamp NOT NULL,
	decision varchar(20) NOT NULL,
	submittingusername varchar(107),
	issuetype numeric(38) DEFAULT 0,
	tranid varchar(32) NOT NULL
) ;
CREATE INDEX ppayissidx ON ppay_issuedecisions (accountid, bankid, decision);
CREATE INDEX ppayissidx_1 ON ppay_issuedecisions (voidcheck desc, decision desc);
CREATE INDEX ppayissidx_2 ON ppay_issuedecisions (checkdate);
ALTER TABLE ppay_issuedecisions ADD PRIMARY KEY (bankid,accountid,checknumber);

CREATE TABLE etf_externalacct (
	acctid varchar(48) NOT NULL,
	customerid varchar(32),
	nickname varchar(32),
	nickname_lwrcase varchar(32),
	acctnum varchar(48) NOT NULL,
	accttype varchar(32) NOT NULL,
	acctbankrtn varchar(48) NOT NULL,
	acctscope varchar(32),
	acctdest varchar(32),
	acctcategory varchar(32),
	bankrtntype varchar(32),
	recipientid varchar(32),
	recipienttype varchar(32),
	recipientname varchar(32),
	prenote varchar(32),
	prenotestatus varchar(32),
	prenotesubdate varchar(32),
	prenotetype varchar(32),
	status varchar(32),
	submittedby varchar(32) NOT NULL,
	createdate varchar(32) NOT NULL,
	logid varchar(32) NOT NULL,
	verifystatus numeric(38) DEFAULT 0,
	verifyfailedcount numeric(38) DEFAULT 0,
	agreedtoterms char(1),
	depositdate varchar(32),
	primaryacctholder varchar(32),
	secondaryacctholder varchar(32),
	checknum varchar(32),
	countrycode varchar(3),
	samedayprenote char(1) DEFAULT 'N'
) ;
CREATE INDEX idxbpwetf0039 ON etf_externalacct (acctid, recipienttype);
CREATE INDEX idxbpwetf0004 ON etf_externalacct (accttype, prenotestatus, recipientname, recipientid, acctbankrtn);
CREATE INDEX idxbpwetf0012 ON etf_externalacct (acctnum, logid, createdate, submittedby, prenotesubdate, prenotestatus, prenote, recipientname, recipienttype, recipientid, acctbankrtn, accttype, nickname, customerid, acctid, status);
CREATE INDEX idxbpwetf0026 ON etf_externalacct (status, customerid, acctbankrtn, accttype, acctnum);
CREATE INDEX idxbpwetf0040 ON etf_externalacct (prenotestatus desc, acctbankrtn desc);
CREATE INDEX idxbpwetf0042 ON etf_externalacct (prenote, customerid, status, prenotestatus);
CREATE INDEX idxbpwetf0007 ON etf_externalacct (acctid desc, status desc);
CREATE INDEX idxbpwetf0060 ON etf_externalacct (prenotesubdate);
CREATE INDEX idxbpwetf0044 ON etf_externalacct (acctnum desc, status desc);
CREATE INDEX idxbpwetf0045 ON etf_externalacct (acctnum desc, acctbankrtn desc);
CREATE INDEX idxbpwetf0058 ON etf_externalacct (acctscope desc, acctid desc);
CREATE INDEX idxbpwetf0001 ON etf_externalacct (prenote, customerid, logid, createdate, submittedby, prenotesubdate, recipientname, recipienttype, recipientid, acctbankrtn, accttype, acctnum, nickname, acctid, status, prenotestatus);
CREATE INDEX idxbpwetf0019 ON etf_externalacct (accttype, prenotestatus, recipientname, recipientid, acctbankrtn, customerid);
CREATE INDEX idxbpwetf0065 ON etf_externalacct (acctcategory);
ALTER TABLE etf_externalacct ADD PRIMARY KEY (acctid);

CREATE TABLE bpw_transferbatch (
	batchid varchar(32) NOT NULL,
	fiid varchar(32) NOT NULL,
	customerid varchar(32),
	batchname varchar(128),
	batchtype varchar(32),
	totalamount varchar(32),
	amountcurrency char(3),
	transfercount numeric(38),
	submittedby varchar(32),
	submitdate timestamp,
	batchstatus varchar(32),
	memo varchar(256),
	logid varchar(32),
	category varchar(24) DEFAULT 'NULL'
) ;
CREATE INDEX idxbpwetf0063 ON bpw_transferbatch (category);
ALTER TABLE bpw_transferbatch ADD PRIMARY KEY (batchid);

CREATE TABLE appr_groupmembers (
	apprgroupid numeric(38) NOT NULL,
	userid numeric(38) NOT NULL
) ;
CREATE INDEX appr_grmgroupid ON appr_groupmembers (apprgroupid);
CREATE INDEX appr_grmuserid ON appr_groupmembers (userid);
ALTER TABLE appr_groupmembers ADD PRIMARY KEY (apprgroupid,userid);

CREATE TABLE product (
	bank_id varchar(20) NOT NULL,
	product_id numeric(38) NOT NULL,
	ext_product_id varchar(20),
	category_id numeric(38) NOT NULL,
	sub_category_id numeric(38),
	form_id numeric(38) NOT NULL,
	description varchar(200),
	title varchar(70),
	url varchar(1024)
) ;
ALTER TABLE product ADD PRIMARY KEY (bank_id,product_id);

CREATE TABLE appr_flowchains (
	levelid numeric(38) NOT NULL,
	ordinal numeric(38) NOT NULL,
	grouporuserid numeric(38) NOT NULL,
	usertype numeric(38) NOT NULL,
	isuser char(1) NOT NULL
) ;
CREATE INDEX appr_fc_idx1 ON appr_flowchains (grouporuserid desc, usertype desc);
ALTER TABLE appr_flowchains ADD PRIMARY KEY (levelid,ordinal);

CREATE TABLE bpw_vendor (
	vendorid varchar(20) NOT NULL,
	vendorname varchar(48) NOT NULL,
	nickname varchar(16) NOT NULL,
	address1 varchar(48) NOT NULL,
	address2 varchar(48),
	city varchar(40) NOT NULL,
	state varchar(20) NOT NULL,
	country varchar(30) NOT NULL,
	zipcode varchar(20) NOT NULL,
	phone varchar(32) NOT NULL,
	vendoremail varchar(255) NOT NULL,
	contactfirstname varchar(48) NOT NULL,
	contactlastname varchar(48) NOT NULL,
	vendorstatus varchar(12) NOT NULL,
	vendortaxid varchar(20) NOT NULL,
	acctid varchar(48) NOT NULL,
	tranid varchar(32) NOT NULL,
	createddate timestamp NOT NULL,
	lastupdated timestamp NOT NULL,
	submittedby varchar(32) NOT NULL,
	businessid numeric(38) NOT NULL,
	lastpaymentamt decimal(31,3),
	lastpaymentdate timestamp DEFAULT NULL
) ;
CREATE INDEX ind_vendorname ON bpw_vendor (vendorname);
CREATE INDEX ind_vendorstatus ON bpw_vendor (vendorstatus);
ALTER TABLE bpw_vendor ADD PRIMARY KEY (vendorid);

CREATE TABLE cc_companycutoff (
	compcutoffid varchar(32) NOT NULL,
	cutoffid varchar(32) NOT NULL,
	compid varchar(32) NOT NULL,
	transactiontype varchar(32) NOT NULL
) ;
CREATE INDEX idx_cc_comcutof_02 ON cc_companycutoff (compid, cutoffid);
CREATE INDEX idx_cc_comcutof_03 ON cc_companycutoff (compid, transactiontype);
CREATE INDEX idx_cc_comcutof_04 ON cc_companycutoff (compcutoffid, compid, cutoffid);
CREATE INDEX idx_cc_comcutof_01 ON cc_companycutoff (compid);
ALTER TABLE cc_companycutoff ADD PRIMARY KEY (compcutoffid);

CREATE TABLE entitlement_list (
	operation_name varchar(255) NOT NULL
) ;
ALTER TABLE entitlement_list ADD PRIMARY KEY (operation_name);

CREATE TABLE bpw_server_registry (
	server_name varchar(64) NOT NULL,
	server_role varchar(64),
	server_status numeric(38) DEFAULT 0,
	schedule_lock numeric(38) DEFAULT 0,
	ip_address varchar(64),
	host_name varchar(255),
	startup_time timestamp NOT NULL,
	heartbeat_lastupdated timestamp NOT NULL
) ;
ALTER TABLE bpw_server_registry ADD PRIMARY KEY (server_name);

CREATE TABLE cc_batchhist (
	batchhistid varchar(32) NOT NULL,
	compid varchar(32),
	processid varchar(32) NOT NULL,
	effectentrydate varchar(32),
	batchnumber varchar(32),
	numofdeposit numeric(38),
	numofdisburse numeric(38),
	totalcreditamt varchar(32),
	totaldebitamt varchar(32),
	transactiontype varchar(32) NOT NULL
) ;
CREATE INDEX idx_cc_bthhist_01 ON cc_batchhist (processid, compid);
ALTER TABLE cc_batchhist ADD PRIMARY KEY (batchhistid);

CREATE TABLE sch_eventinfo (
	eventid varchar(32) NOT NULL,
	instructionid varchar(32),
	fiid varchar(32),
	instructiontype varchar(32),
	scheduleflag numeric(38),
	status varchar(32),
	logid varchar(32),
	reconciliationid varchar(32)
) ;
CREATE INDEX ind_evtinfo_intyst ON sch_eventinfo (instructiontype, status, scheduleflag);
CREATE INDEX ind_evtinfo_st ON sch_eventinfo (status);
CREATE INDEX ind_evtinfo_idtp ON sch_eventinfo (instructionid, instructiontype);
ALTER TABLE sch_eventinfo ADD PRIMARY KEY (eventid);

CREATE TABLE ent_channel_list (
	channel_id varchar(20) NOT NULL,
	descr varchar(255),
	name varchar(255),
	channel_type numeric(38)
) ;
ALTER TABLE ent_channel_list ADD PRIMARY KEY (channel_id);

CREATE TABLE bs_transactiontype (
	transactiontypeid numeric NOT NULL,
	description varchar(80) NOT NULL
) ;
CREATE UNIQUE INDEX xak1transtype ON bs_transactiontype (description);
ALTER TABLE bs_transactiontype ADD PRIMARY KEY (transactiontypeid);

CREATE TABLE bpw_transfrtmphist (
	sessionid varchar(32) NOT NULL,
	cursorid numeric(38) NOT NULL,
	submitdate varchar(32),
	transactionid varchar(32) NOT NULL,
	transactiontype varchar(32) NOT NULL,
	datetopost numeric(38) NOT NULL,
	fromacctid varchar(48) NOT NULL,
	toacctid varchar(48) NOT NULL,
	fromacctnickname varchar(40),
	toacctnickname varchar(40),
	destination varchar(32) NOT NULL,
	frequency varchar(32),
	status varchar(32) NOT NULL,
	amount decimal(28,4) NOT NULL,
	templatename varchar(32),
	amountcurrency varchar(3),
	toamount decimal(28,4),
	toamountcurrency varchar(3),
	userassignedamount numeric(38) DEFAULT 0,
	estimatedamount char(1) DEFAULT 'N',
	payeename varchar(35),
	confirmationnum varchar(32),
	payeeid varchar(35),
	category varchar(24),
	instancenum numeric(38) DEFAULT 0
) ;
ALTER TABLE bpw_transfrtmphist ADD PRIMARY KEY (sessionid,cursorid);

CREATE TABLE reg_tran_category (
	reg_transaction_id numeric(38) NOT NULL,
	reg_user_cat_id numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL,
	amount double precision,
	base_category_amount decimal(31,3),
	base_currency_code varchar(3)
) ;
CREATE INDEX rtc_idx1 ON reg_tran_category (directory_id, reg_user_cat_id desc);
ALTER TABLE reg_tran_category ADD PRIMARY KEY (reg_transaction_id,reg_user_cat_id,directory_id);

CREATE TABLE sch_cutoffs (
	cutoffid varchar(32) NOT NULL,
	fiid varchar(32) NOT NULL,
	instructiontype varchar(32) NOT NULL,
	frequency numeric(38) NOT NULL,
	day numeric(38) NOT NULL,
	processtime varchar(32) NOT NULL,
	extension varchar(32),
	nextprocesstime varchar(32),
	lastprocesstime varchar(32),
	status varchar(32) NOT NULL,
	submittedby varchar(32) NOT NULL,
	logid varchar(32) NOT NULL,
	memo varchar(256)
) ;
CREATE INDEX ind_sch_cutoffs ON sch_cutoffs (fiid, instructiontype);
ALTER TABLE sch_cutoffs ADD PRIMARY KEY (cutoffid);

CREATE TABLE global_msg_rcpts (
	recipient_list_id numeric(6) NOT NULL,
	recipient_type numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL
) ;
CREATE INDEX rcpts_list_id_idx ON global_msg_rcpts (recipient_list_id);

CREATE TABLE tax_forms (
	id varchar(32) NOT NULL DEFAULT '0',
	directory_id numeric(38) NOT NULL,
	tax_type numeric(38) NOT NULL,
	tax_code varchar(10) NOT NULL,
	tax_state varchar(2),
	tax_name varchar(500) NOT NULL
) ;
ALTER TABLE tax_forms ADD PRIMARY KEY (directory_id,id);

CREATE TABLE sch_nameplace (
	name varchar(32),
	value varchar(255)
) ;
CREATE INDEX ind_nplace_name ON sch_nameplace (name);

CREATE TABLE lu_tfprtsubase (
	tfprtsubaseid numeric(38) NOT NULL,
	filekey varchar(17),
	dateupdated varchar(6),
	institutioncode varchar(2),
	branchcode varchar(2),
	routingnumber varchar(9),
	ffroutingnumber varchar(11),
	institutionname varchar(158),
	abbrinstitutionname varchar(50),
	street varchar(40),
	city varchar(30),
	statecode varchar(2),
	zipcode varchar(5),
	zipextension varchar(4),
	mailaddress varchar(40),
	mailcity varchar(30),
	mailstatecode varchar(2),
	mailzip varchar(5),
	mailzipextension varchar(4),
	branchoffice varchar(30),
	headofficertgnumber varchar(9),
	phoneareacode varchar(3),
	phonenumber varchar(7),
	phoneextension varchar(5),
	faxareacode varchar(3),
	faxnumber varchar(7),
	faxextension varchar(5),
	hoassetsize varchar(13),
	fedresdistrictcode varchar(6),
	yr2000lastupdated varchar(8),
	hofilekey varchar(17),
	routingnumbertype varchar(28),
	routingnumberstatus varchar(1),
	employertaxid varchar(10),
	achflag varchar(1),
	fedresroutingnumber varchar(9),
	institutionidentifier varchar(8),
	datelastupdated varchar(6),
	wirexfercontact varchar(50),
	wirexferareacode varchar(3),
	wirexferphone varchar(7),
	wirexferextension varchar(5),
	eftcontactname varchar(50),
	eftareacode varchar(3),
	eftphonenumber varchar(7),
	eftextension varchar(5),
	edicontactname varchar(50),
	edicontactareacode varchar(3),
	edicontactphone varchar(7),
	edicontactextension varchar(5),
	fedwirefundsstatus varchar(1),
	fedwiresecstatus varchar(1),
	fedwiretelname varchar(18),
	swiftaddress varchar(25),
	bicaddress varchar(25),
	wirexactcode varchar(1),
	fedcorresp varchar(50),
	fedcorrespfdstatus varchar(1),
	fedcorrespmicr varchar(9),
	fedcorrespassets varchar(13),
	yr2000lastupdated2 varchar(8),
	institutionidentifier2 varchar(8),
	fedcorrespfilekey varchar(17),
	mainofficefilekey varchar(17),
	dateupdated2 varchar(6),
	achcontactname varchar(50),
	achcontactareacode varchar(3),
	achcontactphone varchar(7),
	achcontactextension varchar(5),
	edicontactname2 varchar(50),
	edicontactareacode2 varchar(3),
	edicontactphone2 varchar(7),
	edicontactextension2 varchar(5),
	paperretcontactname varchar(50),
	paperretareacode varchar(3),
	paperretphone varchar(7),
	paperretextension varchar(5),
	achretcontactname varchar(50),
	achretareacode varchar(3),
	achretphone varchar(7),
	achretextension varchar(5),
	paperadjcontactname varchar(50),
	paperadjareacode varchar(3),
	paperadjphone varchar(7),
	paperadjextension varchar(5),
	achadjcontactname varchar(50),
	achadjareacode varchar(3),
	achadjphone varchar(7),
	achadjextension varchar(5),
	originationstatus varchar(1),
	receiverstatus varchar(1),
	achroutingnumber varchar(9),
	achprovider varchar(50),
	achmicrstatus varchar(1),
	cupaperpayabbr varchar(50),
	cupaperpaymicr varchar(9),
	cuaccountid varchar(10),
	cuidposition varchar(2),
	achpayablethrough varchar(1),
	savingsaccounts varchar(1),
	checkingaccounts varchar(1),
	localachacrony varchar(79),
	achmembershipind varchar(1),
	fedreserveach varchar(9),
	fedwirefundsxferstatus varchar(1),
	edicashdisbursmt varchar(1),
	edicorptradepayment varchar(1),
	edicorptradeexch varchar(1),
	edicustomerinentry varchar(1),
	psachassociation varchar(79),
	psachmicr varchar(9),
	yr2000datelastup varchar(8),
	institutionidentifier3 varchar(8) DEFAULT 'NULL'
) ;
ALTER TABLE lu_tfprtsubase ADD PRIMARY KEY (tfprtsubaseid);

CREATE TABLE da_category_limits (
	da_limit_id varchar(32) NOT NULL,
	category_id varchar(32) NOT NULL,
	operation_name varchar(255) NOT NULL,
	data_old varchar(255),
	data_new varchar(255),
	allow_approval_old char(1),
	allow_approval_new char(1),
	period varchar(25) NOT NULL
) ;
CREATE INDEX da_cl_catid ON da_category_limits (category_id);
ALTER TABLE da_category_limits ADD PRIMARY KEY (da_limit_id);

CREATE TABLE sc_holidaydefn (
	calendar_id numeric(38) NOT NULL,
	holiday_date timestamp NOT NULL,
	holiday_name varchar(255),
	action char(1) NOT NULL
) ;

CREATE TABLE bs_dsbsummary (
	accountid varchar(48) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	numitemspending numeric(38),
	totaldebits decimal(31,3),
	totalcredits decimal(31,3),
	totaldtccredits decimal(31,3),
	immedfundsneeded decimal(31,3),
	onedayfundsneeded decimal(31,3),
	twodayfundsneeded decimal(31,3),
	valuedatetime timestamp,
	checkspaidearly decimal(31,3),
	checkspaidlate decimal(31,3),
	checkspaidlast decimal(31,3),
	fedestimate decimal(31,3),
	latedebits decimal(31,3),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(1024),
	extra varchar(1024)
) ;
ALTER TABLE bs_dsbsummary ADD PRIMARY KEY (accountid,datadate);

CREATE TABLE dc_mastersub_rel (
	datadate timestamp NOT NULL,
	bank_id varchar(40) NOT NULL,
	bus_directory_id numeric(38) NOT NULL,
	master_routing_num varchar(100),
	master_account_id varchar(48) NOT NULL,
	sub_routing_num varchar(100),
	sub_account_id varchar(48) NOT NULL,
	location_id varchar(40) NOT NULL,
	inc_zbacr_inrollup char(1) NOT NULL,
	inc_zbadb_inrollup char(1) NOT NULL,
	withhold_nzb_sub char(1) NOT NULL,
	locationidplace numeric(38) NOT NULL,
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	baifileidentifier varchar(255)
) ;
CREATE INDEX dc_mastersub_rel_idx1 ON dc_mastersub_rel (datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX tddcperf ON dc_mastersub_rel (bank_id, bus_directory_id, datadate, sub_account_id, sub_routing_num, master_account_id, master_routing_num);

CREATE TABLE mb_rtvalidationlibrary (
	mdlid numeric(22) NOT NULL,
	mdlname char(128) NOT NULL,
	codefile varchar(255) NOT NULL
) ;

CREATE TABLE reserve_summary (
	stmt_id varchar(40) NOT NULL,
	prev_res_in_use varchar(40) NOT NULL,
	prv_res_in_use_dte timestamp NOT NULL,
	pmts_on_reserve varchar(40) NOT NULL,
	res_transactions varchar(40) NOT NULL,
	finance_charge varchar(40) NOT NULL,
	svc_charge varchar(40) NOT NULL,
	new_res_in_use varchar(40) NOT NULL,
	new_res_in_use_dte timestamp NOT NULL,
	periodic_int_rate double precision NOT NULL,
	annual_int_rate double precision NOT NULL,
	approved_res varchar(40) NOT NULL,
	available_res varchar(40) NOT NULL,
	av_dy_res_inuse_fc varchar(40) NOT NULL
) ;
ALTER TABLE reserve_summary ADD PRIMARY KEY (stmt_id);

CREATE TABLE ach_addenda (
	addendaid varchar(32) NOT NULL,
	recordid varchar(32),
	addendaseqnum varchar(32),
	addendatype varchar(12),
	recordtype varchar(4),
	addendacontent varchar(128),
	frgnpmtamt varchar(32),
	frgnrcvracctnum varchar(32),
	frgnrcvingdfiid varchar(32),
	frgntracenum varchar(32),
	networkidcode varchar(10),
	cardauthcode varchar(32),
	pmtinfo varchar(124),
	refinfo_1 varchar(32),
	refinfo_2 varchar(32),
	terminalcity varchar(32),
	terminalidcode varchar(32),
	terminalloc varchar(32),
	terminalstate varchar(32),
	tracenum varchar(32),
	transdate varchar(32),
	transdesc varchar(32),
	transserialnum varchar(32),
	transcode varchar(6),
	submittedby varchar(32),
	submitdate varchar(32),
	addendastatus varchar(32),
	logid varchar(32)
) ;
CREATE INDEX idx_ach_addenda_02 ON ach_addenda (recordid, addendaid, addendastatus);
CREATE INDEX ind_addendarecid ON ach_addenda (recordid);
CREATE INDEX idx_ach_addenda_01 ON ach_addenda (addendastatus);
ALTER TABLE ach_addenda ADD PRIMARY KEY (addendaid);

CREATE TABLE form_columns_i18n (
	form_id numeric(38) NOT NULL,
	field_id numeric(38) NOT NULL,
	language char(5) NOT NULL,
	display_name varchar(400),
	error_string varchar(1020)
) ;
ALTER TABLE form_columns_i18n ADD PRIMARY KEY (form_id,field_id,language);

CREATE TABLE response_body (
	response_id numeric(38) NOT NULL,
	seq numeric(38) NOT NULL,
	text varchar(255)
) ;
ALTER TABLE response_body ADD PRIMARY KEY (response_id,seq);

CREATE TABLE bank_mail (
	directory_id numeric(38) NOT NULL,
	msg_id numeric(38) NOT NULL,
	mail_type numeric(38) NOT NULL,
	send_to varchar(20),
	send_from varchar(20),
	subject varchar(20),
	status numeric(38),
	create_date timestamp,
	in_box numeric(38)
) ;
ALTER TABLE bank_mail ADD PRIMARY KEY (directory_id,msg_id,mail_type);

CREATE TABLE cc_entry (
	entryid varchar(32) NOT NULL,
	locationid varchar(32) NOT NULL,
	amount varchar(32) NOT NULL,
	duedate varchar(32) NOT NULL,
	willprocesstime varchar(32) NOT NULL,
	processedtime varchar(32),
	transactiontype varchar(32) NOT NULL,
	memo varchar(256),
	createddate varchar(32) NOT NULL,
	entrycategory varchar(32),
	status varchar(32),
	submittedby varchar(32) NOT NULL,
	lastprocessid varchar(32),
	logid varchar(32) NOT NULL,
	lastmodifier varchar(32),
	samedaycashcon numeric(38) DEFAULT 0
) ;
CREATE INDEX idx_cc_entry_03 ON cc_entry (submittedby, status, locationid);
CREATE INDEX idx_cc_entry_06 ON cc_entry (locationid, status, lastprocessid, transactiontype, duedate);
CREATE INDEX idx_cc_entry_01 ON cc_entry (entryid, status);
CREATE INDEX idx_cc_entry_02 ON cc_entry (locationid, status);
CREATE INDEX idx_cc_entry_05 ON cc_entry (transactiontype, status, entrycategory, locationid, createddate);
CREATE INDEX idx_cc_entry_04 ON cc_entry (entryid, lastprocessid, processedtime, status);
ALTER TABLE cc_entry ADD PRIMARY KEY (entryid);

CREATE TABLE password_history (
	user_type numeric(38) NOT NULL,
	user_id numeric(38) NOT NULL,
	password_date timestamp NOT NULL,
	password varchar(100) NOT NULL
) ;
CREATE UNIQUE INDEX pwd_history_idx ON password_history (user_type, user_id, password_date desc);
ALTER TABLE password_history ADD PRIMARY KEY (user_type,user_id,password_date);

CREATE TABLE ae_auditlog (
	ae_auditlog_id numeric(38) NOT NULL,
	tracking_id varchar(32),
	alert_id numeric(38) NOT NULL,
	contact_point_id numeric(38),
	audit_time timestamp NOT NULL,
	alert_type numeric(38) NOT NULL,
	alert_status varchar(35) NOT NULL,
	status varchar(35) NOT NULL,
	channel_name varchar(255),
	userid varchar(35) NOT NULL,
	sequence_no numeric(38)
) ;
CREATE INDEX ae_altytichaidstid ON ae_auditlog (alert_type, audit_time, channel_name, alert_id, tracking_id, status, ae_auditlog_id);
CREATE INDEX ae_alogtime ON ae_auditlog (audit_time);
ALTER TABLE ae_auditlog ADD PRIMARY KEY (ae_auditlog_id);

CREATE TABLE fi_mappingdefn (
	mappingid numeric NOT NULL,
	businessid numeric NOT NULL,
	name varchar(255) NOT NULL,
	description varchar(255),
	outputformatname varchar(255) NOT NULL,
	inputformattype numeric NOT NULL,
	fielddelimitertype numeric,
	recorddelimitertype numeric,
	numheaderlines numeric,
	recordlength numeric,
	numheaderchars numeric,
	dateformattype numeric,
	dateseparatortype numeric,
	moneyformattype numeric,
	matchrecordsby numeric,
	updateentriesby numeric
) ;
CREATE INDEX fi_mappingdefnfk ON fi_mappingdefn (businessid);
ALTER TABLE fi_mappingdefn ADD PRIMARY KEY (mappingid);

CREATE TABLE mb_rtadaptlibrary (
	alid numeric(22) NOT NULL,
	alname char(128) NOT NULL
) ;

CREATE TABLE bpw_bankacct (
	acctid varchar(32) NOT NULL,
	acctnumber varchar(48) NOT NULL,
	fiid varchar(32) NOT NULL,
	bankrtn varchar(48) NOT NULL,
	accttype varchar(32) NOT NULL,
	nameonacct varchar(32),
	acctstatus varchar(32) NOT NULL,
	acctnickname varchar(40),
	acctdesc varchar(64),
	bankname varchar(64),
	branchname varchar(64),
	acctgroup varchar(32),
	acctrank varchar(32),
	currency varchar(32),
	addrline1 varchar(35),
	addrline2 varchar(35),
	city varchar(32),
	state varchar(32),
	zipcode varchar(10),
	country varchar(32),
	dayphone varchar(16),
	submitdate varchar(32),
	lastchangedate varchar(32),
	activationdate varchar(32),
	amtlimit varchar(32)
) ;
CREATE INDEX ind_bankacctst ON bpw_bankacct (acctstatus);
ALTER TABLE bpw_bankacct ADD PRIMARY KEY (acctid);

CREATE TABLE product_access (
	bank_id varchar(20) NOT NULL,
	employee_id numeric(38) NOT NULL,
	product_id numeric(38) NOT NULL
) ;
ALTER TABLE product_access ADD PRIMARY KEY (bank_id,employee_id,product_id);

CREATE TABLE sva_wallet (
	directory_id numeric(38) NOT NULL,
	asset_key varchar(40),
	loyalty_address varchar(48),
	loyalty_created_date timestamp,
	loyalty_status numeric(38),
	wallet_address varchar(48),
	phone_number varchar(20),
	mobile_device_id numeric(38),
	wallet_status numeric(38),
	wallet_created_date timestamp
) ;
ALTER TABLE sva_wallet ADD PRIMARY KEY (directory_id);

CREATE TABLE dc_transactionsdesc (
	dcaccountid numeric(38) NOT NULL,
	dctransactionindex numeric NOT NULL,
	dataclassification char(1) NOT NULL,
	ordinal numeric(38) NOT NULL,
	description varchar(1024)
) ;
ALTER TABLE dc_transactionsdesc ADD PRIMARY KEY (dcaccountid,dctransactionindex,dataclassification,ordinal);

CREATE TABLE sch_schedulehistory (
	schhistid varchar(32) NOT NULL,
	logdate varchar(32) NOT NULL,
	schedulename varchar(32),
	fiid varchar(32),
	instructiontype varchar(32),
	servername varchar(32),
	eventtype varchar(32),
	eventtrigger varchar(32),
	eventdescription varchar(256),
	processid varchar(32),
	filename varchar(256),
	cutoffid varchar(32),
	cutoffday numeric(38),
	cutoffprocesstime varchar(32),
	cutoffextension varchar(32)
) ;
CREATE INDEX idx_sch_schhist_02 ON sch_schedulehistory (eventtype, instructiontype, fiid, logdate);
CREATE INDEX ind_sch_hist_lfi ON sch_schedulehistory (logdate, fiid, instructiontype);
CREATE INDEX idx_sch_schhist_01 ON sch_schedulehistory (cutoffid, processid, logdate);
CREATE INDEX ind_sch_hist_ld ON sch_schedulehistory (logdate);
CREATE INDEX idx_sch_schhist_03 ON sch_schedulehistory (processid, instructiontype, fiid, logdate, filename);
ALTER TABLE sch_schedulehistory ADD PRIMARY KEY (schhistid);

CREATE TABLE information (
	stmt_id varchar(40) NOT NULL,
	msg_type varchar(40),
	msg_id varchar(40) NOT NULL,
	heading varchar(40),
	content varchar(50)
) ;
CREATE INDEX info_idx1 ON information (stmt_id);

CREATE TABLE dc_subtype_desc (
	id numeric(38) NOT NULL,
	description varchar(100) NOT NULL,
	last_updated timestamp NOT NULL,
	locale varchar(5) NOT NULL
) ;
ALTER TABLE dc_subtype_desc ADD PRIMARY KEY (id,locale);

CREATE TABLE int_bal_summary (
	stmt_id varchar(40) NOT NULL,
	heading1 varchar(40),
	heading2 varchar(40),
	fed_res_reqmt varchar(40) NOT NULL,
	avg_ledger_bal varchar(40) NOT NULL,
	avg_float varchar(40) NOT NULL,
	avg_coll_balance varchar(40) NOT NULL,
	avg_reserve_reqmt varchar(40) NOT NULL,
	avg_bal_qlfy_int varchar(40) NOT NULL,
	avg_int_rate double precision NOT NULL,
	avg_daily_accr varchar(40) NOT NULL,
	no_of_days_qlfying numeric(38) NOT NULL,
	tot_int_cr_nxt_stm varchar(40) NOT NULL,
	num_days_overdrawn numeric(38) NOT NULL,
	avg_overdraft varchar(40) NOT NULL,
	avg_overdraft_rate double precision NOT NULL,
	av_dly_ovrdrft_chg varchar(40) NOT NULL,
	num_days_chgd numeric(38) NOT NULL,
	tot_od_chgd_nxt varchar(40) NOT NULL
) ;
ALTER TABLE int_bal_summary ADD PRIMARY KEY (stmt_id);

CREATE TABLE bpw_xferextrainfo (
	srvrtid varchar(32) NOT NULL,
	name varchar(64) NOT NULL,
	value varchar(255)
) ;
ALTER TABLE bpw_xferextrainfo ADD PRIMARY KEY (srvrtid,name);

CREATE TABLE mb_rtroutinglibrary (
	rrlid numeric(22) NOT NULL,
	rrlname char(128) NOT NULL,
	codefile varchar(255) NOT NULL,
	ejburl varchar(255),
	ejbusername varchar(255),
	ejbpassword varchar(255),
	ejbfactoryname varchar(255),
	ejbcontextproperties text,
	easerverurl varchar(255),
	easerverusername varchar(255),
	easerverpassword varchar(255),
	easervercontextproperties text
) ;

CREATE TABLE lu_fedwire (
	institutionid numeric(38) NOT NULL,
	routingnumber varchar(9) NOT NULL,
	telegraphicname varchar(18),
	customername varchar(36),
	city varchar(25),
	statecode varchar(2),
	fundstransferstatus varchar(1) DEFAULT 'N',
	fundssettlementstatus varchar(1),
	securitiestransferstatus varchar(1) DEFAULT 'N',
	changedate varchar(8) DEFAULT 'NULL'
) ;
CREATE INDEX ind_fedwirerno ON lu_fedwire (routingnumber);
ALTER TABLE lu_fedwire ADD PRIMARY KEY (institutionid);

CREATE TABLE ent_user_profiles (
	member_id varchar(255) NOT NULL,
	profile_ent_group_id numeric(38) NOT NULL,
	create_date timestamp,
	modified_date timestamp,
	activation_date timestamp,
	status numeric(38) NOT NULL
) ;
CREATE INDEX user_profiles_idx1 ON ent_user_profiles (member_id);
ALTER TABLE ent_user_profiles ADD PRIMARY KEY (member_id,profile_ent_group_id);

CREATE TABLE sch_eventinfolog (
	eventid varchar(32) NOT NULL,
	instructionid varchar(32),
	fiid varchar(32),
	instructiontype varchar(32),
	scheduleflag numeric(38),
	logdate numeric(38),
	logid varchar(32),
	scheduleid varchar(32),
	processid varchar(32),
	reconciliationid varchar(32)
) ;
CREATE INDEX ind_evtinlg_lgdt ON sch_eventinfolog (logdate);
CREATE INDEX ind_evtinlg_scprid ON sch_eventinfolog (scheduleid, processid);
CREATE INDEX ind_evtinlg_intyst ON sch_eventinfolog (instructiontype, logdate, scheduleflag);
CREATE INDEX ind_evtinlg_instid ON sch_eventinfolog (instructionid);
ALTER TABLE sch_eventinfolog ADD PRIMARY KEY (eventid);

CREATE TABLE feature_group (
	feature_group_id numeric(38) NOT NULL,
	name varchar(255) NOT NULL,
	description varchar(255),
	group_sequence numeric(38) NOT NULL,
	status char(1),
	created_date timestamp
) ;
ALTER TABLE feature_group ADD PRIMARY KEY (feature_group_id);

CREATE TABLE ent_channel_ops (
	member_id varchar(255),
	trn_id varchar(255) NOT NULL,
	op_type varchar(255) NOT NULL,
	channel_id_init varchar(20) NOT NULL,
	channel_id_mod varchar(20) NOT NULL,
	channel_group_id_init numeric(38) NOT NULL,
	channel_group_id_mod numeric(38) NOT NULL,
	last_update timestamp NOT NULL,
	batch_id varchar(32)
) ;
CREATE INDEX channel_ops_idx3 ON ent_channel_ops (batch_id);
CREATE INDEX channel_ops_idx2 ON ent_channel_ops (last_update);
ALTER TABLE ent_channel_ops ADD PRIMARY KEY (trn_id,op_type);

CREATE TABLE sch_locker2 (
	indexname varchar(32) NOT NULL,
	value numeric(38)
) ;
ALTER TABLE sch_locker2 ADD PRIMARY KEY (indexname);

CREATE TABLE mbk_audit_security_event (
	systemid numeric NOT NULL,
	version numeric(38) NOT NULL,
	eventdate numeric NOT NULL,
	eventseverity numeric(38) NOT NULL,
	eventstatus numeric(38) NOT NULL,
	channeltype varchar(20) NOT NULL,
	userid varchar(20),
	backenduserid varchar(30),
	usertype varchar(20),
	userbankid varchar(48),
	usergroupid varchar(48),
	usermsisdn varchar(17),
	commandtype numeric(38),
	commandresult numeric(38),
	roles varchar(50),
	txcmd varchar(25),
	realbackendauth numeric(38),
	systemname varchar(50),
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
ALTER TABLE mbk_audit_security_event ADD PRIMARY KEY (systemid);

CREATE TABLE mb_rtrepositoryversion (
	repositoryversion numeric(22) NOT NULL
) ;
ALTER TABLE mb_rtrepositoryversion ADD PRIMARY KEY (repositoryversion);

CREATE TABLE history (
	id numeric(38),
	modifier_id numeric(38),
	id_type numeric(38),
	date_changed timestamp,
	modifier_type numeric(38),
	column_changed varchar(100),
	old_value varchar(100),
	new_value varchar(100),
	history_comment varchar(255),
	id_str varchar(20)
) ;
CREATE INDEX history_idx3 ON history (id_str, date_changed, id_type);
CREATE INDEX history_idx2 ON history (id, id_type);
CREATE INDEX history_idx1 ON history (date_changed desc, modifier_type desc);

CREATE TABLE customer_directory (
	directory_id numeric(38) NOT NULL,
	cust_id varchar(20) NOT NULL,
	directory_date timestamp,
	last_active_date timestamp,
	account_status numeric(38) NOT NULL,
	create_date timestamp,
	modified_date timestamp,
	activation_date timestamp
) ;
CREATE UNIQUE INDEX customer_dir_idx ON customer_directory (directory_id desc);
CREATE INDEX customer_dir_idx4 ON customer_directory (directory_id, cust_id);
CREATE INDEX customer_dir_idx3 ON customer_directory (directory_id, account_status);
ALTER TABLE customer_directory ADD PRIMARY KEY (directory_id);

CREATE TABLE bpw_achtemphist (
	sessionid varchar(32) NOT NULL,
	cursorid numeric(38) NOT NULL,
	transactionid varchar(32) NOT NULL,
	transactiontype varchar(32) NOT NULL,
	duedate varchar(32) NOT NULL,
	batchname varchar(32) NOT NULL,
	compachid varchar(32) NOT NULL,
	numberofentries numeric(38),
	frequency varchar(32),
	status varchar(32) NOT NULL,
	totalcredit decimal(28,4) NOT NULL,
	totaldebit decimal(28,4) NOT NULL,
	seccode varchar(16) NOT NULL,
	batchsubmitdate varchar(32) NOT NULL,
	numberofcredits numeric(38),
	numberofdebits numeric(38),
	numberofprenotes numeric(38),
	companyname varchar(32) NOT NULL,
	submitdate varchar(32) NOT NULL,
	instancenum numeric(38) DEFAULT 0
) ;
ALTER TABLE bpw_achtemphist ADD PRIMARY KEY (sessionid,cursorid);

CREATE TABLE dc_lockbox (
	dclockboxid numeric(38) NOT NULL,
	dcaccountid numeric(38) NOT NULL,
	lockboxnumber varchar(40) NOT NULL,
	extra varchar(1024)
) ;
CREATE UNIQUE INDEX dc_lockbox1 ON dc_lockbox (dcaccountid, lockboxnumber);
ALTER TABLE dc_lockbox ADD PRIMARY KEY (dclockboxid);

CREATE TABLE bs_recordcounter (
	objecttype numeric(38) NOT NULL,
	objectid varchar(200) NOT NULL,
	countername varchar(40) NOT NULL,
	nextindex numeric NOT NULL
) ;
ALTER TABLE bs_recordcounter ADD PRIMARY KEY (objecttype,objectid,countername);

CREATE TABLE bpw_transfer (
	srvrtid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	fiid varchar(32),
	transfertype varchar(32) NOT NULL,
	transferdest varchar(32) NOT NULL,
	transfergroup varchar(32),
	transfercategory varchar(32),
	bankfromrtn varchar(48),
	accountfromnum varchar(48),
	accountfromtype varchar(32),
	accountfromid varchar(32),
	externalacctid varchar(32),
	amount varchar(32) NOT NULL,
	amountcurrency varchar(32),
	origamount varchar(32),
	origcurrency varchar(32),
	datecreate varchar(32) NOT NULL,
	datedue varchar(32) NOT NULL,
	datetopost varchar(32) NOT NULL,
	dateposted varchar(32),
	status varchar(32) NOT NULL,
	lastprocessid varchar(32),
	memo varchar(256),
	templatescope varchar(32),
	templatenickname varchar(32),
	sourcetemplateid varchar(32),
	sourcerecsrvrtid varchar(32),
	submittedby varchar(32) NOT NULL,
	logid varchar(32) NOT NULL,
	originatinguserid varchar(32),
	confirmnum varchar(64),
	confirmmsg varchar(255),
	typedetail varchar(32),
	fundsprocessing numeric(38) DEFAULT 1,
	lastchangedate varchar(32),
	processtype numeric(38) DEFAULT 0,
	processleadnumber numeric(38) DEFAULT 1,
	processdate varchar(32),
	action varchar(32),
	fundsretry numeric(38) DEFAULT 0,
	bankfromrtntype varchar(32),
	processnumber numeric(38) DEFAULT 0,
	batchid varchar(32),
	toamount varchar(32),
	toamountcurrency varchar(3),
	userassignedamount numeric(38) DEFAULT 0,
	category varchar(24),
	deliverby numeric(38) DEFAULT 0,
	acctfromcountrycode varchar(3),
	accttocountrycode varchar(3),
	samedaytransfer numeric(38) DEFAULT 0,
	pmtsubtype varchar(32) NOT NULL DEFAULT 'EXTTRANSFER'
) ;
CREATE INDEX idxbpwetf0011 ON bpw_transfer (transfercategory, customerid, sourcetemplateid, transferdest, transfertype, datetopost, amount, status);
CREATE INDEX idxbpwetf0054 ON bpw_transfer (status, externalacctid);
CREATE INDEX idxbpwetf0053 ON bpw_transfer (externalacctid, lastprocessid, status);
CREATE INDEX idxbpwetf0017 ON bpw_transfer (transfercategory, customerid, sourcetemplateid, transferdest);
CREATE INDEX idxbpwetf0005 ON bpw_transfer (srvrtid, status);
CREATE INDEX idxbpwetf0052 ON bpw_transfer (externalacctid, status, datetopost);
CREATE INDEX idxbpwetf0032 ON bpw_transfer (status, transfercategory, lastprocessid, externalacctid);
CREATE INDEX idxbpwetf0055 ON bpw_transfer (accountfromid);
CREATE INDEX idxbpwetf0002 ON bpw_transfer (srvrtid, transfertype, status);
CREATE INDEX idxbpwetf0041 ON bpw_transfer (sourcetemplateid desc);
CREATE INDEX idxbpwetf0056 ON bpw_transfer (sourcerecsrvrtid);
CREATE INDEX idxbpwetf0018 ON bpw_transfer (status, sourcerecsrvrtid, srvrtid);
CREATE INDEX idxbpwetf0050 ON bpw_transfer (sourcerecsrvrtid, srvrtid, status);
CREATE INDEX idxbpwetf0021 ON bpw_transfer (customerid, datetopost, lastprocessid, status, transfercategory);
CREATE INDEX idxbpwetf0003 ON bpw_transfer (srvrtid, customerid, status);
CREATE INDEX idxbpwetf0034 ON bpw_transfer (externalacctid);
CREATE INDEX idxbpwetf0035 ON bpw_transfer (logid);
CREATE INDEX idxbpwetf0006 ON bpw_transfer (srvrtid desc, status desc);
CREATE INDEX idxbpwetf0051 ON bpw_transfer (logid, status);
CREATE INDEX idxbpwetf0059 ON bpw_transfer (fiid, srvrtid);
CREATE INDEX idxbpwetf0031 ON bpw_transfer (customerid, lastprocessid, status, transfercategory);
CREATE INDEX idxbpwetf0027 ON bpw_transfer (customerid);
CREATE INDEX idxbpwetf0000 ON bpw_transfer (customerid desc, datetopost desc);
CREATE INDEX idxbpwetf0013 ON bpw_transfer (transfercategory, customerid, sourcetemplateid, transferdest, transfertype, srvrtid, datetopost);
CREATE INDEX idxbpwetf0047 ON bpw_transfer (sourcerecsrvrtid desc);
CREATE INDEX idxbpwetf0061 ON bpw_transfer (category);
ALTER TABLE bpw_transfer ADD PRIMARY KEY (srvrtid);

CREATE TABLE perf_logging_config_settings (
	id numeric(38) NOT NULL,
	property_name varchar(256) NOT NULL,
	property_value varchar(256),
	is_configurable numeric(38)
) ;
ALTER TABLE perf_logging_config_settings ADD PRIMARY KEY (id);

CREATE TABLE bs_customeraccount (
	customerid varchar(32) NOT NULL,
	accountid varchar(48) NOT NULL
) ;
CREATE INDEX xif11useraccounts ON bs_customeraccount (accountid);
CREATE INDEX xif10useraccounts ON bs_customeraccount (customerid);
ALTER TABLE bs_customeraccount ADD PRIMARY KEY (customerid,accountid);

CREATE TABLE bs_customer (
	customerid varchar(32) NOT NULL,
	userid varchar(32) NOT NULL,
	password varchar(32) NOT NULL,
	firstname varchar(32) NOT NULL,
	middlename varchar(32),
	lastname varchar(32) NOT NULL,
	address1 varchar(50) NOT NULL,
	address2 varchar(50),
	city varchar(32) NOT NULL,
	state varchar(5) NOT NULL,
	postalcode varchar(10) NOT NULL,
	country varchar(32) NOT NULL,
	dayphone varchar(32),
	eveningphone varchar(32),
	emailaddress varchar(255)
) ;
CREATE INDEX xie1customer ON bs_customer (lastname);
CREATE INDEX xak5customer ON bs_customer (userid);
ALTER TABLE bs_customer ADD PRIMARY KEY (customerid);

CREATE TABLE bpw_cashcontemphist (
	sessionid varchar(32) NOT NULL,
	cursorid numeric(38) NOT NULL,
	transactionid varchar(32) NOT NULL,
	transactiontype varchar(32) NOT NULL,
	duedate varchar(32) NOT NULL,
	division varchar(32) NOT NULL,
	location varchar(32) NOT NULL,
	type varchar(32) NOT NULL,
	status varchar(32) NOT NULL,
	amount decimal(28,4) NOT NULL,
	submitdate varchar(32) NOT NULL
) ;
ALTER TABLE bpw_cashcontemphist ADD PRIMARY KEY (sessionid,cursorid);

CREATE TABLE message_comment (
	comment_id numeric(38) NOT NULL,
	seq numeric(38) NOT NULL,
	text varchar(1024)
) ;
ALTER TABLE message_comment ADD PRIMARY KEY (comment_id,seq);

CREATE TABLE bs_accounttype (
	accounttypeid numeric NOT NULL,
	description varchar(80) NOT NULL
) ;
CREATE UNIQUE INDEX xak1accounttype ON bs_accounttype (description);
ALTER TABLE bs_accounttype ADD PRIMARY KEY (accounttypeid);

CREATE TABLE ach_recaddenda (
	recaddendaid varchar(32) NOT NULL,
	recordid varchar(32),
	addendaseqnum varchar(32),
	addendatype varchar(12),
	recordtype varchar(4),
	addendacontent varchar(128),
	frgnpmtamt varchar(32),
	frgnrcvracctnum varchar(32),
	frgnrcvingdfiid varchar(32),
	frgntracenum varchar(32),
	networkidcode varchar(10),
	cardauthcode varchar(32),
	pmtinfo varchar(124),
	refinfo_1 varchar(32),
	refinfo_2 varchar(32),
	terminalcity varchar(32),
	terminalidcode varchar(32),
	terminalloc varchar(32),
	terminalstate varchar(32),
	tracenum varchar(32),
	transdate varchar(32),
	transdesc varchar(32),
	transserialnum varchar(32),
	transcode varchar(6),
	submittedby varchar(32),
	submitdate varchar(32),
	addendastatus varchar(32),
	logid varchar(32)
) ;
CREATE INDEX idx_ach_recaden_01 ON ach_recaddenda (addendastatus);
CREATE INDEX idx_ach_recaden_02 ON ach_recaddenda (recordid, recaddendaid, addendastatus);
CREATE INDEX ind_rcadndarecid ON ach_recaddenda (recordid);
ALTER TABLE ach_recaddenda ADD PRIMARY KEY (recaddendaid);

CREATE TABLE dc_accountsummary (
	dcaccountid numeric(38) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	totalcredits decimal(31,3),
	totalcreditsmtd decimal(31,3),
	creditsnotdetailed decimal(31,3),
	depositssubjfloat decimal(31,3),
	totaladjcreditsytd decimal(31,3),
	totallockboxdeposits decimal(31,3),
	totaldebits decimal(31,3),
	totaldebitsmtd decimal(31,3),
	todaytotaldebits decimal(31,3),
	totaldebitlesswire decimal(31,3),
	totaladjdebitsytd decimal(31,3),
	totaldebitsexretn decimal(31,3),
	immedavailamount decimal(31,3),
	onedayavailamount decimal(31,3),
	moreonedayavailam decimal(31,3),
	valuedatetime timestamp,
	availableoverdraft decimal(31,3),
	restrictedcash decimal(31,3),
	accruedinterest decimal(31,3),
	accrueddividend decimal(31,3),
	totaloverdraftamt decimal(31,3),
	nxtovrdrftpmtdate timestamp,
	interestrate double precision,
	bookvalue decimal(31,3),
	marketvalue decimal(31,3),
	openingledger decimal(31,3),
	closingledger decimal(31,3),
	curravailbal decimal(31,3),
	ledgerbal decimal(31,3),
	onedayfloat decimal(31,3),
	twodayfloat decimal(31,3),
	totalfloat decimal(31,3),
	total_num_debits numeric(38),
	total_num_credits numeric(38),
	numcreditsmtd numeric(38),
	numcrnotdetail numeric(38),
	numdepsubjfloat numeric(38),
	numadjcreditytd numeric(38),
	numcurdaylbdep numeric(38),
	numdebitsmtd numeric(38),
	numtodaytotaldebit numeric(38),
	numdebitlesswires numeric(38),
	numadjdebitytd numeric(38),
	numdebitexretn numeric(38),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_accountsummary_idx1 ON dc_accountsummary (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX dc_accountsummary_idx2 ON dc_accountsummary (dataclassification, dcaccountid);
ALTER TABLE dc_accountsummary ADD PRIMARY KEY (dcaccountid,datadate,dataclassification);

CREATE TABLE custom_ims_tag (
	directory_id numeric(38) NOT NULL,
	tag_name varchar(30) NOT NULL,
	value varchar(30),
	expire_date timestamp,
	active_date timestamp
) ;
ALTER TABLE custom_ims_tag ADD PRIMARY KEY (directory_id,tag_name);

CREATE TABLE message (
	message_id numeric(38) NOT NULL,
	employee_id numeric(38) NOT NULL,
	directory_id numeric(38),
	to_directory_id numeric(38),
	queue_id numeric(38),
	status numeric(38),
	subject varchar(100),
	modified_date timestamp,
	create_date timestamp,
	bank_id varchar(20) NOT NULL,
	close_date timestamp,
	case_num varchar(10)
) ;
CREATE INDEX message_idx3 ON message (message_id, employee_id, queue_id, status);
CREATE INDEX message_idx5 ON message (message_id, status);
CREATE INDEX message_idx2 ON message (employee_id desc, status desc);
CREATE INDEX message_idx12 ON message (status, employee_id, message_id);
CREATE INDEX message_idx4 ON message (directory_id, status);
CREATE INDEX message_idx7 ON message (employee_id, queue_id, status, create_date);
CREATE INDEX message_idx11 ON message (queue_id, employee_id, status);
CREATE INDEX message_idx8 ON message (message_id, employee_id, queue_id, status, create_date);
CREATE INDEX message_idx6 ON message (message_id, employee_id, directory_id, queue_id, status, subject, modified_date, create_date, bank_id, close_date, case_num);
CREATE INDEX message_idx10 ON message (status, create_date, bank_id, case_num);
CREATE INDEX message_idx9 ON message (message_id, employee_id, queue_id, create_date);
ALTER TABLE message ADD PRIMARY KEY (message_id);

CREATE TABLE bpw_wireinfo2 (
	srvrtid varchar(32) NOT NULL,
	byorderofname varchar(36),
	byorderofaddr1 varchar(36),
	byorderofaddr2 varchar(36),
	byorderofaddr3 varchar(36),
	byorderofacct varchar(36),
	addendatype varchar(16),
	version numeric(38) DEFAULT 0
) ;
ALTER TABLE bpw_wireinfo2 ADD PRIMARY KEY (srvrtid);

CREATE TABLE bpw_customerpayee (
	payeeid varchar(32) NOT NULL,
	payeelistid numeric(38) NOT NULL,
	customerid varchar(32) NOT NULL,
	payacct varchar(48),
	nameonacct varchar(32),
	status varchar(16) NOT NULL,
	errcode numeric(38),
	errmsg varchar(255),
	extdinfo varchar(64),
	linkid numeric(38),
	linkgodate numeric(38),
	submitdate varchar(32)
) ;
CREATE INDEX ind_custpay_cidpid ON bpw_customerpayee (customerid, payeeid);
CREATE INDEX ind_custpay_pid ON bpw_customerpayee (payeeid);
CREATE INDEX ind_custpay_cid ON bpw_customerpayee (customerid);
CREATE INDEX ind_custpay_st ON bpw_customerpayee (status);
ALTER TABLE bpw_customerpayee ADD PRIMARY KEY (customerid,payeelistid);

CREATE TABLE lu_fedach (
	fedinstitutionid numeric(38) NOT NULL,
	routingnumber varchar(9) NOT NULL,
	officecode varchar(1),
	servicingfrb varchar(9),
	recordtype varchar(1),
	changedate varchar(32),
	newroutingnumber varchar(9),
	customername varchar(36),
	address varchar(36),
	city varchar(20),
	statecode varchar(2),
	zipcode varchar(5),
	zipcodeextension varchar(4),
	telephoneareacode varchar(3),
	telephoneprefixnum varchar(3),
	telephonesuffixnum varchar(4),
	institutionstatuscode varchar(1),
	dataviewcode varchar(1) DEFAULT 'NULL'
) ;
CREATE INDEX ind_achnewrno ON lu_fedach (newroutingnumber);
CREATE INDEX ind_fedachrno ON lu_fedach (routingnumber);
ALTER TABLE lu_fedach ADD PRIMARY KEY (fedinstitutionid);

CREATE TABLE cc_company (
	compid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	cccompid varchar(32) NOT NULL,
	compname varchar(32) NOT NULL,
	concentrateacctid varchar(32),
	disburseacctid varchar(32),
	batchtype varchar(32) NOT NULL,
	status varchar(32) NOT NULL,
	submittedby varchar(32) NOT NULL,
	logid varchar(32) NOT NULL
) ;
CREATE INDEX idx_cc_company_01 ON cc_company (cccompid, status);
CREATE INDEX idx_cc_company_06 ON cc_company (customerid desc, compid);
CREATE INDEX idx_cc_company_03 ON cc_company (customerid, status);
CREATE INDEX idx_cc_company_02 ON cc_company (compid, status);
CREATE INDEX idx_cc_company_04 ON cc_company (compid, customerid);
CREATE INDEX idx_cc_company_05 ON cc_company (customerid, compid, status);
ALTER TABLE cc_company ADD PRIMARY KEY (compid);

CREATE TABLE sch_device_alert_message (
	sch_device_alert_msg_id numeric(38) NOT NULL,
	tracking_id varchar(32),
	device_id numeric(38) NOT NULL,
	contact_point_id numeric(38) NOT NULL,
	contact_point_type numeric(38) NOT NULL,
	contact_point_dest varchar(50) NOT NULL,
	alert_id numeric(38) NOT NULL,
	alert_type numeric(38) NOT NULL,
	alert_subject varchar(50) NOT NULL,
	alert_message_body varchar(3000) NOT NULL,
	one_time char(1) NOT NULL,
	user_directory_id numeric(38),
	user_id varchar(30),
	user_type numeric(38),
	user_bank_id varchar(20),
	user_group_id varchar(20),
	reschedule_date timestamp NOT NULL,
	processing varchar(30),
	lifetime numeric(38) NOT NULL,
	send_attempts numeric(38),
	priority char(1) NOT NULL DEFAULT 'F',
	created_date timestamp,
	updated_date timestamp
) ;
ALTER TABLE sch_device_alert_message ADD PRIMARY KEY (sch_device_alert_msg_id);

CREATE TABLE sch_scheduleinfo (
	scheduleid varchar(32) NOT NULL,
	fiid varchar(32) DEFAULT '1000',
	instructiontype varchar(32),
	instructionid varchar(32),
	status varchar(32),
	statusoption numeric(38),
	frequency numeric(38),
	startdate numeric(38),
	recordcreatedate varchar(32),
	instancecount numeric(38),
	nextinstancedate numeric(38),
	workinstancedate numeric(38),
	curinstancenum numeric(38),
	perpetual numeric(38),
	logid varchar(32)
) ;
CREATE INDEX ind_schin_xtdt ON sch_scheduleinfo (nextinstancedate);
CREATE INDEX ind_schedinfo_id ON sch_scheduleinfo (instructiontype, instructionid);
CREATE INDEX idx_schedinfo_01 ON sch_scheduleinfo (status, instructionid, instructiontype, fiid);
CREATE INDEX ind_schin_st ON sch_scheduleinfo (status);
CREATE INDEX ind_schedinfo_iid ON sch_scheduleinfo (instructionid);
CREATE INDEX ind_schedinfo_st ON sch_scheduleinfo (instructiontype, status);
ALTER TABLE sch_scheduleinfo ADD PRIMARY KEY (scheduleid);

CREATE TABLE mbk_sms_message (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL,
	msisdn varchar(100) NOT NULL,
	msgtext varchar(160) NOT NULL,
	msgdate varchar(20),
	msgtime varchar(20),
	msgid varchar(20),
	msgtype varchar(20),
	originatingaddress varchar(20),
	operatorid varchar(20),
	accountid varchar(20),
	operatorstandard varchar(10),
	mobilecountrycode varchar(10),
	mobilenetworkcode varchar(10),
	datacodingscheme varchar(10),
	msgclass varchar(10),
	taccode varchar(10),
	msgsessionid varchar(20),
	receivedservicenumber varchar(20)
) ;
CREATE INDEX ind_mbksmsm_1 ON mbk_sms_message (msisdn);
ALTER TABLE mbk_sms_message ADD PRIMARY KEY (systemid);

CREATE TABLE appr_items (
	itemid numeric(38) NOT NULL,
	itemtype numeric(38) NOT NULL,
	itemsubtype numeric(38) NOT NULL,
	ordinal numeric(38) NOT NULL,
	businessid numeric(38) NOT NULL,
	grouporuserid numeric(38) NOT NULL,
	usertype numeric(38) NOT NULL,
	isuser char(1) NOT NULL,
	submittinguserid numeric(38) NOT NULL,
	approvinguserid numeric(38),
	approvingusertype numeric(38),
	decision varchar(16),
	dtdecision timestamp,
	processingstate char(15) NOT NULL,
	executionstate char(15) NOT NULL,
	submittingusername varchar(107) NOT NULL,
	dtsubmission timestamp,
	dtdue timestamp,
	workflowid varchar(32) NOT NULL DEFAULT '0',
	workflowname varchar(100)
) ;
CREATE INDEX appr_itbusid ON appr_items (businessid);
ALTER TABLE appr_items ADD PRIMARY KEY (itemid,itemtype,ordinal,workflowid);

CREATE TABLE sc_dataversion (
	version numeric(38) NOT NULL
) ;

CREATE TABLE bs_extendabeanxml (
	extendabeanid numeric(38) NOT NULL,
	xmlsegmentnumber numeric(38) NOT NULL,
	xmlsegment varchar(2000)
) ;
ALTER TABLE bs_extendabeanxml ADD PRIMARY KEY (extendabeanid,xmlsegmentnumber);

CREATE TABLE mbk_retired_msisdn (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	subscribernumber varchar(20) NOT NULL,
	msisdn varchar(20) NOT NULL,
	carriercode varchar(12) NOT NULL,
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
CREATE UNIQUE INDEX ind_ret_msisdn_1 ON mbk_retired_msisdn (msisdn);
ALTER TABLE mbk_retired_msisdn ADD PRIMARY KEY (systemid);

CREATE TABLE bpw_acctidtosynctoken (
	acctid varchar(48) NOT NULL,
	accttype varchar(32) NOT NULL,
	token numeric(38) NOT NULL,
	synctype varchar(32) NOT NULL
) ;
ALTER TABLE bpw_acctidtosynctoken ADD PRIMARY KEY (acctid,accttype,synctype);

CREATE TABLE ach_fileentry (
	entryid varchar(32) NOT NULL,
	batchid varchar(32) NOT NULL,
	transactioncode varchar(32),
	recvdfiidentification varchar(32),
	dfiaccountnumber varchar(32),
	rcvcompindvname varchar(32),
	identificationnumber varchar(32),
	amount varchar(32),
	tracenumber varchar(32)
) ;
CREATE INDEX ind_ach_fileentry ON ach_fileentry (batchid, entryid);
ALTER TABLE ach_fileentry ADD PRIMARY KEY (entryid);

CREATE TABLE bpw_recwireaddenda (
	recsrvrtid varchar(32) NOT NULL,
	ordinal numeric(38) NOT NULL,
	addenda varchar(1024) DEFAULT 'NULL'
) ;
ALTER TABLE bpw_recwireaddenda ADD PRIMARY KEY (recsrvrtid,ordinal);

CREATE TABLE directory_data (
	directory_id numeric(38) NOT NULL,
	name_space varchar(100) NOT NULL,
	channel_type varchar(100) NOT NULL,
	employee_id numeric(38) NOT NULL,
	seq numeric(38) NOT NULL,
	data bytea
) ;
ALTER TABLE directory_data ADD PRIMARY KEY (directory_id,employee_id,seq,name_space,channel_type);

CREATE TABLE sch_locker (
	indexname varchar(32) NOT NULL,
	value numeric(38)
) ;
ALTER TABLE sch_locker ADD PRIMARY KEY (indexname);

CREATE TABLE bpw_fiinfo (
	fiid varchar(32) NOT NULL,
	firtn varchar(48) NOT NULL,
	fitype varchar(32),
	finame varchar(64) NOT NULL,
	nickname varchar(32),
	fistatus varchar(32) NOT NULL,
	fidesc varchar(64),
	figroup varchar(32),
	firank varchar(32),
	addrline1 varchar(35),
	addrline2 varchar(35),
	addrline3 varchar(35),
	city varchar(32),
	state varchar(32),
	postalcode varchar(10),
	country varchar(32),
	dayphone varchar(16),
	extension varchar(16),
	memo varchar(256),
	submitdate varchar(32),
	contactname varchar(32),
	activationdate varchar(32),
	amtlimit varchar(32),
	swiftrtn varchar(32),
	chipsrtn varchar(32),
	otherrtn varchar(48),
	logid varchar(32),
	currencycode varchar(3) NOT NULL,
	achtranswarehouse numeric(38) DEFAULT 0,
	achmaxnofuturedays numeric(38) DEFAULT 30,
	achsamedayeffdate char(1),
	etfdepositacct varchar(32),
	etfdepositaccttype varchar(32),
	etfmindepositamount numeric(38) DEFAULT 1,
	etfmaxdepositamount numeric(38) DEFAULT 99
) ;
CREATE INDEX ind_fitype ON bpw_fiinfo (fitype);
CREATE INDEX ind_fistatus ON bpw_fiinfo (fistatus);
CREATE INDEX ind_figroup ON bpw_fiinfo (figroup);
ALTER TABLE bpw_fiinfo ADD PRIMARY KEY (fiid);

CREATE TABLE mobile_device_alert_settings (
	device_id numeric(19) NOT NULL,
	alerts_enabled char(1) NOT NULL DEFAULT 'T',
	no_alert_startdate timestamp,
	no_alert_enddate timestamp,
	no_alert_starttime varchar(5),
	no_alert_endtime varchar(5),
	no_alert_timezone varchar(30),
	no_alert_weekend char(1) NOT NULL DEFAULT 'F',
	version numeric(38) NOT NULL DEFAULT 0,
	no_alert_daterange char(1) NOT NULL DEFAULT 'F',
	no_alert_timerange char(1) NOT NULL DEFAULT 'F',
	createddate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updateddate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;
ALTER TABLE mobile_device_alert_settings ADD PRIMARY KEY (device_id);

CREATE TABLE etf_company (
	compid varchar(32) NOT NULL,
	fiid varchar(32),
	customerid varchar(32) NOT NULL,
	compname varchar(32) NOT NULL,
	compachid varchar(64) NOT NULL,
	compdescription varchar(32),
	status varchar(32),
	submittedby varchar(32) NOT NULL,
	createdate varchar(32) NOT NULL,
	logid varchar(32) NOT NULL,
	category varchar(24) DEFAULT 'NULL'
) ;
CREATE INDEX idxbpwetf0049 ON etf_company (customerid desc, status desc);
CREATE INDEX idxbpwetf0048 ON etf_company (compachid desc, customerid desc);
CREATE INDEX idxbpwetf0009 ON etf_company (compid, logid, createdate, submittedby, compdescription, compachid, compname, customerid, status);
CREATE INDEX idxbpwetf0020 ON etf_company (compid desc, status desc);
CREATE INDEX idxbpwetf0008 ON etf_company (customerid, compid);
CREATE INDEX idxbpwetf0010 ON etf_company (customerid, logid, createdate, submittedby, compdescription, compachid, compname, compid, status);
CREATE INDEX idxbpwetf0015 ON etf_company (compid, compname, compachid, compdescription);
CREATE INDEX idxbpwetf0014 ON etf_company (status, customerid, compachid);
ALTER TABLE etf_company ADD PRIMARY KEY (compid);

CREATE TABLE message_item (
	item_id numeric(38) NOT NULL,
	message_id numeric(38) NOT NULL,
	body_id numeric(38),
	comment_id numeric(38),
	to_id numeric(38),
	to_type numeric(38),
	from_id numeric(38),
	from_type numeric(38),
	create_date timestamp,
	delete_date timestamp,
	read_date timestamp,
	message_type numeric(38)
) ;
CREATE INDEX message_item11 ON message_item (message_id, to_id, to_type, delete_date, message_type);
CREATE INDEX message_item3 ON message_item (message_id);
CREATE INDEX message_item4 ON message_item (message_id, to_type, from_id);
CREATE INDEX message_item7 ON message_item (message_id desc, message_type desc);
CREATE INDEX message_item9 ON message_item (message_id, to_id, message_type);
CREATE INDEX message_item5 ON message_item (item_id, message_id, to_id, to_type, from_id, from_type);
CREATE INDEX message_item15 ON message_item (to_id, to_type, from_type, message_id, item_id);
CREATE INDEX message_item_to ON message_item (to_id, to_type);
CREATE INDEX message_item6 ON message_item (item_id desc, message_id desc);
CREATE INDEX message_item_from ON message_item (from_id, from_type);
CREATE INDEX message_item14 ON message_item (message_type, from_id, to_type, message_id);
CREATE INDEX message_item12 ON message_item (to_type, from_id, message_type, message_id);
CREATE INDEX message_item13 ON message_item (from_type, to_type);
CREATE INDEX message_item8 ON message_item (message_id, from_type, message_type);
CREATE INDEX message_item10 ON message_item (item_id, message_id, to_id, to_type, from_type);
ALTER TABLE message_item ADD PRIMARY KEY (item_id);

CREATE TABLE bs_lockbox (
	lockboxid numeric(38) NOT NULL,
	accountid varchar(48) NOT NULL,
	lockboxnumber varchar(40) NOT NULL,
	extendabeanxmlid numeric NOT NULL,
	extra varchar(1024)
) ;
CREATE UNIQUE INDEX bs_lockbox1 ON bs_lockbox (accountid, lockboxnumber);
ALTER TABLE bs_lockbox ADD PRIMARY KEY (lockboxid);

CREATE TABLE dnf_last_processed_nm_info (
	cluster_name varchar(256) NOT NULL,
	notification_message_row_id numeric(20) NOT NULL,
	modified_by varchar(256) NOT NULL,
	modfied_date_time timestamp NOT NULL
) ;
ALTER TABLE dnf_last_processed_nm_info ADD PRIMARY KEY (cluster_name);

CREATE TABLE sch_job_audit_log (
	tracking_id varchar(32),
	job_name varchar(80) NOT NULL,
	job_group varchar(80) NOT NULL,
	description varchar(120),
	fired_time timestamp,
	next_fire_time timestamp,
	prev_fire_time timestamp,
	priority numeric(38),
	start_time timestamp,
	end_time timestamp,
	repeat_count numeric(38) NOT NULL,
	repeat_interval numeric(38) NOT NULL,
	times_triggered numeric(38) NOT NULL,
	instance_name varchar(80) NOT NULL,
	status varchar(20),
	time_zone varchar(80),
	cron_expression varchar(80)
) ;
CREATE INDEX sch_tidjnjgdscftetst ON sch_job_audit_log (tracking_id, job_name, job_group, description, fired_time, end_time, status);

CREATE TABLE sc_default (
	service_bureau_id varchar(20) NOT NULL,
	calendar_id numeric(38) NOT NULL
) ;

CREATE TABLE ach_recbatch (
	recbatchid varchar(32) NOT NULL,
	compid varchar(32),
	fileid varchar(32),
	compdata varchar(32),
	odfiachid varchar(32),
	batchtype varchar(32),
	batchcategory varchar(32),
	batchbalancetype varchar(32),
	effectivedate varchar(32),
	settlementdate varchar(32),
	compentrydesc varchar(32),
	descpdate varchar(32),
	batchnum numeric(38),
	srvclasscode varchar(6),
	stdclasscode varchar(6),
	countrycode varchar(4),
	origincurrcode varchar(6),
	destcurrcode varchar(6),
	totaldebit varchar(32),
	totalcredit varchar(32),
	msgauthcode varchar(32),
	recordcount numeric(38),
	submitdate varchar(32),
	batchstatus varchar(32),
	frgnexind varchar(6),
	frgnexrefind varchar(6),
	frgnexref varchar(32),
	origstatuscode varchar(6),
	compachid varchar(32),
	entryhash varchar(32),
	memo varchar(2048),
	frequency numeric(38),
	startdate numeric(38),
	enddate numeric(38),
	pmtscount numeric(38),
	logid varchar(32),
	submittedby varchar(32),
	offsetaccountid varchar(32),
	headercompname varchar(32),
	lastmodifier varchar(32),
	nonofftotalcredit varchar(32),
	nonofftotaldebit varchar(32),
	nonoffrecordcount numeric(38),
	numberofcredits numeric(38),
	numberofdebits numeric(38),
	numberofprenotes numeric(38),
	originatorid varchar(16),
	originatorname varchar(40),
	originatoraddress varchar(40),
	originatorcitystate varchar(40),
	originatorcountryzip varchar(40)
) ;
CREATE INDEX idx_ach_rec_bth_07 ON ach_recbatch (totaldebit);
CREATE INDEX idx_ach_rec_bth_16 ON ach_recbatch (recbatchid, batchstatus);
CREATE INDEX idx_ach_rec_bth_12 ON ach_recbatch (logid);
CREATE INDEX idx_ach_rec_bth_10 ON ach_recbatch (recordcount);
CREATE INDEX ind_rcbchoffacctid ON ach_recbatch (offsetaccountid);
CREATE INDEX idx_ach_rec_bth_13 ON ach_recbatch (compid, batchcategory, recbatchid, logid);
CREATE INDEX ind_rcbchstdate ON ach_recbatch (startdate);
CREATE INDEX idx_ach_rec_bth_06 ON ach_recbatch (batchcategory);
CREATE INDEX ind_rcbchcompid ON ach_recbatch (compid);
CREATE INDEX idx_ach_rec_bth_02 ON ach_recbatch (enddate);
CREATE INDEX idx_ach_rec_bth_11 ON ach_recbatch (entryhash);
CREATE INDEX idx_ach_rec_bth_01 ON ach_recbatch (batchstatus);
CREATE INDEX ind_rcbchodfiachid ON ach_recbatch (odfiachid);
CREATE INDEX idx_ach_rec_bth_08 ON ach_recbatch (totalcredit);
CREATE INDEX idx_ach_rec_bth_03 ON ach_recbatch (srvclasscode);
CREATE INDEX idx_ach_rec_bth_05 ON ach_recbatch (frequency);
CREATE INDEX idx_ach_rec_bth_14 ON ach_recbatch (compid, batchcategory, totalcredit, submittedby);
CREATE INDEX idx_ach_rec_bth_15 ON ach_recbatch (compid, batchtype, totaldebit, totalcredit, recordcount, batchcategory, batchstatus);
CREATE INDEX idx_ach_rec_bth_04 ON ach_recbatch (pmtscount);
CREATE INDEX idx_ach_rec_bth_09 ON ach_recbatch (msgauthcode);
CREATE INDEX ind_rcbchstendt ON ach_recbatch (startdate, enddate);
CREATE INDEX ind_rcbchstsubdate ON ach_recbatch (batchstatus, submitdate);
ALTER TABLE ach_recbatch ADD PRIMARY KEY (recbatchid);

CREATE TABLE mbk_actionable_alert (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	backenduserid varchar(30) NOT NULL,
	type varchar(30) NOT NULL,
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
ALTER TABLE mbk_actionable_alert ADD PRIMARY KEY (systemid);

CREATE TABLE queue_response (
	response_id numeric(38) NOT NULL,
	queue_id numeric(38) NOT NULL,
	response_name varchar(50),
	modified_date timestamp,
	updated_by numeric(38)
) ;
CREATE INDEX queue_response_idx1 ON queue_response (queue_id);
ALTER TABLE queue_response ADD PRIMARY KEY (response_id);

CREATE TABLE bpw_rectransfer (
	recsrvrtid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	fiid varchar(32),
	transfertype varchar(32) NOT NULL,
	transferdest varchar(32) NOT NULL,
	transfergroup varchar(32),
	transfercategory varchar(32),
	bankfromrtn varchar(48),
	accountfromnum varchar(48),
	accountfromtype varchar(32),
	accountfromid varchar(32),
	externalacctid varchar(32),
	amount varchar(32) NOT NULL,
	amountcurrency varchar(32),
	origamount varchar(32),
	origcurrency varchar(32),
	datecreate varchar(32) NOT NULL,
	status varchar(32) NOT NULL,
	lastprocessid varchar(32),
	memo varchar(256),
	templatescope varchar(32),
	templatenickname varchar(32),
	sourcetemplateid varchar(32),
	sourcerecsrvrtid varchar(32),
	submittedby varchar(32) NOT NULL,
	logid varchar(32) NOT NULL,
	startdate numeric(38) NOT NULL,
	enddate numeric(38) NOT NULL,
	frequency numeric(38) NOT NULL,
	instancecount numeric(38) NOT NULL,
	originatinguserid varchar(32),
	confirmnum varchar(64),
	confirmmsg varchar(255),
	typedetail varchar(32),
	fundsprocessing numeric(38) DEFAULT 1,
	lastchangedate varchar(32),
	processtype numeric(38) DEFAULT 0,
	processleadnumber numeric(38) DEFAULT 1,
	bankfromrtntype varchar(32),
	toamount varchar(32),
	toamountcurrency varchar(3),
	userassignedamount numeric(38) DEFAULT 0,
	category varchar(24),
	deliverby numeric(38) DEFAULT 0,
	acctfromcountrycode varchar(3),
	accttocountrycode varchar(3),
	pmtsubtype varchar(32) NOT NULL DEFAULT 'EXTTRANSFER'
) ;
CREATE INDEX idxbpwetf0024 ON bpw_rectransfer (recsrvrtid desc, status);
CREATE INDEX idxbpwetf0057 ON bpw_rectransfer (accountfromid);
CREATE INDEX idxbpwetf0028 ON bpw_rectransfer (externalacctid);
CREATE INDEX idxbpwetf0030 ON bpw_rectransfer (transfercategory, customerid, sourcetemplateid, transferdest, startdate);
CREATE INDEX idxbpwetf0016 ON bpw_rectransfer (recsrvrtid, transfertype, status);
CREATE INDEX idxbpwetf0025 ON bpw_rectransfer (logid, status);
CREATE INDEX idxbpwetf0046 ON bpw_rectransfer (customerid, status);
CREATE INDEX idxbpwetf0036 ON bpw_rectransfer (transfertype desc, status desc);
CREATE INDEX idxbpwetf0062 ON bpw_rectransfer (category);
CREATE INDEX idxbpwetf0022 ON bpw_rectransfer (recsrvrtid, status);
CREATE INDEX idxbpwetf0043 ON bpw_rectransfer (externalacctid, status);
CREATE INDEX idxbpwetf0038 ON bpw_rectransfer (status desc, transfertype desc);
CREATE INDEX idxbpwetf0029 ON bpw_rectransfer (customerid);
CREATE INDEX idxbpwetf0037 ON bpw_rectransfer (customerid desc, enddate desc);
CREATE INDEX idxbpwetf0033 ON bpw_rectransfer (transfertype desc, transferdest desc);
ALTER TABLE bpw_rectransfer ADD PRIMARY KEY (recsrvrtid);

CREATE TABLE bank_mail_message (
	directory_id numeric(38) NOT NULL,
	msg_id numeric(38) NOT NULL,
	mail_type numeric(38) NOT NULL,
	msg_seq numeric(38) NOT NULL,
	message varchar(255)
) ;
ALTER TABLE bank_mail_message ADD PRIMARY KEY (directory_id,msg_id,mail_type,msg_seq);

CREATE TABLE ach_payee (
	payeeid varchar(32) NOT NULL,
	payeetype varchar(32),
	payeegroup varchar(32),
	payeename varchar(50) NOT NULL,
	nickname varchar(50) NOT NULL,
	compid varchar(32) NOT NULL,
	bankrtn varchar(32) NOT NULL,
	bankacctid varchar(256) NOT NULL,
	bankaccttype varchar(32),
	payacct varchar(32) NOT NULL,
	cardnum varchar(32),
	cardexpiredate varchar(32),
	cardtranscode varchar(32),
	cardauthcode varchar(32),
	addr1 varchar(128),
	addr2 varchar(128),
	addr3 varchar(128),
	city varchar(32),
	state varchar(32),
	zipcode varchar(32),
	country varchar(32),
	phone varchar(32),
	extension varchar(5),
	status varchar(32),
	contactname varchar(40),
	memo varchar(256),
	submitdate varchar(32),
	activationdate varchar(32),
	prenotecredstatus varchar(32) NOT NULL,
	prenotedebstatus varchar(32) NOT NULL,
	prenotesubmitdate varchar(32),
	prenoteseccode varchar(32),
	prenotedemand varchar(32),
	managedpayee varchar(32) NOT NULL,
	logid varchar(32),
	submittedby varchar(32),
	securepayee numeric(38) DEFAULT 0,
	receivingdfiname varchar(40),
	receivingdfinumber varchar(40),
	receivingdfinumbertype varchar(16),
	receivingdfibranchcountry varchar(16),
	currencycode varchar(16),
	foreignexchangemethod varchar(16),
	destinationcountry varchar(16),
	samedayprenote varchar(1) DEFAULT 'N'
) ;
CREATE INDEX ind_achpayeestatus ON ach_payee (status);
CREATE INDEX idx_ach_payee_01 ON ach_payee (prenotesubmitdate);
CREATE INDEX idx_ach_payee_06 ON ach_payee (payeegroup, managedpayee, compid);
CREATE INDEX ind_nameactidfid ON ach_payee (payacct, bankacctid, bankrtn);
CREATE INDEX ind_achpayeetype ON ach_payee (payeetype);
CREATE INDEX idx_ach_payee_03 ON ach_payee (prenotedebstatus);
CREATE INDEX idx_ach_payee_02 ON ach_payee (activationdate);
CREATE INDEX ind_achpayeefi ON ach_payee (bankrtn);
CREATE INDEX ind_achpayeecompid ON ach_payee (compid);
CREATE INDEX idx_ach_payee_05 ON ach_payee (managedpayee);
CREATE INDEX ind_achpayeegroup ON ach_payee (payeegroup);
CREATE INDEX idx_ach_payee_04 ON ach_payee (prenotecredstatus);
ALTER TABLE ach_payee ADD PRIMARY KEY (payeeid);

CREATE TABLE bpw_customerbankinfo (
	consumerid varchar(32) NOT NULL,
	rtn varchar(9),
	acctnumber varchar(48) NOT NULL,
	accttype varchar(32),
	settlementrefnumber varchar(32),
	settlementacctflag varchar(32),
	status varchar(16) NOT NULL,
	submitdate varchar(32)
) ;
ALTER TABLE bpw_customerbankinfo ADD PRIMARY KEY (consumerid,acctnumber,status);

CREATE TABLE feature (
	feature_id numeric(38) NOT NULL,
	name varchar(255) NOT NULL,
	description varchar(255),
	feature_group_id numeric(38) NOT NULL,
	feature_sequence numeric(38) NOT NULL,
	status char(1),
	created_date timestamp
) ;
ALTER TABLE feature ADD PRIMARY KEY (feature_id);

CREATE TABLE mobile_device (
	device_id numeric(19) NOT NULL,
	directory_id numeric(38) NOT NULL,
	msisdn varchar(20) NOT NULL,
	device_name varchar(80) NOT NULL,
	carrier_code varchar(10) NOT NULL,
	country_code char(3) NOT NULL,
	subscriber_number varchar(20) NOT NULL,
	status numeric(38) NOT NULL DEFAULT 1,
	wappushmessage varchar(30),
	wappushenabled char(1) NOT NULL DEFAULT 'T',
	tcacceptdate timestamp,
	acceptlogintoken char(1) NOT NULL DEFAULT 'F',
	createddate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updateddate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	version numeric(38) NOT NULL DEFAULT 0
) ;
CREATE UNIQUE INDEX mobile_device_idx2 ON mobile_device (directory_id, msisdn);
CREATE UNIQUE INDEX mobile_device_idx ON mobile_device (msisdn);
ALTER TABLE mobile_device ADD PRIMARY KEY (device_id);

CREATE TABLE sch_temp_alert_message_cp (
	sch_tmp_alert_msg_cp_id numeric(38) NOT NULL,
	tracking_id varchar(32),
	contact_point_id numeric(38) NOT NULL,
	contact_point_name varchar(40),
	contact_point_type numeric(38) NOT NULL,
	contact_point_dest varchar(50),
	contact_point_order numeric(38) NOT NULL,
	alert_id numeric(38) NOT NULL,
	alert_status numeric(38) NOT NULL,
	alert_type numeric(38) NOT NULL,
	alert_subject varchar(50) NOT NULL,
	alert_message_body varchar(3000) NOT NULL,
	one_time char(1) NOT NULL,
	user_directory_id numeric(38),
	user_id varchar(30),
	user_type numeric(38),
	user_bank_id varchar(20),
	user_group_id varchar(20)
) ;
ALTER TABLE sch_temp_alert_message_cp ADD PRIMARY KEY (sch_tmp_alert_msg_cp_id);

CREATE TABLE entitlement_gmemb (
	member_type varchar(255) NOT NULL,
	member_subtype varchar(255) NOT NULL,
	member_id varchar(255) NOT NULL,
	ent_group_id numeric(38) NOT NULL
) ;
CREATE INDEX xperfentgroupmemb ON entitlement_gmemb (ent_group_id desc);
ALTER TABLE entitlement_gmemb ADD PRIMARY KEY (member_type,member_subtype,member_id);

CREATE TABLE accounttypesmapping (
	accounttypeint numeric(38) NOT NULL,
	accounttypestring varchar(80) NOT NULL
) ;
ALTER TABLE accounttypesmapping ADD PRIMARY KEY (accounttypeint);

CREATE TABLE bpw_payeeroute (
	payeeid varchar(32) NOT NULL,
	payeetype numeric(38) NOT NULL,
	extdpayeeid varchar(32) NOT NULL,
	routeid numeric(38) NOT NULL,
	bankid varchar(48),
	acctid varchar(48),
	accttype varchar(32),
	paymentcost double precision,
	extdinfo varchar(32),
	currencycode char(3),
	custacctrequired char(1) DEFAULT 'N'
) ;
ALTER TABLE bpw_payeeroute ADD PRIMARY KEY (payeeid,routeid);

CREATE TABLE accountgroup (
	id numeric(38) NOT NULL,
	name varchar(255) NOT NULL,
	acct_group_id varchar(255) NOT NULL,
	bus_directory_id numeric(38) NOT NULL
) ;
CREATE UNIQUE INDEX acc_grp_idx2 ON accountgroup (name, bus_directory_id);
CREATE INDEX acc_grp_idx ON accountgroup (bus_directory_id);
ALTER TABLE accountgroup ADD PRIMARY KEY (id);

CREATE TABLE etoe_log (
	id numeric NOT NULL,
	etoe_session_id numeric NOT NULL,
	thread_name varchar(500),
	log_level varchar(20),
	logger_name varchar(500),
	formatted_msg varchar(2000) NOT NULL,
	msg_type char(1) NOT NULL,
	log_time numeric,
	parent_id numeric NOT NULL,
	root_context_id varchar(200) NOT NULL,
	correlation_id varchar(200) NOT NULL,
	server_name varchar(100)
) ;
ALTER TABLE etoe_log ADD PRIMARY KEY (id);

CREATE TABLE mb_rtenumeration (
	mdeid numeric(22) NOT NULL,
	mdlid numeric(22) NOT NULL,
	mdename char(128) NOT NULL,
	datatype numeric(22) NOT NULL,
	dataformat numeric(22) NOT NULL,
	codefile varchar(255)
) ;

CREATE TABLE rpps_pmtentrymap (
	srvrtid varchar(32) NOT NULL,
	submitdate varchar(32),
	batchnum numeric(38),
	tracenum numeric(38),
	payaccount varchar(32),
	fileid numeric(38),
	consumername varchar(32)
) ;
CREATE INDEX ind_rppspmtbtnum ON rpps_pmtentrymap (batchnum, tracenum, submitdate);
CREATE INDEX ind_rppspmttnum ON rpps_pmtentrymap (tracenum, submitdate);
ALTER TABLE rpps_pmtentrymap ADD PRIMARY KEY (srvrtid);

CREATE TABLE dc_extendabeanxml (
	dcextendabeanid numeric(38) NOT NULL,
	xmlsegmentnumber numeric(38) NOT NULL,
	xmlsegment varchar(2000)
) ;
ALTER TABLE dc_extendabeanxml ADD PRIMARY KEY (dcextendabeanid,xmlsegmentnumber);

CREATE TABLE trans_type_desc (
	id numeric(38) NOT NULL,
	description varchar(100) NOT NULL,
	last_updated timestamp NOT NULL,
	locale varchar(5)
) ;
ALTER TABLE trans_type_desc ADD PRIMARY KEY (id);

CREATE TABLE balance_summary (
	stmt_id varchar(40) NOT NULL,
	heading_text varchar(40),
	prev_balance_date timestamp NOT NULL,
	prev_bal_amt varchar(40) NOT NULL,
	new_bal_date timestamp NOT NULL,
	new_bal_amt varchar(40) NOT NULL,
	no_of_deposits numeric(38) NOT NULL,
	deposits_total varchar(40) NOT NULL,
	no_of_withdrawals numeric(38) NOT NULL,
	withdrawals_total varchar(40) NOT NULL
) ;
ALTER TABLE balance_summary ADD PRIMARY KEY (stmt_id);

CREATE TABLE req_appr_props (
	operation_name varchar(255) NOT NULL,
	prop_name varchar(255) NOT NULL,
	prop_value varchar(255) NOT NULL
) ;
CREATE INDEX xperfreqapprprops ON req_appr_props (operation_name desc);
ALTER TABLE req_appr_props ADD PRIMARY KEY (operation_name,prop_name,prop_value);

CREATE TABLE reg_user_category_budget (
	budget_id numeric(38) NOT NULL,
	reg_user_cat_id numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL,
	budget_amount decimal(31,3) NOT NULL,
	currency_code char(3) NOT NULL,
	period_type varchar(16) NOT NULL,
	period_value numeric(38) NOT NULL,
	updated_date timestamp NOT NULL,
	start_date timestamp NOT NULL
) ;
ALTER TABLE reg_user_category_budget ADD PRIMARY KEY (budget_id);

CREATE TABLE dc_fixdepinstrment (
	dcaccountid numeric(38) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	instnumber varchar(40) NOT NULL,
	instbankname varchar(80) NOT NULL,
	currency char(3),
	principalamount decimal(31,3),
	accruedinterest decimal(31,3),
	interestatmaturity decimal(31,3),
	proceedsatmaturity decimal(31,3),
	valuedate timestamp,
	maturitydate timestamp,
	restrictedamount decimal(31,3),
	numberofrollovers numeric(38),
	daysinterm numeric(38),
	interestrate double precision,
	settleinstrtype numeric(38),
	targetacctnumber varchar(48),
	targetroutnumber varchar(100),
	stmtmail1street1 varchar(40),
	stmtmail1street2 varchar(40),
	stmtmail1city varchar(20),
	stmtmail1state varchar(2),
	stmtmail1country varchar(30),
	stmtmail1zip varchar(11),
	stmtmail2street1 varchar(40),
	stmtmail2street2 varchar(40),
	stmtmail2city varchar(20),
	stmtmail2state varchar(2),
	stmtmail2country varchar(30),
	stmtmail2zip varchar(11),
	stmtmail3street1 varchar(40),
	stmtmail3street2 varchar(40),
	stmtmail3city varchar(20),
	stmtmail3state varchar(2),
	stmtmail3country varchar(30),
	stmtmail3zip varchar(11),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_fixdepinstr_idx1 ON dc_fixdepinstrment (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX dc_fixdepinstr_idx2 ON dc_fixdepinstrment (dataclassification, dcaccountid);
CREATE INDEX dc_fixdepinstr_idx3 ON dc_fixdepinstrment (dcaccountid, datadate, dataclassification);
ALTER TABLE dc_fixdepinstrment ADD PRIMARY KEY (dcaccountid,datadate,instnumber,instbankname,dataclassification);

CREATE TABLE entitlement_group (
	ent_group_id numeric(38) NOT NULL,
	name varchar(255) NOT NULL,
	ent_group_type varchar(255) NOT NULL,
	parent_id numeric(38) NOT NULL,
	svc_bureau_id numeric(38) NOT NULL,
	modified_date timestamp
) ;
CREATE INDEX xperfentgroup3 ON entitlement_group (parent_id desc);
CREATE INDEX xperfentgroup1 ON entitlement_group (ent_group_id desc, parent_id desc);
CREATE INDEX xperfentgroup2 ON entitlement_group (name, ent_group_type, svc_bureau_id, modified_date, parent_id, ent_group_id);
ALTER TABLE entitlement_group ADD PRIMARY KEY (ent_group_id);

CREATE TABLE oboprofile_jobtype (
	id numeric(38) NOT NULL,
	obo_profile_id numeric(38) NOT NULL,
	job_type_group_id numeric(38) NOT NULL
) ;
ALTER TABLE oboprofile_jobtype ADD PRIMARY KEY (id);

CREATE TABLE bank_tc (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	bankid varchar(30) NOT NULL,
	enabled char(1) DEFAULT 'T',
	resetdate timestamp,
	resetnotify char(1) DEFAULT 'T',
	acceptancewindow numeric(38) DEFAULT 30,
	alertdisable char(1) DEFAULT 'T',
	alertdisablenotify char(1) DEFAULT 'T',
	processstatus numeric(38),
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
CREATE UNIQUE INDEX mbk_bank_tc_indx1 ON bank_tc (bankid);
ALTER TABLE bank_tc ADD PRIMARY KEY (systemid);

CREATE TABLE global_msg_filters (
	global_msg_id numeric(38) NOT NULL,
	filter_type numeric(38) NOT NULL,
	filter_value varchar(1024),
	filter_desc varchar(1024),
	filter_object varchar(1024)
) ;
CREATE INDEX gbl_msg_filt_idx ON global_msg_filters (global_msg_id);

CREATE TABLE dc_transactions (
	dcaccountid numeric(38) NOT NULL,
	dctransactionindex numeric NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	transid varchar(40),
	transtypeid numeric(38),
	transcategoryid numeric(38),
	transtrackingid varchar(40),
	transsubtypeid numeric(38),
	description varchar(1024),
	memo varchar(255),
	referencenumber varchar(40),
	amount decimal(31,3),
	runningbalance decimal(31,3),
	immedavailamount decimal(31,3),
	onedayavailamount decimal(31,3),
	moreonedayavailam decimal(31,3),
	valuedatetime timestamp,
	bankrefnum varchar(40),
	custrefnum varchar(40),
	postingdate timestamp,
	duedate timestamp,
	fixeddeprate double precision,
	payeepayor varchar(40),
	payornum varchar(40),
	origuser varchar(40),
	ponum varchar(40),
	instnumber varchar(40),
	instbankname varchar(80),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	transdate timestamp,
	dataclassification char(1) NOT NULL,
	datasourceloadtime timestamp NOT NULL
) ;
CREATE INDEX dc_transactions_idx2 ON dc_transactions (dataclassification, dcaccountid);
CREATE INDEX dc_transactions_idx3 ON dc_transactions (dcaccountid, datadate, dataclassification);
CREATE INDEX dc_transactions_idx1 ON dc_transactions (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
ALTER TABLE dc_transactions ADD PRIMARY KEY (dcaccountid,dctransactionindex,dataclassification);

CREATE TABLE bpw_srvrtrans (
	srvrtid varchar(32) NOT NULL,
	customerid varchar(32),
	bankid varchar(48),
	acctid varchar(48) NOT NULL,
	accttype varchar(32),
	response text,
	synctype varchar(32) NOT NULL,
	token numeric(38),
	submitdate varchar(32) NOT NULL,
	status varchar(32),
	dtprocessed varchar(32),
	memo varchar(256),
	transfor varchar(32),
	checknum varchar(32)
) ;
CREATE INDEX ind_srtrn_ciaiat ON bpw_srvrtrans (customerid, acctid, accttype);
CREATE INDEX ind_srtrn_aiatsync ON bpw_srvrtrans (acctid, accttype, synctype);
ALTER TABLE bpw_srvrtrans ADD PRIMARY KEY (srvrtid);

CREATE TABLE mbk_restricted_msisdn (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	subscribernumber varchar(20) NOT NULL,
	msisdn varchar(20) NOT NULL,
	carriercode varchar(12),
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
CREATE UNIQUE INDEX ind_rest_msisdn_1 ON mbk_restricted_msisdn (msisdn);
ALTER TABLE mbk_restricted_msisdn ADD PRIMARY KEY (systemid);

CREATE TABLE bpw_wirebatch (
	batchid varchar(32) NOT NULL,
	extid varchar(32),
	fiid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	userid varchar(32),
	batchname varchar(128),
	batchtype varchar(32),
	batchcategory varchar(32),
	agentid varchar(32),
	agentname varchar(128),
	agenttype varchar(32),
	totalamount varchar(32),
	wirecount varchar(32),
	submittedby varchar(32),
	submitdate varchar(32),
	batchstatus varchar(32),
	extinfo varchar(255),
	memo varchar(256),
	logid varchar(32),
	batchdest varchar(32),
	confirmnum2 varchar(64),
	datetopost varchar(32),
	confirmnum varchar(64),
	confirmmsg varchar(255),
	datedue varchar(32),
	payinstruct varchar(32),
	recwirebatchid varchar(32),
	dateposted varchar(32),
	mathrule varchar(32),
	contractnumber varchar(32),
	exchangerate varchar(32),
	amtcurrency varchar(32),
	destcurrency varchar(32),
	origamount varchar(32),
	origcurrency varchar(32),
	settlementdate varchar(32),
	totalcreditamount varchar(32),
	totaldebitamount varchar(32),
	version numeric(38) DEFAULT 0
) ;
CREATE INDEX ind_wbiuserid ON bpw_wirebatch (userid);
CREATE INDEX idxbpwwire0095 ON bpw_wirebatch (batchid, totalamount, totaldebitamount, totalcreditamount, wirecount);
CREATE INDEX ind_wbistatus ON bpw_wirebatch (batchstatus);
CREATE INDEX idxbpwwire0007 ON bpw_wirebatch (userid, customerid, batchid);
CREATE INDEX idxbpwwire0004 ON bpw_wirebatch (userid, batchid);
CREATE INDEX ind_wbicustid ON bpw_wirebatch (customerid);
CREATE INDEX idxbpwwire0010 ON bpw_wirebatch (userid, customerid, batchid, batchstatus);
CREATE INDEX idxbpwwire0012 ON bpw_wirebatch (customerid, fiid, batchid);
CREATE INDEX idxbpwwire0003 ON bpw_wirebatch (customerid, batchid);
CREATE INDEX idxbpwwire0009 ON bpw_wirebatch (userid, batchid, batchstatus);
CREATE INDEX idxbpwwire0008 ON bpw_wirebatch (customerid, batchid, batchstatus);
CREATE INDEX idxbpwwire0005 ON bpw_wirebatch (batchid, batchstatus);
CREATE INDEX idxbpwwire0112 ON bpw_wirebatch (batchid desc, batchstatus desc);
ALTER TABLE bpw_wirebatch ADD PRIMARY KEY (batchid);

CREATE TABLE ach_company (
	customerid varchar(32) NOT NULL,
	compid varchar(32) NOT NULL,
	achfiid varchar(32) NOT NULL,
	compname varchar(32) NOT NULL,
	nickname varchar(20),
	compachid varchar(32) NOT NULL,
	bankacctid varchar(20),
	bankid varchar(32),
	bankaccttype varchar(16),
	compstatus varchar(32),
	compdesc varchar(64),
	comptype varchar(32),
	compgroup varchar(32),
	comprank varchar(32),
	addrline1 varchar(35),
	addrline2 varchar(35),
	addrline3 varchar(35),
	city varchar(32),
	state varchar(32),
	postalcode varchar(10),
	country varchar(32),
	dayphone varchar(16),
	extension varchar(16),
	contactname varchar(32),
	memo varchar(256),
	submitdate varchar(32),
	activationdate varchar(32),
	logid varchar(32),
	submittedby varchar(32),
	batchtype varchar(32)
) ;
CREATE INDEX ind_compachfiid ON ach_company (achfiid);
CREATE INDEX ind_compstatus ON ach_company (compstatus);
CREATE INDEX idx_ach_company_02 ON ach_company (compname);
CREATE INDEX ind_compcustid ON ach_company (customerid);
CREATE INDEX idx_ach_company_04 ON ach_company (compid, compachid, compname);
CREATE INDEX ind_comptype ON ach_company (comptype);
CREATE INDEX idx_ach_company_03 ON ach_company (compachid);
CREATE INDEX idx_ach_company_05 ON ach_company (customerid, compid, compname, compstatus);
CREATE INDEX idx_ach_company_06 ON ach_company (compid, customerid, compname, achfiid);
CREATE INDEX idx_ach_company_07 ON ach_company (compid, compstatus);
CREATE INDEX ind_compgroup ON ach_company (compgroup);
ALTER TABLE ach_company ADD PRIMARY KEY (compid);

CREATE TABLE account_alerts (
	alert_id numeric(38) NOT NULL,
	routing_number varchar(100),
	account_id varchar(100),
	account_type numeric(38)
) ;
CREATE INDEX acctalerts_idx1 ON account_alerts (account_type, account_id, routing_number);
CREATE INDEX acctalerts_idx2 ON account_alerts (routing_number, account_id desc);
ALTER TABLE account_alerts ADD PRIMARY KEY (alert_id);

CREATE TABLE affil_cutoff_defn (
	affiliate_bank_id numeric(38) NOT NULL,
	cut_off_type numeric(38) NOT NULL,
	create_empty_file char(1) NOT NULL,
	process_on_holidays char(1) NOT NULL
) ;
ALTER TABLE affil_cutoff_defn ADD PRIMARY KEY (affiliate_bank_id,cut_off_type);

CREATE TABLE perf_logging_sessions (
	id numeric(38) NOT NULL,
	perf_log_session_id varchar(256) NOT NULL,
	directory_id numeric(38),
	channel_id varchar(20),
	start_time timestamp NOT NULL,
	end_time timestamp
) ;
ALTER TABLE perf_logging_sessions ADD PRIMARY KEY (id);

CREATE TABLE form (
	form_id numeric(38) NOT NULL,
	form_name varchar(30) NOT NULL,
	process_name varchar(30),
	context_entityset_name varchar(30)
) ;
CREATE UNIQUE INDEX form_idx1 ON form (form_name);
ALTER TABLE form ADD PRIMARY KEY (form_id);

CREATE TABLE br_bankreportdata (
	reportid numeric(38) NOT NULL,
	linenum numeric(38) NOT NULL,
	linedata varchar(1024) NOT NULL,
	rtgnum varchar(100),
	accountid varchar(40),
	forcepagebreak char(1) NOT NULL DEFAULT 'N'
) ;
CREATE INDEX br_data_idx1 ON br_bankreportdata (reportid, rtgnum, accountid);
ALTER TABLE br_bankreportdata ADD PRIMARY KEY (reportid,linenum);

CREATE TABLE dc_dsbtransactions (
	dcaccountid numeric(38) NOT NULL,
	dctransactionindex numeric NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	transid numeric(38),
	checkdate timestamp,
	payee varchar(40),
	amount decimal(31,3),
	checknumber varchar(40),
	checkrefnum varchar(40),
	memo varchar(1024),
	issuedby varchar(80),
	approvedby varchar(80),
	immedfundsneeded decimal(31,3),
	onedayfundsneeded decimal(31,3),
	twodayfundsneeded decimal(31,3),
	valuedatetime timestamp,
	bankrefnum varchar(40),
	custrefnum varchar(40),
	presentment varchar(40),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_dsbtrans_idx1 ON dc_dsbtransactions (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX dc_dsbtrans_idx2 ON dc_dsbtransactions (dataclassification, dcaccountid);
CREATE INDEX dc_dsbtrans_idx3 ON dc_dsbtransactions (dcaccountid, datadate, dataclassification);
ALTER TABLE dc_dsbtransactions ADD PRIMARY KEY (dcaccountid,dctransactionindex,dataclassification);

CREATE TABLE accountgroup_acct (
	id numeric(38) NOT NULL,
	account_id varchar(48) NOT NULL,
	routing_num varchar(100) NOT NULL
) ;
CREATE INDEX acc_grp_acct_idx ON accountgroup_acct (id);
CREATE INDEX acc_grp_acct_idx2 ON accountgroup_acct (account_id, routing_num);

CREATE TABLE audit_log (
	tran_id varchar(20) NOT NULL,
	user_id varchar(20) NOT NULL,
	ip_address varchar(35),
	channel varchar(50),
	agent_id varchar(20),
	agent_type varchar(20),
	description varchar(1000),
	log_date timestamp NOT NULL,
	tran_type numeric(38),
	business_id numeric(38),
	amount decimal(31,3),
	currency_code varchar(3),
	srvr_tid varchar(64),
	user_id_int numeric(38),
	agent_id_int numeric(38),
	state varchar(32),
	module numeric(38) NOT NULL,
	from_acct_id varchar(40),
	from_acct_rtgnum varchar(100),
	to_acct_id varchar(40),
	to_acct_rtgnum varchar(100),
	primary_user_id numeric(38),
	to_amount decimal(31,3),
	to_amount_currency varchar(3),
	user_assigned_amount numeric(38),
	user_first_name varchar(35),
	user_last_name varchar(35),
	agent_first_name varchar(35),
	agent_last_name varchar(35),
	primary_user_first_name varchar(35),
	primary_user_last_name varchar(35)
) ;
CREATE INDEX audit_log_idx4 ON audit_log (srvr_tid);
CREATE INDEX audit_log_idx19 ON audit_log (primary_user_id, log_date desc);
CREATE INDEX audit_log_idx2 ON audit_log (tran_id);
CREATE INDEX audit_log_amt_idx ON audit_log (amount);
CREATE INDEX audit_log_idx15 ON audit_log (tran_type, log_date, user_id_int, business_id);
CREATE INDEX audit_log_idx9 ON audit_log (tran_id, user_id, log_date, tran_type, business_id, amount, currency_code, srvr_tid, user_id_int, state, from_acct_id, to_acct_id);
CREATE INDEX audit_log_st_idx ON audit_log (state);
CREATE INDEX audit_log_idx11 ON audit_log (tran_id, user_id, log_date, business_id, srvr_tid, state);
CREATE INDEX audit_log_idx10 ON audit_log (tran_id, user_id, agent_id, log_date, tran_type, business_id, amount, user_id_int, state, from_acct_id, to_acct_id);
CREATE INDEX audit_log_idx17 ON audit_log (business_id, user_id, log_date, user_id_int);
CREATE INDEX audit_log_idx13 ON audit_log (business_id, agent_id, log_date);
CREATE INDEX audit_log_idx5 ON audit_log (user_id_int);
CREATE INDEX audit_log_idx16 ON audit_log (business_id, module, log_date);
CREATE INDEX audit_log_idx18 ON audit_log (primary_user_id);
CREATE INDEX audit_log_idx8 ON audit_log (tran_id, srvr_tid desc);
CREATE INDEX audit_log_biz_idx ON audit_log (business_id);
CREATE INDEX audit_log_idx6 ON audit_log (agent_id_int);
CREATE INDEX audit_log_idx14 ON audit_log (agent_id, log_date, business_id, user_id);
CREATE INDEX audit_log_date_idx ON audit_log (log_date);
CREATE INDEX audit_log_acct_idx ON audit_log (from_acct_id);
CREATE INDEX audit_log_idx3 ON audit_log (user_id);
CREATE INDEX audit_log_idx ON audit_log (business_id, user_id);
CREATE INDEX audit_log_idx12 ON audit_log (log_date, amount, state);
CREATE INDEX audit_log_idx7 ON audit_log (tran_id, tran_type, business_id, amount, srvr_tid);

CREATE TABLE stmt_agreement (
	user_id varchar(40) NOT NULL,
	accept varchar(1) NOT NULL
) ;
ALTER TABLE stmt_agreement ADD PRIMARY KEY (user_id);

CREATE TABLE bpw_recsrvrtidtosrvrtid (
	recsrvrtid varchar(32) NOT NULL,
	srvrtid varchar(32) NOT NULL,
	indextype numeric(38) NOT NULL
) ;
CREATE INDEX ind_rsrtsr_recid ON bpw_recsrvrtidtosrvrtid (recsrvrtid);
ALTER TABLE bpw_recsrvrtidtosrvrtid ADD PRIMARY KEY (indextype,srvrtid);

CREATE TABLE ach_compoffsetacct (
	acctid varchar(32) NOT NULL,
	compid varchar(32) NOT NULL
) ;
CREATE INDEX idx_ach_offset_02 ON ach_compoffsetacct (compid desc, acctid);
CREATE INDEX idx_ach_offset_03 ON ach_compoffsetacct (acctid desc, compid desc);
CREATE INDEX idx_ach_offset_04 ON ach_compoffsetacct (compid desc, acctid desc);
CREATE INDEX idx_ach_offset_01 ON ach_compoffsetacct (acctid desc);

CREATE TABLE bpw_wiretemphist (
	sessionid varchar(32) NOT NULL,
	cursorid numeric(38) NOT NULL,
	submitdate varchar(32),
	transactionid varchar(32) NOT NULL,
	transactiontype varchar(32) NOT NULL,
	datetopost numeric(38) NOT NULL,
	beneficiaryname varchar(128),
	accountnum varchar(35),
	destination varchar(32),
	status varchar(32) NOT NULL,
	amount decimal(28,4) NOT NULL,
	wirename varchar(64),
	accountnickname varchar(40),
	instancenum numeric(38) DEFAULT 0
) ;
CREATE INDEX ind_wth_bene ON bpw_wiretemphist (beneficiaryname, cursorid);
CREATE INDEX ind_wth_stat ON bpw_wiretemphist (status, cursorid);
CREATE INDEX ind_wth_acct ON bpw_wiretemphist (accountnum, cursorid);
CREATE INDEX ind_wth_wtyp ON bpw_wiretemphist (destination, cursorid);
CREATE INDEX ind_wth_date ON bpw_wiretemphist (submitdate);
CREATE INDEX ind_wth_seid ON bpw_wiretemphist (sessionid);
CREATE INDEX ind_wth_ttyp ON bpw_wiretemphist (transactiontype, cursorid);
CREATE INDEX ind_wth_name ON bpw_wiretemphist (wirename, cursorid);
ALTER TABLE bpw_wiretemphist ADD PRIMARY KEY (sessionid,cursorid);

CREATE TABLE mb_rtcustomfieldprops (
	customid numeric(22) NOT NULL,
	mdlid numeric(22) NOT NULL,
	parsejavaclass varchar(255) NOT NULL,
	parsejavamethod varchar(255) NOT NULL,
	buildjavaclass varchar(255) NOT NULL,
	buildjavamethod varchar(255) NOT NULL,
	properties numeric(22) NOT NULL
) ;

CREATE TABLE etoe_btx_detail (
	root_context_id varchar(200) NOT NULL,
	file_location varchar(1000) NOT NULL,
	created_date timestamp NOT NULL,
	updated_date timestamp NOT NULL
) ;
ALTER TABLE etoe_btx_detail ADD PRIMARY KEY (root_context_id);

CREATE TABLE da_category (
	da_category_id varchar(32) NOT NULL,
	da_item_id varchar(32) NOT NULL,
	category_type varchar(32) NOT NULL,
	object_type varchar(255),
	object_id varchar(255),
	parent_id varchar(32),
	user_action varchar(25) NOT NULL,
	child_sequenceno varchar(25),
	status varchar(25) NOT NULL,
	category_sub_type varchar(255)
) ;
CREATE INDEX da_c_daitemid ON da_category (da_item_id);
CREATE INDEX da_c_parent ON da_category (parent_id);
ALTER TABLE da_category ADD PRIMARY KEY (da_category_id);

CREATE TABLE br_bankreports (
	reportid numeric(38) NOT NULL,
	generatedtime timestamp NOT NULL,
	importtime timestamp NOT NULL,
	reporttype varchar(30) NOT NULL,
	directoryid numeric(38) NOT NULL
) ;
CREATE INDEX br_idx1 ON br_bankreports (directoryid);
ALTER TABLE br_bankreports ADD PRIMARY KEY (reportid);

CREATE TABLE bpw_adj_instr_info (
	recid varchar(32) NOT NULL,
	id varchar(32) NOT NULL,
	instancenum numeric(38) NOT NULL
) ;
CREATE UNIQUE INDEX uk_recid_instancenum ON bpw_adj_instr_info (recid, instancenum);
ALTER TABLE bpw_adj_instr_info ADD PRIMARY KEY (recid,id);
ALTER TABLE bpw_adj_instr_info ADD UNIQUE (recid,instancenum);

CREATE TABLE affiliate_assign (
	employee_id numeric(38) NOT NULL,
	affiliate_bank_id numeric(38) NOT NULL
) ;
CREATE INDEX aff_assign_idx1 ON affiliate_assign (employee_id);
ALTER TABLE affiliate_assign ADD PRIMARY KEY (employee_id,affiliate_bank_id);

CREATE TABLE mb_rtdefnchildren (
	fieldid numeric(22) NOT NULL,
	mdlid numeric(22) NOT NULL,
	childid numeric(22) NOT NULL,
	ordinal numeric(22) NOT NULL
) ;

CREATE TABLE dc_extacctsummary (
	dcaccountid numeric(38) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	summarytype numeric(38) NOT NULL,
	amount decimal(31,3),
	immedavailamount decimal(31,3),
	onedayavailamount decimal(31,3),
	moreonedayavailam decimal(31,3),
	valuedatetime timestamp,
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL,
	itemscount numeric(38)
) ;
CREATE INDEX dc_extacctsummary_idx2 ON dc_extacctsummary (dataclassification, dcaccountid);
CREATE INDEX dc_extacctsummary_idx1 ON dc_extacctsummary (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX dc_extacctsummary_idx3 ON dc_extacctsummary (dcaccountid, datadate, dataclassification);
ALTER TABLE dc_extacctsummary ADD PRIMARY KEY (dcaccountid,datadate,summarytype,dataclassification);

CREATE TABLE limit_type_props (
	operation_name varchar(255) NOT NULL,
	prop_name varchar(255) NOT NULL,
	prop_value varchar(255) NOT NULL
) ;
CREATE INDEX xperflimitprops ON limit_type_props (operation_name desc);
ALTER TABLE limit_type_props ADD PRIMARY KEY (operation_name,prop_name,prop_value);

CREATE TABLE bpw_reqactivitylog (
	logid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	reqtype numeric(38) NOT NULL,
	logdate varchar(32) NOT NULL,
	content text
) ;
CREATE INDEX ind_rqactlg_cirtld ON bpw_reqactivitylog (customerid, reqtype, logdate);
CREATE INDEX ind_rqactlg_lgdt ON bpw_reqactivitylog (logdate);
ALTER TABLE bpw_reqactivitylog ADD PRIMARY KEY (logid);

CREATE TABLE bpw_recwireinfo2 (
	recsrvrtid varchar(32) NOT NULL,
	byorderofname varchar(36),
	byorderofaddr1 varchar(36),
	byorderofaddr2 varchar(36),
	byorderofaddr3 varchar(36),
	byorderofacct varchar(36),
	addendatype varchar(16),
	version numeric(38) DEFAULT 0
) ;
ALTER TABLE bpw_recwireinfo2 ADD PRIMARY KEY (recsrvrtid);

CREATE TABLE rptreport (
	reportid numeric(38) NOT NULL,
	reportname varchar(40) NOT NULL,
	description varchar(255),
	userid numeric(38),
	usertype numeric(38)
) ;
CREATE INDEX rptreportidx ON rptreport (userid, usertype);
ALTER TABLE rptreport ADD PRIMARY KEY (reportid);

CREATE TABLE dc_lbtransactions (
	dcaccountid numeric(38) NOT NULL,
	dctransactionindex numeric NOT NULL,
	lockboxnumber varchar(40) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	transid numeric(38),
	transtypeid numeric(38),
	description varchar(1024),
	amount decimal(31,3),
	numrejectedchecks numeric(38),
	rejectedamount decimal(31,3),
	immedavailamount decimal(31,3),
	onedayavailamount decimal(31,3),
	moreonedayavailam decimal(31,3),
	valuedatetime timestamp,
	bankrefnum varchar(40),
	custrefnum varchar(40),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_lbtransactions_idx3 ON dc_lbtransactions (dcaccountid, datadate, dataclassification);
CREATE INDEX dc_lbtransactions_idx1 ON dc_lbtransactions (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX dc_lbtransactions_idx2 ON dc_lbtransactions (dataclassification, dcaccountid);
ALTER TABLE dc_lbtransactions ADD PRIMARY KEY (dcaccountid,dctransactionindex,dataclassification);

CREATE TABLE running_total (
	run_total_id numeric(38) NOT NULL,
	limit_id numeric(38),
	member_type varchar(255),
	member_subtype varchar(255),
	member_id varchar(255),
	ent_group_id numeric(38),
	amount varchar(30),
	start_date timestamp,
	channel_id varchar(20)
) ;
CREATE INDEX xperfruntotal2 ON running_total (limit_id, ent_group_id, start_date);
CREATE INDEX xperfruntotal ON running_total (limit_id, member_type, member_subtype, member_id, start_date);
ALTER TABLE running_total ADD PRIMARY KEY (run_total_id);

CREATE TABLE rpps_pmtfilemap (
	fileid numeric(38) NOT NULL,
	transdate varchar(32),
	transtime varchar(32),
	fileidmodifier varchar(32),
	totalentrycount numeric(38),
	totaldebit varchar(32),
	totalcredit varchar(32),
	filename varchar(32),
	confirmed varchar(1),
	completed varchar(1),
	fiid varchar(32)
) ;
CREATE INDEX ind_rppspftttt ON rpps_pmtfilemap (fiid, transdate, totalentrycount, totaldebit, totalcredit);
ALTER TABLE rpps_pmtfilemap ADD PRIMARY KEY (fileid);

CREATE TABLE form_columns (
	form_id numeric(38) NOT NULL,
	field_id numeric(38) NOT NULL,
	display_name varchar(100),
	field_name varchar(100),
	field_type varchar(20),
	min_value varchar(18),
	max_value varchar(18),
	required varchar(18),
	field_number varchar(20),
	error_string varchar(255),
	depend_field varchar(40),
	depend_value varchar(150),
	exact_value varchar(136),
	control_type varchar(15),
	default_value varchar(255)
) ;
ALTER TABLE form_columns ADD PRIMARY KEY (form_id,field_id);

CREATE TABLE contact_info (
	contact_id numeric(38) NOT NULL,
	street varchar(40),
	street2 varchar(40),
	street3 varchar(40),
	city varchar(40),
	state varchar(20),
	postal_code varchar(20),
	country varchar(30),
	phone varchar(32),
	phone2 varchar(32),
	fax_number varchar(32),
	email_address varchar(255),
	preferred_lang varchar(5) NOT NULL
) ;
ALTER TABLE contact_info ADD PRIMARY KEY (contact_id);

CREATE TABLE mbk_sms_action (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL,
	userdevice varchar(25) NOT NULL,
	status numeric(38),
	request numeric(20) NOT NULL,
	responsetext varchar(1024)
) ;
CREATE UNIQUE INDEX ind_mbksmsa_2 ON mbk_sms_action (request);
CREATE INDEX ind_mbksmsa_1 ON mbk_sms_action (status);
ALTER TABLE mbk_sms_action ADD PRIMARY KEY (systemid);

CREATE TABLE cache_store (
	id numeric(20) NOT NULL,
	cache_name varchar(255) NOT NULL,
	cache_key varchar(255) NOT NULL,
	class_name varchar(255) NOT NULL,
	cache_object bytea NOT NULL,
	created_date_time timestamp NOT NULL,
	last_updated timestamp NOT NULL
) ;
CREATE UNIQUE INDEX cache_store_unique_idx ON cache_store (cache_name, cache_key);
ALTER TABLE cache_store ADD PRIMARY KEY (id);

CREATE TABLE transaction_groups (
	directory_id numeric(38) NOT NULL,
	trans_group_name varchar(255) NOT NULL,
	seq_num numeric(38) NOT NULL,
	typecodes varchar(1024) NOT NULL
) ;
ALTER TABLE transaction_groups ADD PRIMARY KEY (directory_id,trans_group_name,seq_num);

CREATE TABLE bpw_smartsearch (
	payeeid varchar(32) NOT NULL,
	nospacename varchar(50),
	nopuctname varchar(50),
	nopunctspacename varchar(50),
	language char(5) NOT NULL DEFAULT 'en_US',
	payeename varchar(50) NOT NULL DEFAULT '_NULL_'
) ;
CREATE INDEX ind_nospacepayee ON bpw_smartsearch (nospacename);
CREATE INDEX ind_nopuctpayee ON bpw_smartsearch (nopuctname);
CREATE INDEX ind_language ON bpw_smartsearch (language);
CREATE INDEX ind_payeename ON bpw_smartsearch (payeename);
CREATE INDEX ind_nopunctspace ON bpw_smartsearch (nopunctspacename);
ALTER TABLE bpw_smartsearch ADD PRIMARY KEY (payeeid,language);

CREATE TABLE sa_dataretentionentry (
	customer_id varchar(32) NOT NULL,
	data_type varchar(50) NOT NULL,
	num_days numeric(38) NOT NULL
) ;
ALTER TABLE sa_dataretentionentry ADD PRIMARY KEY (customer_id,data_type);

CREATE TABLE cc_companyacct (
	acctid varchar(32) NOT NULL,
	compid varchar(32) NOT NULL,
	transactiontype varchar(32) NOT NULL
) ;
CREATE INDEX idx_cc_compacct_01 ON cc_companyacct (compid);
CREATE INDEX idx_cc_compacct_05 ON cc_companyacct (acctid, transactiontype);
CREATE INDEX idx_cc_compacct_03 ON cc_companyacct (acctid, compid);
CREATE INDEX idx_cc_compacct_02 ON cc_companyacct (acctid);
CREATE INDEX idx_cc_compacct_04 ON cc_companyacct (compid, transactiontype);

CREATE TABLE dc_loanacctsummary (
	dcaccountid numeric(38) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	availablecredit decimal(31,3),
	amountdue decimal(31,3),
	interestrate double precision,
	duedate timestamp,
	maturitydate timestamp,
	accruedinterest decimal(31,3),
	openingbalance decimal(31,3),
	collateraldesc varchar(1024),
	principlepastdue decimal(31,3),
	interestpastdue decimal(31,3),
	latefees decimal(31,3),
	nextprincipleamt decimal(31,3),
	nextinterestamt decimal(31,3),
	valuedate timestamp,
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_loanacctsummary_idx1 ON dc_loanacctsummary (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
CREATE INDEX dc_loanacctsummary_idx2 ON dc_loanacctsummary (dataclassification, dcaccountid);
ALTER TABLE dc_loanacctsummary ADD PRIMARY KEY (dcaccountid,datadate,dataclassification);

CREATE TABLE sch_temp_alert_message (
	sch_tmp_alert_msg_id numeric(38) NOT NULL,
	tracking_id varchar(32),
	device_id numeric(38) NOT NULL,
	contact_point_name varchar(40),
	contact_point_type numeric(38) NOT NULL,
	contact_point_dest varchar(50),
	contact_point_order numeric(38) NOT NULL,
	alert_id numeric(38) NOT NULL,
	alert_status numeric(38) NOT NULL,
	alert_type numeric(38) NOT NULL,
	alert_subject varchar(50) NOT NULL,
	alert_message_body varchar(3000) NOT NULL,
	one_time char(1) NOT NULL,
	user_directory_id numeric(38),
	user_id varchar(30),
	user_type numeric(38),
	user_bank_id varchar(20),
	user_group_id varchar(20)
) ;
ALTER TABLE sch_temp_alert_message ADD PRIMARY KEY (sch_tmp_alert_msg_id);

CREATE TABLE application_details (
	application_details_id numeric(38) NOT NULL,
	bank_id varchar(20) NOT NULL,
	app_id numeric(38) NOT NULL,
	form_key varchar(25),
	form_value varchar(255),
	form_display_name varchar(50)
) ;
ALTER TABLE application_details ADD PRIMARY KEY (application_details_id);

CREATE TABLE entitlement_gprops (
	ent_group_id numeric(38) NOT NULL,
	prop_name varchar(255) NOT NULL,
	prop_value varchar(255) NOT NULL
) ;

CREATE TABLE global_message (
	global_msg_id numeric(38) NOT NULL,
	to_group_id numeric(38) NOT NULL,
	to_group_name varchar(100) NOT NULL,
	from_id numeric(38) NOT NULL,
	from_name varchar(100) NOT NULL,
	subject varchar(100) NOT NULL,
	global_body_id numeric(38) NOT NULL,
	create_date timestamp NOT NULL,
	status numeric(38) NOT NULL,
	approval_id numeric(38),
	approved_date timestamp,
	bank_id varchar(20) NOT NULL,
	record_type numeric(38) NOT NULL,
	msg_type numeric(38) NOT NULL,
	to_group_type numeric(38) NOT NULL,
	color numeric(38) NOT NULL,
	priority numeric(38) NOT NULL,
	display_from_date timestamp,
	display_to_date timestamp,
	template_name varchar(255),
	send_now char(1) NOT NULL,
	affiliate_bank_id numeric(38) NOT NULL,
	product_id numeric(38),
	filter_strategy numeric(38),
	msg_condition varchar(1024)
) ;
CREATE INDEX global_msg_idx2 ON global_message (record_type, msg_type, display_from_date, display_to_date);
CREATE INDEX global_msg_idx3 ON global_message (record_type, template_name);
CREATE INDEX global_msg_idx1 ON global_message (record_type, msg_type);
ALTER TABLE global_message ADD PRIMARY KEY (global_msg_id);

CREATE TABLE rptsearchcriteria (
	reportid numeric(38) NOT NULL,
	criterianame varchar(40) NOT NULL,
	criteriavalue varchar(255),
	ordinal numeric(38) NOT NULL
) ;
CREATE INDEX rptsearchidx ON rptsearchcriteria (reportid);

CREATE TABLE bpw_customerproductaccess (
	consumerid varchar(32) NOT NULL,
	producttype varchar(32),
	accesstype varchar(32),
	statustype varchar(32) NOT NULL,
	submitdate varchar(32)
) ;
ALTER TABLE bpw_customerproductaccess ADD PRIMARY KEY (consumerid,statustype);

CREATE TABLE ach_batches (
	multibatchid varchar(32) NOT NULL,
	fiid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	batchname varchar(32),
	batchscope varchar(32),
	batchstatus varchar(32),
	logid varchar(32),
	submittedby varchar(32),
	submitdate varchar(32),
	totalcredit varchar(32),
	totaldebit varchar(32),
	batchcount numeric(38)
) ;
ALTER TABLE ach_batches ADD PRIMARY KEY (multibatchid);

CREATE TABLE mb_rttransformationlibrary (
	trlid numeric(22) NOT NULL,
	trlname char(128) NOT NULL,
	codefile varchar(255) NOT NULL
) ;

CREATE TABLE fi_fielddefn (
	fieldid numeric NOT NULL,
	mappingid numeric NOT NULL,
	name varchar(255) NOT NULL,
	fieldnumber numeric,
	fieldstart numeric,
	fieldend numeric,
	defaultvalue varchar(255)
) ;
CREATE INDEX fi_fielddefnfk ON fi_fielddefn (mappingid);
ALTER TABLE fi_fielddefn ADD PRIMARY KEY (fieldid);

CREATE TABLE bpw_processwindow (
	windowid varchar(32) NOT NULL,
	fiid varchar(32) NOT NULL,
	customerid varchar(32),
	starttime varchar(32),
	closetime varchar(32),
	pmttype varchar(32),
	pmtsubtype varchar(32),
	datecreate varchar(32) NOT NULL,
	description varchar(255),
	submittedby varchar(32) DEFAULT 'NULL'
) ;
ALTER TABLE bpw_processwindow ADD PRIMARY KEY (windowid);

CREATE TABLE istmt_accts (
	bank_id varchar(40) NOT NULL,
	account_number varchar(40) NOT NULL,
	account_type numeric(38) NOT NULL,
	user_id varchar(40) NOT NULL
) ;
CREATE INDEX idx_ia_uid ON istmt_accts (user_id);
ALTER TABLE istmt_accts ADD PRIMARY KEY (bank_id,account_number,user_id);

CREATE TABLE system_settings (
	dup_account_nums numeric(38) NOT NULL
) ;

CREATE TABLE mbk_secure_usersession (
	systemid numeric(20) NOT NULL,
	version numeric(38) NOT NULL,
	msisdn varchar(30),
	userid varchar(128) NOT NULL,
	backenduserid varchar(30),
	usertype varchar(30),
	channelname varchar(255) NOT NULL,
	callbackclassname varchar(255),
	transactioncmd varchar(255),
	collationid varchar(255),
	backendsessionid varchar(255),
	userbankid varchar(48),
	usergroupid varchar(48),
	failedattempts numeric(38),
	status numeric(38) NOT NULL,
	datausage numeric(20),
	createddate timestamp NOT NULL,
	updateddate timestamp NOT NULL
) ;
CREATE INDEX ind_mbksus_1 ON mbk_secure_usersession (status, updateddate desc);
ALTER TABLE mbk_secure_usersession ADD PRIMARY KEY (systemid);

CREATE TABLE sc_calendardefn (
	calendar_id numeric(38) NOT NULL,
	service_bureau_id varchar(20) NOT NULL,
	calendar_name varchar(255) NOT NULL,
	business_days char(7) NOT NULL,
	actions char(7) NOT NULL,
	ignore_for_transfers char(1) NOT NULL
) ;
ALTER TABLE sc_calendardefn ADD PRIMARY KEY (calendar_id);

CREATE TABLE ach_fiinfo (
	achfiid varchar(32) NOT NULL,
	odfiachid varchar(32) NOT NULL,
	fiid varchar(32) NOT NULL,
	odfiname varchar(32),
	rdfiachid varchar(32) NOT NULL,
	rdfiname varchar(32) NOT NULL,
	memo varchar(256),
	submitdate varchar(32),
	activationdate varchar(32),
	fistatus varchar(32) NOT NULL,
	logid varchar(32),
	cashcondfi char(1),
	gofiachid varchar(32) NOT NULL
) ;
CREATE INDEX ind_achfiodfiachid ON ach_fiinfo (odfiachid);
CREATE INDEX ind_achfirtnnamest ON ach_fiinfo (odfiname, fistatus);
CREATE INDEX ind_achfifiidst ON ach_fiinfo (fiid, fistatus);
CREATE INDEX ind_achfifiid ON ach_fiinfo (fiid);
CREATE INDEX ind_achfifistatus ON ach_fiinfo (fistatus);
ALTER TABLE ach_fiinfo ADD PRIMARY KEY (achfiid);

CREATE TABLE bpw_uidlock (
	customerid varchar(32) NOT NULL
) ;
ALTER TABLE bpw_uidlock ADD PRIMARY KEY (customerid);

CREATE TABLE entitlement_admin (
	ent_group_id numeric(38),
	member_type varchar(255),
	member_subtype varchar(255),
	member_id varchar(255),
	group_to_admin numeric NOT NULL,
	permission_type varchar(10) NOT NULL
) ;
CREATE INDEX xperfentadmin2 ON entitlement_admin (ent_group_id);
CREATE INDEX xperfentadmin1 ON entitlement_admin (group_to_admin, ent_group_id, permission_type);

CREATE TABLE bpw_temphist (
	histid varchar(32) NOT NULL,
	cursorid varchar(32) NOT NULL,
	recordextid varchar(32) NOT NULL,
	recordtype varchar(32) NOT NULL,
	duedate numeric(38) NOT NULL,
	amount varchar(32),
	submitdate varchar(32)
) ;
CREATE INDEX ind_this_date ON bpw_temphist (submitdate);
ALTER TABLE bpw_temphist ADD PRIMARY KEY (histid,cursorid);

CREATE TABLE business (
	business_id numeric(38) NOT NULL,
	affiliate_bank_id numeric(38) NOT NULL,
	directory_id numeric(38) NOT NULL,
	contact_id numeric(38) NOT NULL,
	bank_id varchar(20),
	business_name varchar(35) NOT NULL,
	processor_pin varchar(255),
	tax_id varchar(40),
	business_cif varchar(40),
	personal_cif varchar(40),
	personal_banker numeric(38),
	account_rep numeric(38),
	approved_by numeric(38),
	approval_group numeric(38),
	batch_type numeric(38),
	low_business_name varchar(35) NOT NULL,
	dflt_ppay_decision varchar(20) NOT NULL,
	prim_contact_perms numeric(38) NOT NULL,
	sec_contact_perms numeric(38) NOT NULL,
	locationidplace numeric(38) NOT NULL DEFAULT 0,
	dual_approval varchar(25) DEFAULT '0',
	ent_sys_type varchar(8),
	per_acct_approval numeric(38) NOT NULL DEFAULT 0,
	multi_approval_workflow numeric(38) NOT NULL DEFAULT 0,
	dflt_rppay_decision varchar(20) NOT NULL DEFAULT 'None'
) ;
CREATE INDEX business_idx7 ON business (directory_id, business_name);
CREATE INDEX business_idx8 ON business (business_id, personal_banker);
CREATE INDEX business_idx3 ON business (low_business_name);
CREATE INDEX business_idx ON business (directory_id desc, bank_id desc);
CREATE INDEX business_idx5 ON business (directory_id, bank_id, business_name);
CREATE INDEX business_idx12 ON business (affiliate_bank_id, directory_id);
CREATE INDEX business_idx2 ON business (business_name);
CREATE INDEX business_idx4 ON business (directory_id, low_business_name);
CREATE INDEX business_idx9 ON business (business_id, low_business_name);
CREATE INDEX business_idx6 ON business (business_id, business_name, personal_banker);
ALTER TABLE business ADD PRIMARY KEY (business_id);

CREATE TABLE message_purge_temp (
	create_date timestamp,
	message_id numeric(38) NOT NULL,
	body_id numeric(38) NOT NULL,
	comment_id numeric(38) NOT NULL
) ;

CREATE TABLE fx_currency (
	currencycode char(3) NOT NULL,
	description varchar(255) NOT NULL
) ;
ALTER TABLE fx_currency ADD PRIMARY KEY (currencycode);

CREATE TABLE dc_accounthistory (
	dcaccountid numeric(38) NOT NULL,
	datadate timestamp NOT NULL,
	datasource numeric(38) NOT NULL,
	openingledger decimal(31,3),
	avgopenledgermtd decimal(31,3),
	avgopenledgerytd decimal(31,3),
	closingledger decimal(31,3),
	avgcloseledgermtd decimal(31,3),
	avgmonth decimal(31,3),
	aggbalanceadjust decimal(31,3),
	avcloseledgytdprvm decimal(31,3),
	avgcloseledgerytd decimal(31,3),
	currentledger decimal(31,3),
	achnetposition decimal(31,3),
	opavaisamdayachdtc decimal(31,3),
	openingavailable decimal(31,3),
	avgopenavailmtd decimal(31,3),
	avgopenavailytd decimal(31,3),
	avgavailprevmonth decimal(31,3),
	disbopenavailbal decimal(31,3),
	closingavail decimal(31,3),
	avgcloseavailmtd decimal(31,3),
	avcloseavailprem decimal(31,3),
	avcloseavailytdprm decimal(31,3),
	avcloseavailytd decimal(31,3),
	loanbalance decimal(31,3),
	totalinvestposn decimal(31,3),
	curravailcrssupr decimal(31,3),
	currentavail decimal(31,3),
	avgcurravailmtd decimal(31,3),
	avgcurravailytd decimal(31,3),
	totalfloat decimal(31,3),
	targetbalance decimal(31,3),
	adjbalance decimal(31,3),
	adjbalancemtd decimal(31,3),
	adjbalanceytd decimal(31,3),
	zerodayfloat decimal(31,3),
	onedayfloat decimal(31,3),
	floatadj decimal(31,3),
	twomoredayfloat decimal(31,3),
	threemoredayfloat decimal(31,3),
	adjtobalances decimal(31,3),
	avgadjtobalmtd decimal(31,3),
	avgadjtobalytd decimal(31,3),
	fourdayfloat decimal(31,3),
	fivedayfloat decimal(31,3),
	sixdayfloat decimal(31,3),
	avgonedayfloatmtd decimal(31,3),
	avgonedayfloatytd decimal(31,3),
	avgtwodayfloatmtd decimal(31,3),
	avgtwodayfloatytd decimal(31,3),
	transfercalc decimal(31,3),
	targbaldeficiency decimal(31,3),
	totalfundingreq decimal(31,3),
	totalcheckspaid decimal(31,3),
	grandtotcredmindeb decimal(31,3),
	numcheckspaid numeric(38),
	numcreditlessdebit numeric(38),
	extendabeanxmlid numeric NOT NULL,
	baifileidentifier varchar(255),
	extra varchar(1024),
	datasourcefilename varchar(255),
	datasourcefiledate timestamp,
	dataclassification char(1) NOT NULL
) ;
CREATE INDEX dc_accounthistory_idx2 ON dc_accounthistory (dataclassification, dcaccountid);
CREATE INDEX dc_accounthistory_idx1 ON dc_accounthistory (datasource, datasourcefilename, datasourcefiledate, baifileidentifier);
ALTER TABLE dc_accounthistory ADD PRIMARY KEY (dcaccountid,datadate,dataclassification);

CREATE TABLE bpw_custpayeeroute (
	custpayeerouteid varchar(32) NOT NULL,
	customerid varchar(32) NOT NULL,
	payeelistid numeric(38) NOT NULL,
	routeid numeric(38) NOT NULL,
	status varchar(32) NOT NULL,
	submitdate varchar(32)
) ;
CREATE INDEX ind_cproute_cpr ON bpw_custpayeeroute (customerid, payeelistid, routeid);
CREATE INDEX ind_cproute_r ON bpw_custpayeeroute (routeid);
CREATE INDEX ind_cproute_cp ON bpw_custpayeeroute (customerid, payeelistid);
CREATE INDEX ind_cproute_st ON bpw_custpayeeroute (status);
ALTER TABLE bpw_custpayeeroute ADD PRIMARY KEY (custpayeerouteid);

CREATE TABLE pending_images (
	image_handle varchar(50) NOT NULL,
	user_id varchar(32) NOT NULL,
	account_id varchar(48) NOT NULL,
	check_number varchar(32),
	routing_transit_number varchar(48),
	trans_code varchar(32),
	dr_cr varchar(32),
	sequence_number varchar(32),
	capture_sequence varchar(32),
	deposit_trace_id varchar(32),
	entry_number varchar(32),
	tracer_number varchar(32),
	package_id varchar(50),
	bank_id varchar(32),
	status varchar(15),
	estimate varchar(32),
	amount varchar(32),
	fee varchar(32),
	charge_account varchar(32),
	dep_id varchar(32),
	fee_flag varchar(5),
	fee_processed_flag varchar(5),
	front_view_handle varchar(32),
	back_view_handle varchar(32),
	storage_tier varchar(5),
	compression_type varchar(5),
	return_code varchar(32),
	reason_code varchar(32),
	error_code varchar(32),
	date_placed numeric(38),
	posting_date numeric(38),
	requested_date numeric(38)
) ;
ALTER TABLE pending_images ADD PRIMARY KEY (image_handle,user_id,account_id);

CREATE TABLE rptoptions (
	reportid numeric(38) NOT NULL,
	optionname varchar(40) NOT NULL,
	optionvalue varchar(255)
) ;
CREATE INDEX rptoptionsidx ON rptoptions (reportid);

CREATE TABLE dc_transtypedesc (
	trans_type_id numeric(38) NOT NULL,
	trans_type_desc varchar(255) NOT NULL,
	locale varchar(5)
) ;

CREATE TABLE da_items (
	da_item_id varchar(32) NOT NULL,
	business_id numeric(38) NOT NULL,
	item_type varchar(25) NOT NULL,
	item_id varchar(32),
	user_action varchar(25) NOT NULL,
	created_by varchar(32) NOT NULL,
	creator_type varchar(25) NOT NULL,
	modified_by varchar(32),
	modifier_type varchar(25),
	created_date timestamp NOT NULL,
	modified_date timestamp,
	status varchar(25) NOT NULL,
	reject_reason varchar(255),
	submitted_by varchar(32),
	submitter_type varchar(25),
	submitted_date timestamp,
	application char(2) NOT NULL,
	agent_id varchar(32)
) ;
CREATE INDEX da_i_itemid ON da_items (item_id);
CREATE INDEX da_i_itemtype ON da_items (item_type);
CREATE INDEX da_i_bid ON da_items (business_id);
ALTER TABLE da_items ADD PRIMARY KEY (da_item_id);

CREATE TABLE ocb_config (
	config_id numeric(38) NOT NULL,
	config_name varchar(255),
	module_name varchar(255),
	property_name varchar(64) NOT NULL,
	property_value varchar(1024),
	default_value varchar(255),
	supported_values varchar(255),
	description varchar(1024),
	last_updated timestamp NOT NULL,
	read_only numeric(38) NOT NULL DEFAULT 0,
	restart_required numeric(38) NOT NULL DEFAULT 0,
	validation_required numeric(38) NOT NULL DEFAULT 0,
	encryption_required numeric(38) NOT NULL DEFAULT 0,
	data_type varchar(64),
	hidden_field numeric(38) NOT NULL DEFAULT 0
) ;
CREATE UNIQUE INDEX ocb_config_unique_idx ON ocb_config (module_name, property_name);
ALTER TABLE ocb_config ADD PRIMARY KEY (config_id);

CREATE TABLE global_msg_body_i18n (
	global_body_id numeric(38) NOT NULL,
	language char(5) NOT NULL,
	seq numeric(38) NOT NULL,
	text varchar(1020) NOT NULL
) ;
CREATE INDEX gbl_body_i18n ON global_msg_body_i18n (global_body_id, language);
ALTER TABLE global_msg_body_i18n ADD PRIMARY KEY (global_body_id,language,seq);

CREATE TABLE fx_rate (
	objecttype numeric(38) NOT NULL,
	objectid varchar(128) NOT NULL,
	basecurrencycode char(3) NOT NULL,
	targetcurrencycode char(3) NOT NULL,
	buyprice varchar(32),
	sellprice varchar(32),
	asofdate timestamp NOT NULL
) ;
CREATE INDEX fx_basecurid ON fx_rate (basecurrencycode);
ALTER TABLE fx_rate ADD PRIMARY KEY (objecttype,objectid,basecurrencycode,targetcurrencycode,asofdate);

CREATE TABLE bpw_trans (
	tid varchar(36) NOT NULL,
	customerid varchar(32),
	bankid varchar(48),
	acctid varchar(48),
	accttype varchar(32),
	token numeric(38),
	response text,
	synctype varchar(32) NOT NULL,
	status varchar(16),
	srvrtid varchar(32) NOT NULL,
	submitdate varchar(32) NOT NULL
) ;
CREATE INDEX ind_bpwtrn_idtype ON bpw_trans (acctid, synctype);
ALTER TABLE bpw_trans ADD PRIMARY KEY (tid);

CREATE TABLE global_message_i18n (
	global_msg_id numeric(38) NOT NULL,
	language char(5) NOT NULL,
	to_group_name varchar(400) NOT NULL,
	from_name varchar(400) NOT NULL,
	subject varchar(400) NOT NULL,
	product_id numeric(38),
	msg_condition varchar(1024)
) ;
ALTER TABLE global_message_i18n ADD PRIMARY KEY (global_msg_id,language);

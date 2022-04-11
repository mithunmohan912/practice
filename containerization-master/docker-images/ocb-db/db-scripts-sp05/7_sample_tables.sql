CREATE TABLE credit_card_app (
	bank_id varchar(20) NOT NULL,
	app_id numeric(38) NOT NULL,
	middle_name varchar(25),
	user_name varchar(35),
	address1 varchar(90),
	address2 varchar(90),
	city varchar(80),
	state varchar(10),
	zipcode varchar(20),
	home_phone varchar(12),
	dob_month varchar(25),
	dob_day varchar(5),
	dob_year varchar(5),
	residence varchar(50),
	len_of_residence varchar(20),
	monthly_rent varchar(20),
	checking_type varchar(150),
	employer_name varchar(50),
	employer_address varchar(90),
	employer_phone_num varchar(20)
) ;


CREATE TABLE mortgage_app_1 (
	bank_id varchar(20) NOT NULL,
	app_id numeric(38) NOT NULL,
	middle_name varchar(20),
	user_name varchar(35),
	address1 varchar(90),
	address2 varchar(90),
	city varchar(80),
	state varchar(5),
	zipcode varchar(12),
	home_phone varchar(15),
	dob_month varchar(25),
	dob_day varchar(10),
	dob_year varchar(4),
	residence varchar(50),
	len_of_residence varchar(25),
	monthly_rent varchar(25),
	checking_type varchar(40),
	employer_name varchar(70),
	employer_address varchar(90),
	employer_phone_num varchar(15)
) ;

CREATE TABLE mortgage_app_2 (
	bank_id varchar(20) NOT NULL,
	app_id numeric(38) NOT NULL,
	middle_name varchar(20),
	user_name varchar(35),
	address1 varchar(90),
	address2 varchar(90),
	city varchar(80),
	state varchar(5),
	zipcode varchar(12),
	home_phone varchar(15),
	dob_month varchar(25),
	dob_day varchar(10),
	dob_year varchar(4),
	residence varchar(50),
	len_of_residence varchar(25),
	monthly_rent varchar(25),
	checking_type varchar(40),
	employer_name varchar(70),
	employer_address varchar(90),
	employer_phone_num varchar(15)
) ;

CREATE TABLE personal_enrl_app (
	bank_id varchar(20) NOT NULL,
	app_id numeric(38) NOT NULL,
	middle_name varchar(25),
	user_name varchar(35),
	address1 varchar(90),
	address2 varchar(90),
	city varchar(80),
	state varchar(5),
	zipcode varchar(12),
	home_phone varchar(15),
	dob_month varchar(25),
	dob_day varchar(5),
	dob_year varchar(5),
	mothers_maiden varchar(45),
	income varchar(25),
	residence varchar(80),
	intended_use varchar(25),
	gender varchar(10),
	marital_status varchar(20)
) ;

CREATE TABLE loan_application_context (
	app_id numeric(38) NOT NULL,
	bank_id varchar(20) NOT NULL,
	user_steps_nav_info varchar(2048),
	address_changed char(1),
	address_ref_id varchar(25),
	address_status varchar(25),
	address_update_date timestamp,
	kyc_ref_id varchar(25),
	kyc_status varchar(20),
	kyc_update_date timestamp,
	scoring_limit_changed char(1),
	scoring_ref_id varchar(25),
	scoring_status varchar(20),
	scoring_update_date timestamp,
	loan_ref_id varchar(25),
	loan_status varchar(20),
	loan_update_date timestamp,
	created_date timestamp,
	modified_date timestamp
) ;
ALTER TABLE loan_application_context ADD PRIMARY KEY (app_id);

CREATE TABLE user_enrollment_context (
	app_id numeric(38) NOT NULL,
	bank_id varchar(20) NOT NULL,
	user_steps_nav_info varchar(2048),
	first_name varchar(35),
	middle_name varchar(35),
	last_name varchar(35),
	phone varchar(25),
	email varchar(255),
	gender varchar(5),
	date_of_birth timestamp,
	terms_accepted char(1),
	document_ref_id varchar(25),
	user_type char(1),
	backend_customer_id varchar(20),
	directory_id varchar(10)
) ;
ALTER TABLE user_enrollment_context ADD PRIMARY KEY (app_id);

CREATE TABLE cheque_book_request (
	app_id numeric(38) NOT NULL,
	bank_id varchar(20) NOT NULL,
	account_number varchar(255),
	delivery_mode varchar(25),
	number_of_pages varchar(5),
	remark varchar(255)
) ;
ALTER TABLE cheque_book_request ADD PRIMARY KEY (app_id);

CREATE TABLE reissue_card_request (
	app_id numeric(38) NOT NULL,
	bank_id varchar(20) NOT NULL,
	account_number varchar(255),
	delivery_mode varchar(25),
	card_type varchar(25),
	card_number varchar(255),
	reason_for_reissue varchar(255),
	remark varchar(255)
) ;
ALTER TABLE reissue_card_request ADD PRIMARY KEY (app_id);

CREATE TABLE credit_limit_increase_request (
	app_id numeric(38) NOT NULL,
	bank_id varchar(20) NOT NULL,
	account_number varchar(255),
	card_number varchar(255),
	new_limit varchar(16),
	reason_for_increase varchar(255),
	occupation varchar(25),
	company_name varchar(50),
	designation varchar(50),
	annual_income varchar(16),
	remark varchar(255)
) ;
ALTER TABLE credit_limit_increase_request ADD PRIMARY KEY (app_id);

CREATE TABLE payment_collection_context (
	app_id numeric(38) NOT NULL,
	bank_id varchar(20) NOT NULL,
	customer_id varchar(10),
	user_id varchar(255),
	sender_name varchar(255),
	srvrtid varchar(32),
	payee_name varchar(50),
	payee_id varchar(32),
	payee_mode varchar(30),
	payee_bank_id varchar(48),
	account_id varchar(50),
	account_type varchar(32),
	amount varchar(32),
	currency_code varchar(3),
	due_date timestamp,
	payment_status varchar(50),
	memo varchar(64),
	current_user_step varchar(255)
) ;
ALTER TABLE payment_collection_context ADD PRIMARY KEY (app_id);




/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V9.0.0                     */
/* Target DBMS:           PostgreSQL 9                                    */
/* Project file:          officelagoon.dez                                */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2015-11-23 15:00                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add sequences                                                          */
/* ---------------------------------------------------------------------- */

CREATE SEQUENCE ol_main.user_id_seq INCREMENT 1 MINVALUE 1001 MAXVALUE 100000 START 1001 CACHE 40;

CREATE SEQUENCE ol_main.space_id_seq INCREMENT 1 MINVALUE 1001 MAXVALUE 100000 START 1001 CACHE 40;

CREATE SEQUENCE ol_main.type_id_seq INCREMENT 1 MINVALUE 11 MAXVALUE 100 START 11 CACHE 4;

CREATE SEQUENCE ol_main.user_type_id_seq INCREMENT 1 MINVALUE 11 MAXVALUE 100 START 11 CACHE 4;

CREATE SEQUENCE ol_main.search_id_seq INCREMENT 1 MINVALUE 101 MAXVALUE 100000 START 101 CACHE 40;

CREATE SEQUENCE ol_main.attribute_id INCREMENT 1 MINVALUE 1 MAXVALUE 1001 START 1 CACHE 4;

CREATE SEQUENCE ol_main.action_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 1001 START 1 CACHE 4;

CREATE SEQUENCE ol_main.user_action_id INCREMENT 1 MINVALUE 101 MAXVALUE 100000 START 101 CACHE 10;

CREATE SEQUENCE ol_main.payment_id_seq INCREMENT 1 MINVALUE 101 MAXVALUE 1000000 START 101 CACHE 40;

CREATE SEQUENCE ol_main.blog_id_seq INCREMENT 1 MINVALUE 101 MAXVALUE 100000 START 101 CACHE 10;

/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.space_category"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.space_category (
    category_id NUMERIC  NOT NULL,
    category_code CHARACTER VARYING(10)  NOT NULL,
    category_name CHARACTER VARYING(20),
    short_desc CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    created_by CHARACTER VARYING(40),
    updated_by CHARACTER VARYING(40),
    CONSTRAINT PK_space_category PRIMARY KEY (category_id)
);

/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.space_types"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.space_types (
    type_id NUMERIC(4) DEFAULT nextval('ol_main.type_id_seq')  NOT NULL,
	category_id NUMERIC  NOT NULL,
    type_name CHARACTER VARYING(40)  NOT NULL,
	screen_name CHARACTER VARYING(40),
    short_desc CHARACTER VARYING(100),
    Long_desc CHARACTER VARYING(200),
    status CHARACTER VARYING(1) DEFAULT 'A',
    create_date DATE,
    update_date DATE,
    created_by CHARACTER VARYING(40) DEFAULT 'Admin',
    updated_by CHARACTER VARYING(40) DEFAULT 'admin',
    CONSTRAINT PK_space_types PRIMARY KEY (type_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.web_users"                                          */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.web_users (
    user_id NUMERIC DEFAULT nextval('ol_main.user_id_seq')  NOT NULL,
    user_type_code CHARACTER VARYING(10),
    user_f_name CHARACTER VARYING(40),
    user_m_name CHARACTER VARYING(40),
    user_l_name CHARACTER VARYING(40),
    email_id CHARACTER VARYING(40),
    password CHARACTER VARYING(40),
    cell_no NUMERIC(10),
    cell_last_verified DATE,
    email_last_verified DATE,
    status CHARACTER VARYING(1) DEFAULT 'A',
    user_pic CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_web_users PRIMARY KEY (user_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_login_detail"                                  */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_login_detail (
    user_id NUMERIC  NOT NULL,
    session_id NUMERIC  NOT NULL,
    login_api CHARACTER VARYING(40),
    login_time CHARACTER VARYING(40),
    login_status CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_user_login_detail PRIMARY KEY (user_id, session_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_actions"                                       */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_actions (
    action_id NUMERIC DEFAULT nextval('ol_main.action_id_seq')  NOT NULL,
    action_code CHARACTER VARYING(10),
    screen_name CHARACTER VARYING(40),
    action_name CHARACTER VARYING(40),
    description CHARACTER VARYING(100),
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_user_actions PRIMARY KEY (action_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.clickstream"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.clickstream (
    user_id NUMERIC,
    session_id NUMERIC,
    create_date DATE,
    update_date DATE,
    server_ip CHARACTER VARYING(40),
    client_ip CHARACTER VARYING(40),
    session_start_time CHARACTER VARYING(40),
    session_end_time CHARACTER VARYING(40),
    duration NUMERIC,
    browser_type CHARACTER VARYING(40),
    browser_version CHARACTER VARYING(40),
    operating_system CHARACTER VARYING(40),
    os_version CHARACTER VARYING(40),
    agent_language CHARACTER VARYING(40),
    page_name CHARACTER VARYING(40),
    page_domain CHARACTER VARYING(40),
    page_subdomain CHARACTER VARYING(40),
    browsing_seq NUMERIC
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_types"                                         */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_types (
    user_type_id NUMERIC DEFAULT nextval('ol_main.user_type_id_seq')  NOT NULL,
    type_code CHARACTER VARYING(10)  NOT NULL,
    screen_name CHARACTER VARYING(10),
    short_desc CHARACTER VARYING(40),
    scope_flag CHARACTER VARYING(1) DEFAULT 'P',
    status CHARACTER VARYING(1),
    create_date DATE,
    update_date DATE,
    create_by CHARACTER VARYING(40)  NOT NULL,
    update_by CHARACTER VARYING(40)  NOT NULL,
    CONSTRAINT PK_user_types PRIMARY KEY (user_type_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.attribute_types"                                    */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.attribute_types (
    attribute_type_code CHARACTER VARYING(10)  NOT NULL,
    attribute_type_name CHARACTER VARYING(40),
	position NUMERIC,
    create_date DATE,
    update_date DATE,
    updated_by CHARACTER VARYING(40),
    created_by CHARACTER VARYING(40),
    CONSTRAINT PK_attribute_types PRIMARY KEY (attribute_type_code)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_searches"                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_searches (
    search_id NUMERIC DEFAULT nextval('ol_main.search_id_seq')  NOT NULL,
    user_id NUMERIC,
    session_id NUMERIC,
    search_string CHARACTER VARYING(100),
    space_type CHARACTER VARYING(40),
    craete_date DATE,
    create_by CHARACTER VARYING(40),
    CONSTRAINT PK_user_searches PRIMARY KEY (search_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.search_results"                                     */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.search_results (
    search_id NUMERIC  NOT NULL,
    no_of_results NUMERIC,
    create_date DATE,
    create_by CHARACTER VARYING(40),
    user_id NUMERIC  NOT NULL,
    session_id NUMERIC  NOT NULL,
    CONSTRAINT PK_search_results PRIMARY KEY (search_id, user_id, session_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.search_filters"                                     */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.search_filters (
    search_id NUMERIC  NOT NULL,
    attribute_id NUMERIC  NOT NULL,
    value_code CHARACTER VARYING(40)  NOT NULL,
    no_of_results CHARACTER VARYING(40),
    create_date CHARACTER VARYING(40),
    create_by CHARACTER VARYING(40),
    user_id NUMERIC  NOT NULL,
    session_id NUMERIC  NOT NULL,
    CONSTRAINT PK_search_filters PRIMARY KEY (search_id, attribute_id, value_code, user_id, session_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.system_param"                                       */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.system_param (
    param_code CHARACTER VARYING(10)  NOT NULL,
    param_name CHARACTER VARYING(40),
    param_value CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    created_by CHARACTER VARYING(40),
    updated_by CHARACTER VARYING(40),
    CONSTRAINT PK_system_param PRIMARY KEY (param_code)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.enquiries"                                          */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.enquiries (
    user_action_id NUMERIC  NOT NULL
	space_id NUMERIC  NOT NULL,
    search_id NUMERIC  NOT NULL,
    user_id CHARACTER VARYING(40),
    user_f_name CHARACTER VARYING(40),
    user_l_name CHARACTER VARYING(40),
    email_id CHARACTER VARYING(40),
    cell_no CHARACTER VARYING(40),
    location CHARACTER VARYING(40),
    space_type_id NUMERIC,
    query CHARACTER VARYING(250),
    create_date CHARACTER VARYING(40),
    create_by CHARACTER VARYING(40),
    update_by CHARACTER VARYING(40),
    update_date CHARACTER VARYING(40),
    CONSTRAINT PK_enquiries PRIMARY KEY (user_action_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_blogs"                                         */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_blogs (
    user_id NUMERIC DEFAULT nextval('ol_main.blog_id_seq')  NOT NULL,
    session_id NUMERIC  NOT NULL,
    blog_id NUMERIC  NOT NULL,
    blog_url CHARACTER VARYING(100),
    blog_file_name CHARACTER VARYING(40),
    blog_file_location CHARACTER VARYING(100),
    created_on DATE,
    created_by CHARACTER VARYING(40),
    CONSTRAINT PK_user_blogs PRIMARY KEY (user_id, session_id, blog_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.space_attributes"                                   */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.space_attributes (
    attribute_id NUMERIC DEFAULT nextval('ol_main.attribute_id')  NOT NULL,
    attribute_type_code CHARACTER VARYING(10)  NOT NULL,
    attribute_name CHARACTER VARYING(100),
    screen_name CHARACTER VARYING(40),
    short_desc CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_space_attributes PRIMARY KEY (attribute_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.space_type_attributes"                              */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.space_type_attributes (
    type_id NUMERIC  NOT NULL,
    attribute_id NUMERIC  NOT NULL,
    attribute_type_code CHARACTER VARYING(10)  NOT NULL,
    required CHARACTER VARYING(1),
    prop1_type CHARACTER VARYING(40),
    prop1_value CHARACTER VARYING(40),
    prop2_type CHARACTER VARYING(40),
    prop2_value CHARACTER VARYING(40),
    status CHARACTER VARYING(1) DEFAULT 'A',
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_space_type_attributes PRIMARY KEY (type_id, attribute_id, attribute_type_code)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_spaces"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_spaces (
    space_id NUMERIC DEFAULT nextval('ol_main.space_id_seq')  NOT NULL,
    user_id NUMERIC  NOT NULL,
    type_id NUMERIC  NOT NULL,
    space_name CHARACTER VARYING(40),
    location CHARACTER VARYING(40),
    status CHARACTER VARYING(40),
    about_space CHARACTER VARYING(255),
    about_venue CHARACTER VARYING(255),
    city CHARACTER VARYING(40),
    coutry CHARACTER VARYING(40),
    lat CHARACTER VARYING(40),
    long CHARACTER VARYING(40),
    address_1 CHARACTER VARYING(40),
    address_2 CHARACTER VARYING(40),
    contact_person CHARACTER VARYING(40),
    contact_person_email CHARACTER VARYING(40),
    contact_person_cell NUMERIC(15),
    availability_flag CHARACTER VARYING(1) DEFAULT 'Y',
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_user_spaces PRIMARY KEY (space_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_space_details" 

added default to value_code to make record for attribute value                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_space_details (
    space_id NUMERIC  NOT NULL,
    type_id NUMERIC  NOT NULL,
    attribute_id NUMERIC NOT NULL,
	value_code CHARACTER VARYING(40) DEFAULT 'DUMMY',
    attribute_value CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_user_space_details PRIMARY KEY (space_id, type_id,attribute_id,value_code)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.web_user_extended_profile"                          */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.web_user_extended_profile (
    user_id NUMERIC  NOT NULL,
    user_type_id NUMERIC  NOT NULL,
    location CHARACTER VARYING(40),
    city CHARACTER VARYING(40),
    state CHARACTER VARYING(40),
    lat CHARACTER VARYING(40),
    long CHARACTER VARYING(40),
    country CHARACTER VARYING(40),
    pin CHARACTER VARYING(40),
    company CHARACTER VARYING(40),
    position CHARACTER VARYING(40),
    web_address CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_web_user_extended_profile PRIMARY KEY (user_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_space_pics"                                    */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_space_pics (
    space_id NUMERIC  NOT NULL,
    user_id NUMERIC  NOT NULL,
    pic_seq NUMERIC  NOT NULL,
    pic CHARACTER VARYING(40),
    pic_size NUMERIC,
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_user_space_pics PRIMARY KEY (space_id, user_id, pic_seq)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.seeker_actions"                                     */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.seeker_actions (
    user_action_id NUMERIC DEFAULT nextval('ol_main.user_action_id')  NOT NULL,
    user_id NUMERIC  NOT NULL,
    session_id NUMERIC  NOT NULL,
    action_id NUMERIC  NOT NULL,
    space_id NUMERIC  NOT NULL,
    system_msg CHARACTER VARYING(40),
    status CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_seeker_actions PRIMARY KEY (user_action_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.attribute_ui_prop"                                  */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.attribute_ui_prop (
    Attribute_id NUMERIC  NOT NULL,
	attribute_type_code CHARACTER VARYING(10)  NOT NULL,
    attribute_ui_name CHARACTER VARYING(40),
    attribute_ui_type CHARACTER VARYING(40),
    level CHARACTER VARYING(40),
    prop1 CHARACTER VARYING(40),
    prop2 CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    CONSTRAINT PK_attribute_ui_prop PRIMARY KEY (Attribute_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.booking_detail"                                     */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.booking_detail (
    user_action_id NUMERIC  NOT NULL,
    user_id NUMERIC,
    space_id NUMERIC  NOT NULL,
    booking_date CHARACTER VARYING(40),
    booking_start_date CHARACTER VARYING(40),
    booking_end_date CHARACTER VARYING(40),
    duration CHARACTER VARYING(40),
    duration_unit CHARACTER VARYING(10),
    payment_amount CHARACTER VARYING(40),
    currency CHARACTER VARYING(40) DEFAULT 'INR',
    create_date CHARACTER VARYING(40),
    update_date CHARACTER VARYING(40),
    created_by CHARACTER VARYING(40),
    updated_by CHARACTER VARYING(40),
    tenant_name CHARACTER VARYING(40),
    tenant_address CHARACTER VARYING(100),
    tenant_cell NUMERIC(10),
    tenant_email CHARACTER VARYING(40),
    CONSTRAINT PK_booking_detail PRIMARY KEY (user_action_id, space_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.payment_info"                                       */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.payment_info (
    payment_id NUMERIC DEFAULT nextval('ol_main.payment_id_seq')  NOT NULL,
    space_id NUMERIC  NOT NULL,
    user_action_id NUMERIC  NOT NULL,
    bank_reference_id CHARACTER VARYING(40),
    status CHARACTER VARYING(40),
    bank_msg CHARACTER VARYING(100),
    amount NUMERIC,
    create_date CHARACTER VARYING(40),
    update_date CHARACTER VARYING(40),
    created_by CHARACTER VARYING(40),
    udpated_by CHARACTER VARYING(40),
    CONSTRAINT PK_payment_info PRIMARY KEY (payment_id, space_id, user_action_id)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.space_attribute_values"                             */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.space_attribute_values (
    type_id NUMERIC  NOT NULL,
    attribute_id NUMERIC  NOT NULL,
    value_code CHARACTER VARYING(40)  NOT NULL,
    attribute_type_code CHARACTER VARYING(10)  NOT NULL,
    value_screen_name CHARACTER VARYING(40),
    create_date DATE,
    update_date DATE,
    created_by CHARACTER VARYING(40),
    updated_by CHARACTER VARYING(40),
    CONSTRAINT PK_space_attribute_values PRIMARY KEY (type_id, attribute_id, value_code, attribute_type_code)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.user_space_price_options"                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.user_space_price_options (
    space_id NUMERIC  NOT NULL,
    frequency CHARACTER VARYING(40)  NOT NULL,
    price NUMERIC,
    currency CHARACTER VARYING(40) DEFAULT 'INR',
    create_date CHARACTER VARYING(40),
    update_date CHARACTER VARYING(40),
    created_by CHARACTER VARYING(40),
    updated_by CHARACTER VARYING(40),
    CONSTRAINT PK_user_space_price_options PRIMARY KEY (space_id, frequency)
);

/* ---------------------------------------------------------------------- */
/* Add table "ol_main.seeker_tour_details"                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE ol_main.seeker_tour_details (
    user_action_id NUMERIC  NOT NULL,
    space_id NUMERIC  NOT NULL,
    tenant_user_id NUMERIC  NOT NULL,
    tour_date CHARACTER VARYING(40)  NOT NULL,
    tenant_name CHARACTER VARYING(40),
    tenant_cell CHARACTER VARYING(40),
    tenant_email CHARACTER VARYING(40),
    tour_time CHARACTER VARYING(40),
    tour_status CHARACTER VARYING(40),
    create_date DATE,
    created_by CHARACTER VARYING(40),
    update_date DATE,
    updated_by CHARACTER VARYING(40),
    CONSTRAINT PK_seeker_tour_details PRIMARY KEY (user_action_id, space_id, tenant_user_id, tour_date)
);

/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */
ALTER TABLE ol_main.space_types ADD CONSTRAINT space_category_space_types 
    FOREIGN KEY (category_id) REFERENCES ol_main.space_category (category_id);


ALTER TABLE ol_main.space_attributes ADD CONSTRAINT attribute_types_space_attributes 
    FOREIGN KEY (attribute_type_code) REFERENCES ol_main.attribute_types (attribute_type_code);

ALTER TABLE ol_main.space_type_attributes ADD CONSTRAINT space_types_space_type_attributes 
    FOREIGN KEY (type_id) REFERENCES ol_main.space_types (type_id);

ALTER TABLE ol_main.space_type_attributes ADD CONSTRAINT space_attributes_space_type_attributes 
    FOREIGN KEY (attribute_id) REFERENCES ol_main.space_attributes (attribute_id);

ALTER TABLE ol_main.user_spaces ADD CONSTRAINT space_types_user_spaces 
    FOREIGN KEY (type_id) REFERENCES ol_main.space_types (type_id);

ALTER TABLE ol_main.user_spaces ADD CONSTRAINT web_users_user_spaces 
    FOREIGN KEY (user_id) REFERENCES ol_main.web_users (user_id);

ALTER TABLE ol_main.user_space_details ADD CONSTRAINT user_spaces_user_space_details 
    FOREIGN KEY (space_id) REFERENCES ol_main.user_spaces (space_id);

ALTER TABLE ol_main.user_login_detail ADD CONSTRAINT web_users_user_login_detail 
    FOREIGN KEY (user_id) REFERENCES ol_main.web_users (user_id);

ALTER TABLE ol_main.web_user_extended_profile ADD CONSTRAINT web_users_web_user_extended_profile 
    FOREIGN KEY (user_id) REFERENCES ol_main.web_users (user_id);

ALTER TABLE ol_main.web_user_extended_profile ADD CONSTRAINT user_types_web_user_extended_profile 
    FOREIGN KEY (user_type_id) REFERENCES ol_main.user_types (user_type_id);

ALTER TABLE ol_main.user_space_pics ADD CONSTRAINT user_spaces_user_space_pics 
    FOREIGN KEY (space_id) REFERENCES ol_main.user_spaces (space_id);

ALTER TABLE ol_main.seeker_actions ADD CONSTRAINT user_login_detail_seeker_actions 
    FOREIGN KEY (user_id, session_id) REFERENCES ol_main.user_login_detail (user_id,session_id);

ALTER TABLE ol_main.seeker_actions ADD CONSTRAINT user_actions_seeker_actions 
    FOREIGN KEY (action_id) REFERENCES ol_main.user_actions (action_id);

ALTER TABLE ol_main.seeker_actions ADD CONSTRAINT user_spaces_seeker_actions 
    FOREIGN KEY (space_id) REFERENCES ol_main.user_spaces (space_id);

ALTER TABLE ol_main.attribute_ui_prop ADD CONSTRAINT space_attributes_attribute_ui_prop 
    FOREIGN KEY (Attribute_id) REFERENCES ol_main.space_attributes (attribute_id);

ALTER TABLE ol_main.booking_detail ADD CONSTRAINT seeker_actions_booking_detail 
    FOREIGN KEY (user_action_id) REFERENCES ol_main.seeker_actions (user_action_id);

ALTER TABLE ol_main.payment_info ADD CONSTRAINT booking_detail_payment_info 
    FOREIGN KEY (user_action_id, space_id) REFERENCES ol_main.booking_detail (user_action_id,space_id);

ALTER TABLE ol_main.space_attribute_values ADD CONSTRAINT space_type_attributes_space_attribute_values 
    FOREIGN KEY (type_id, attribute_id, attribute_type_code) REFERENCES ol_main.space_type_attributes (type_id,attribute_id,attribute_type_code);

ALTER TABLE ol_main.user_space_price_options ADD CONSTRAINT user_spaces_user_space_price_options 
    FOREIGN KEY (space_id) REFERENCES ol_main.user_spaces (space_id);

ALTER TABLE ol_main.user_searches ADD CONSTRAINT user_login_detail_user_searches 
    FOREIGN KEY (user_id, session_id) REFERENCES ol_main.user_login_detail (user_id,session_id);

ALTER TABLE ol_main.search_results ADD CONSTRAINT user_searches_search_results 
    FOREIGN KEY (search_id) REFERENCES ol_main.user_searches (search_id);

ALTER TABLE ol_main.search_filters ADD CONSTRAINT search_results_search_filters 
    FOREIGN KEY (search_id, user_id, session_id) REFERENCES ol_main.search_results (search_id,user_id,session_id);

ALTER TABLE ol_main.seeker_tour_details ADD CONSTRAINT seeker_actions_seeker_tour_details 
    FOREIGN KEY (user_action_id) REFERENCES ol_main.seeker_actions (user_action_id);

ALTER TABLE ol_main.enquiries ADD CONSTRAINT user_searches_enquiries 
    FOREIGN KEY (search_id) REFERENCES ol_main.user_searches (search_id);
	
ALTER TABLE ol_main.enquiries ADD CONSTRAINT user_spaces_enquiries 
    FOREIGN KEY (search_id) REFERENCES ol_main.user_spaces (space_id);	

ALTER TABLE ol_main.user_blogs ADD CONSTRAINT user_login_detail_user_blogs 
    FOREIGN KEY (user_id, session_id) REFERENCES ol_main.user_login_detail (user_id,session_id);
	
-- Index: ol_main.attribute_type_code_pk

-- DROP INDEX ol_main.attribute_type_code_pk;

CREATE UNIQUE INDEX attribute_type_code_pk
  ON ol_main.attribute_types
  USING btree
  (attribute_type_code COLLATE pg_catalog."default")
TABLESPACE ol_db_idx_ts;

-- Index: ol_main.attribute_id_pk

-- DROP INDEX ol_main.attribute_id_pk;

CREATE UNIQUE INDEX attribute_id_pk
  ON ol_main.attribute_ui_prop
  USING btree
  (attribute_id)
TABLESPACE ol_db_idx_ts;


	

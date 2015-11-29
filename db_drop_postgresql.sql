/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V9.0.0                     */
/* Target DBMS:           PostgreSQL 9                                    */
/* Project file:          officelagoon.dez                                */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2015-11-23 15:00                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

ALTER TABLE ol_main.space_attributes DROP CONSTRAINT attribute_types_space_attributes;

ALTER TABLE ol_main.space_type_attributes DROP CONSTRAINT space_types_space_type_attributes;

ALTER TABLE ol_main.space_type_attributes DROP CONSTRAINT space_attributes_space_type_attributes;

ALTER TABLE ol_main.user_spaces DROP CONSTRAINT space_types_user_spaces;

ALTER TABLE ol_main.user_spaces DROP CONSTRAINT web_users_user_spaces;

ALTER TABLE ol_main.user_space_details DROP CONSTRAINT user_spaces_user_space_details;

ALTER TABLE ol_main.user_login_detail DROP CONSTRAINT web_users_user_login_detail;

ALTER TABLE ol_main.web_user_extended_profile DROP CONSTRAINT web_users_web_user_extended_profile;

ALTER TABLE ol_main.web_user_extended_profile DROP CONSTRAINT user_types_web_user_extended_profile;

ALTER TABLE ol_main.user_space_pics DROP CONSTRAINT user_spaces_user_space_pics;

ALTER TABLE ol_main.seeker_actions DROP CONSTRAINT user_login_detail_seeker_actions;

ALTER TABLE ol_main.seeker_actions DROP CONSTRAINT user_actions_seeker_actions;

ALTER TABLE ol_main.seeker_actions DROP CONSTRAINT user_spaces_seeker_actions;

ALTER TABLE ol_main.attribute_ui_prop DROP CONSTRAINT space_attributes_attribute_ui_prop;

ALTER TABLE ol_main.booking_detail DROP CONSTRAINT seeker_actions_booking_detail;

ALTER TABLE ol_main.payment_info DROP CONSTRAINT booking_detail_payment_info;

ALTER TABLE ol_main.space_attribute_values DROP CONSTRAINT space_type_attributes_space_attribute_values;

ALTER TABLE ol_main.user_space_price_options DROP CONSTRAINT user_spaces_user_space_price_options;

ALTER TABLE ol_main.user_searches DROP CONSTRAINT user_login_detail_user_searches;

ALTER TABLE ol_main.search_results DROP CONSTRAINT user_searches_search_results;

ALTER TABLE ol_main.search_filters DROP CONSTRAINT search_results_search_filters;

ALTER TABLE ol_main.seeker_tour_details DROP CONSTRAINT seeker_actions_seeker_tour_details;

ALTER TABLE ol_main.enquiries DROP CONSTRAINT user_searches_enquiries;

ALTER TABLE ol_main.user_blogs DROP CONSTRAINT user_login_detail_user_blogs;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.seeker_tour_details"                               */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.seeker_tour_details DROP CONSTRAINT PK_seeker_tour_details;

DROP TABLE ol_main.seeker_tour_details;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_space_price_options"                          */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_space_price_options DROP CONSTRAINT PK_user_space_price_options;

DROP TABLE ol_main.user_space_price_options;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.space_attribute_values"                            */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.space_attribute_values DROP CONSTRAINT PK_space_attribute_values;

DROP TABLE ol_main.space_attribute_values;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.payment_info"                                      */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.payment_info DROP CONSTRAINT PK_payment_info;

DROP TABLE ol_main.payment_info;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.booking_detail"                                    */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.booking_detail DROP CONSTRAINT PK_booking_detail;

DROP TABLE ol_main.booking_detail;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.attribute_ui_prop"                                 */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.attribute_ui_prop DROP CONSTRAINT PK_attribute_ui_prop;

DROP TABLE ol_main.attribute_ui_prop;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.seeker_actions"                                    */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.seeker_actions DROP CONSTRAINT PK_seeker_actions;

DROP TABLE ol_main.seeker_actions;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_space_pics"                                   */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_space_pics DROP CONSTRAINT PK_user_space_pics;

DROP TABLE ol_main.user_space_pics;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.web_user_extended_profile"                         */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.web_user_extended_profile DROP CONSTRAINT PK_web_user_extended_profile;

DROP TABLE ol_main.web_user_extended_profile;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_space_details"                                */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_space_details DROP CONSTRAINT PK_user_space_details;

DROP TABLE ol_main.user_space_details;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_spaces"                                       */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_spaces DROP CONSTRAINT PK_user_spaces;

DROP TABLE ol_main.user_spaces;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.space_type_attributes"                             */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.space_type_attributes DROP CONSTRAINT PK_space_type_attributes;

DROP TABLE ol_main.space_type_attributes;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.space_attributes"                                  */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.space_attributes DROP CONSTRAINT PK_space_attributes;

DROP TABLE ol_main.space_attributes;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_blogs"                                        */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_blogs DROP CONSTRAINT PK_user_blogs;

DROP TABLE ol_main.user_blogs;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.enquiries"                                         */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.enquiries DROP CONSTRAINT PK_enquiries;

DROP TABLE ol_main.enquiries;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.system_param"                                      */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.system_param DROP CONSTRAINT PK_system_param;

DROP TABLE ol_main.system_param;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.search_filters"                                    */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.search_filters DROP CONSTRAINT PK_search_filters;

DROP TABLE ol_main.search_filters;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.search_results"                                    */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.search_results DROP CONSTRAINT PK_search_results;

DROP TABLE ol_main.search_results;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_searches"                                     */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_searches DROP CONSTRAINT PK_user_searches;

DROP TABLE ol_main.user_searches;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.attribute_types"                                   */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.attribute_types DROP CONSTRAINT PK_attribute_types;

DROP TABLE ol_main.attribute_types;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_types"                                        */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_types DROP CONSTRAINT PK_user_types;

DROP TABLE ol_main.user_types;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.clickstream"                                       */
/* ---------------------------------------------------------------------- */

DROP TABLE ol_main.clickstream;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_actions"                                      */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_actions DROP CONSTRAINT PK_user_actions;

DROP TABLE ol_main.user_actions;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.user_login_detail"                                 */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.user_login_detail DROP CONSTRAINT PK_user_login_detail;

DROP TABLE ol_main.user_login_detail;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.web_users"                                         */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.web_users DROP CONSTRAINT PK_web_users;

DROP TABLE ol_main.web_users;

/* ---------------------------------------------------------------------- */
/* Drop table "ol_main.space_types"                                       */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ol_main.space_types DROP CONSTRAINT PK_space_types;

DROP TABLE ol_main.space_types;

/* ---------------------------------------------------------------------- */
/* Drop sequences                                                         */
/* ---------------------------------------------------------------------- */

DROP SEQUENCE ol_main.user_id_seq;

DROP SEQUENCE ol_main.space_id_seq;

DROP SEQUENCE ol_main.type_id_seq;

DROP SEQUENCE ol_main.user_type_id_seq;

DROP SEQUENCE ol_main.search_id_seq;

DROP SEQUENCE ol_main.attribute_id;

DROP SEQUENCE ol_main.action_id_seq;

DROP SEQUENCE ol_main.user_action_id;

DROP SEQUENCE ol_main.payment_id_seq;

DROP SEQUENCE ol_main.blog_id_seq;

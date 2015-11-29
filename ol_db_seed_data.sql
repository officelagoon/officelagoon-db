

-- Data for Name: space_category; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin
--

INSERT INTO ol_main.space_category (category_id, category_code, category_name, short_desc, create_date, update_date, created_by, updated_by) VALUES (1, 'OFFICE', 'Office', 'Office spaces', '2015-11-24', '2015-11-04', 'admin', 'admin');
INSERT INTO ol_main.space_category (category_id, category_code, category_name, short_desc, create_date, update_date, created_by, updated_by) VALUES (2, 'MEETING', 'Meeting Space', 'Meeting spaces', '2015-11-24', '2015-11-04', 'admin', 'admin');
INSERT INTO ol_main.space_category (category_id, category_code, category_name, short_desc, create_date, update_date, created_by, updated_by) VALUES (3, 'SHOP', 'Shops', 'Shops', '2015-11-24', '2015-11-24', 'admin', 'admin');
INSERT INTO ol_main.space_category (category_id, category_code, category_name, short_desc, create_date, update_date, created_by, updated_by) VALUES (4, 'STORAGE', 'Storage Space', 'Storage spaces', '2015-11-24', '2015-11-24', 'admin', 'admin');
INSERT INTO ol_main.space_category (category_id, category_code, category_name, short_desc, create_date, update_date, created_by, updated_by) VALUES (0, 'ALL', 'all', 'all', '2015-11-24', '2015-11-24', 'admin', 'admin');


-- Data for Name: space_types; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin


INSERT INTO ol_main.space_types (type_id, type_name, screen_name, short_desc, long_desc, status, create_date, update_date, created_by, updated_by, category_id) VALUES (1, 'SHAREDOFF', 'Shared Office', 'Shared office', 'Shared office', 'A', '2015-11-11', '2015-11-11', 'Admin', 'admin', 1);
INSERT INTO ol_main.space_types (type_id, type_name, screen_name, short_desc, long_desc, status, create_date, update_date, created_by, updated_by, category_id) VALUES (2, 'OFFICE', 'Office', 'Ready office', 'Ready Office', 'A', '2015-11-11', '2015-11-11', 'Admin', 'admin', 1);
INSERT INTO ol_main.space_types (type_id, type_name, screen_name, short_desc, long_desc, status, create_date, update_date, created_by, updated_by, category_id) VALUES (3, 'MEETINGRM', 'Meeting Room', NULL, NULL, 'A', '2015-11-11', '2015-11-11', 'Admin', 'admin', 2);
INSERT INTO ol_main.space_types (type_id, type_name, screen_name, short_desc, long_desc, status, create_date, update_date, created_by, updated_by, category_id) VALUES (4, 'AUDITORIUM', 'Auditorium', NULL, NULL, 'A', '2015-11-11', '2015-11-11', 'Admin', 'admin', 2);
INSERT INTO ol_main.space_types (type_id, type_name, screen_name, short_desc, long_desc, status, create_date, update_date, created_by, updated_by, category_id) VALUES (5, 'SHOP', 'Shop', 'Shop', NULL, 'A', '2015-11-11', '2015-11-11', 'Admin', 'admin', 3);
INSERT INTO ol_main.space_types (type_id, type_name, screen_name, short_desc, long_desc, status, create_date, update_date, created_by, updated_by, category_id) VALUES (6, 'WAREHOUSE', 'Warehouse', NULL, NULL, 'D', '2015-11-11', '2015-11-11', 'Admin', 'admin', 4);
INSERT INTO ol_main.space_types (type_id, type_name, screen_name, short_desc, long_desc, status, create_date, update_date, created_by, updated_by, category_id) VALUES (7, 'SHAREDSHOP', 'Shared Shop', NULL, NULL, 'A', '2015-11-11', '2015-11-11', 'Admin', 'admin', 3);
INSERT INTO ol_main.space_types (type_id, type_name, screen_name, short_desc, long_desc, status, create_date, update_date, created_by, updated_by, category_id) VALUES (0, 'ALL', 'All ', 'All spaces', 'All spaces', 'A', '2015-11-11', '2015-11-11', 'Admin', 'admin', 0);

-- Data for Name: space_type_attributes; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin
--

INSERT INTO ol_main.space_type_attributes (type_id, attribute_id, attribute_type_code, required, prop1_type, prop1_value, prop2_type, prop2_value, status, create_date, update_date) VALUES (0, 2, 'amenities', 'N', NULL, NULL, NULL, NULL, 'A', '2015-11-23', '2015-11-23');
INSERT INTO ol_main.space_type_attributes (type_id, attribute_id, attribute_type_code, required, prop1_type, prop1_value, prop2_type, prop2_value, status, create_date, update_date) VALUES (0, 10, 'amenities', 'N', NULL, NULL, NULL, NULL, 'A', '2015-11-23', '2015-11-23');
INSERT INTO ol_main.space_type_attributes (type_id, attribute_id, attribute_type_code, required, prop1_type, prop1_value, prop2_type, prop2_value, status, create_date, update_date) VALUES (1, 2, 'amenities', 'N', NULL, NULL, NULL, NULL, 'A', '2015-11-23', '2015-11-23');
INSERT INTO ol_main.space_type_attributes (type_id, attribute_id, attribute_type_code, required, prop1_type, prop1_value, prop2_type, prop2_value, status, create_date, update_date) VALUES (1, 3, 'amenities', 'N', NULL, NULL, NULL, NULL, 'A', '2015-11-23', '2015-11-23');
INSERT INTO ol_main.space_type_attributes (type_id, attribute_id, attribute_type_code, required, prop1_type, prop1_value, prop2_type, prop2_value, status, create_date, update_date) VALUES (1, 4, 'amenities', 'N', NULL, NULL, NULL, NULL, 'A', '2015-11-23', '2015-11-23');


-- Data for Name: attribute_types; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin
--

INSERT INTO ol_main.attribute_types (attribute_type_code, attribute_type_name, create_date, update_date, updated_by, created_by, "position") VALUES ('amenities', 'Amenities', '2015-11-23', '2015-11-23', 'admin', 'admin', 1);
INSERT INTO ol_main.attribute_types (attribute_type_code, attribute_type_name, create_date, update_date, updated_by, created_by, "position") VALUES ('networking', 'Networking', '2015-11-23', '2015-11-23', 'admin', 'admin', 2);
INSERT INTO ol_main.attribute_types (attribute_type_code, attribute_type_name, create_date, update_date, updated_by, created_by, "position") VALUES ('officeanc', 'Office Anc', '2015-11-23', '2015-11-23', 'admin', 'admin', 3);
INSERT INTO ol_main.attribute_types (attribute_type_code, attribute_type_name, create_date, update_date, updated_by, created_by, "position") VALUES ('security', 'Security', '2015-11-23', '2015-11-23', 'admin', 'admin', 4);
INSERT INTO ol_main.attribute_types (attribute_type_code, attribute_type_name, create_date, update_date, updated_by, created_by, "position") VALUES ('space', 'Space', '2015-11-23', '2015-11-23', 'admin', 'admin', 0);
INSERT INTO ol_main.attribute_types (attribute_type_code, attribute_type_name, create_date, update_date, updated_by, created_by, "position") VALUES ('staff', 'Staff', '2015-11-23', '2015-11-23', 'admin', 'admin', 5);
INSERT INTO ol_main.attribute_types (attribute_type_code, attribute_type_name, create_date, update_date, updated_by, created_by, "position") VALUES ('timings', 'Timings', '2015-11-23', '2015-11-23', 'admin', 'admin', 6);
INSERT INTO ol_main.attribute_types (attribute_type_code, attribute_type_name, create_date, update_date, updated_by, created_by, "position") VALUES ('other', 'Others', '2015-11-23', '2015-11-23', 'admin', 'admin', 7);


-- Data for Name: space_attributes; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin
--

INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (1, 'timings', 'availavility ', '24/7 Option', 'It shows space is avaliable 24x7', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (2, 'amenities', 'eatries', 'Cafe/restaurant ', 'Shows if Cafe/Restuarant is available', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (24, 'timings', 'weekendop', 'Weekend Open', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (3, 'amenities', 'catering ', 'Catering ', 'Shows if catering is available in the sp', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (4, 'amenities', 'coffeewater', 'Coffee/Water', 'Shows if coffee, water machine is availa', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (5, 'amenities', 'lockers', 'Lockers', 'Shows if Lockers are avaialble in office', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (6, 'amenities', 'mailservice', 'Mail Service', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (7, 'amenities', 'meetingrm', 'Meeting Rooms', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (8, 'amenities', 'phonebooth', 'Phone Booth', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (9, 'amenities', 'pantry', 'Pantry', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (10, 'amenities', 'toilets', 'Toilets', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (11, 'networking', 'wifi', 'Wifi', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (12, 'networking', 'broadband', 'Broadband', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (13, 'officeanc', 'printer', 'Printers', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (14, 'officeanc', 'storage', 'Storage', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (15, 'officeanc', 'airconditioning', 'A/C Avaialble', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (16, 'space', 'avlspace', 'Space in Sqft', 'Shows space available in square feet', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (17, 'space', 'avlseats', 'Seats Available', 'Shows how many seats avalailable', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (18, 'other', 'parkign', 'Parking', 'Parking avaialble or not', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (19, 'officeanc', 'desktop', 'Desktop', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (20, 'other', 'reception', 'Reception', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (21, 'security', 'cccamera', 'CC Camera', 'cc camera is avaialble or not', '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (22, 'security', 'gatesecurity', 'Gate Security', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (23, 'security', 'nightwatch', 'Night Watchman', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (25, 'staff', 'receptioist', 'Receptionist ', NULL, '2015-11-04', '2015-11-04');
INSERT INTO ol_main.space_attributes (attribute_id, attribute_type_code, attribute_name, screen_name, short_desc, create_date, update_date) VALUES (26, 'staff', 'supervisor', 'Supervisor', NULL, '2015-11-04', '2015-11-04');



-- Data for Name: attribute_ui_prop; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin


INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (2, 'amenities', 'Cafe/restaurant ', 'CB', '1', '1', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (3, 'amenities', 'Catering ', 'CB', '1', '2', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (4, 'amenities', 'Coffee/Water', 'CB', '1', '3', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (5, 'amenities', 'Lockers', 'CB', '1', '4', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (6, 'amenities', 'Mail Service', 'CB', '1', '5', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (7, 'amenities', 'Meeting Rooms', 'CB', '1', '6', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (8, 'amenities', 'Phone Booth', 'CB', '1', '7', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (9, 'amenities', 'Pantry', 'CB', '1', '8', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (10, 'amenities', 'Toilets', 'CB', '1', '9', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (11, 'networking', 'Wifi', 'CB', '1', '1', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (12, 'networking', 'Broadband', 'CB', '1', '2', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (13, 'officeanc', 'Printers', 'CB', '1', '1', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (14, 'officeanc', 'Storage', 'CB', '1', '2', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (15, 'officeanc', 'A/C Avaialble', 'CB', '1', '3', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (19, 'officeanc', 'Desktop', 'CB', '1', '4', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (18, 'other', 'Parking', 'CB', '1', '1', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (20, 'other', 'Reception', 'CB', '1', '2', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (21, 'security', 'CC Camera', 'CB', '1', '1', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (22, 'security', 'Gate Security', 'CB', '1', '2', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (23, 'security', 'Night Watchman', 'CB', '1', '3', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (25, 'staff', 'Receptionist ', 'CB', '1', '1', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (26, 'staff', 'Supervisor', 'CB', '1', '2', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (1, 'timings', '24/7 Option', 'CB', '1', '1', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (16, 'space', 'Space in Sqft', 'TXT', '1', '1', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (17, 'space', 'Seats Available', 'DD', '1', '2', NULL, '2015-11-24', '2015-11-24');
INSERT INTO ol_main.attribute_ui_prop (attribute_id, attribute_type_code, attribute_ui_name, attribute_ui_type, level, prop1, prop2, create_date, update_date) VALUES (24, 'timings', 'Weekends Open', 'CB', '1', '2', NULL, '2015-11-24', '2015-11-24');








-- Data for Name: space_attribute_values; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin
--

INSERT INTO ol_main.space_attribute_values (type_id, attribute_id, value_code, attribute_type_code, value_screen_name, create_date, update_date, created_by, updated_by) VALUES (0, 10, 'private', 'amenities', 'Private', '2015-11-04', '2015-11-04', 'admin', 'admin');
INSERT INTO ol_main.space_attribute_values (type_id, attribute_id, value_code, attribute_type_code, value_screen_name, create_date, update_date, created_by, updated_by) VALUES (0, 10, 'shared', 'amenities', 'Shared', '2015-11-04', '2015-11-04', 'admin', 'admin');









-- Data for Name: system_param; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin
--

INSERT INTO ol_main.system_param (param_code, param_name, param_value, create_date, update_date, created_by, updated_by) VALUES ('HP_TAG', 'Home page tag line', 'GET YOUR DREAM OFFICE', '2015-11-04', '2015-11-04', 'admin', 'admin');
INSERT INTO ol_main.system_param (param_code, param_name, param_value, create_date, update_date, created_by, updated_by) VALUES ('HP_PUNCH', 'Home page punch line', 'Just in time, Agile office', '2015-11-04', '2015-11-04', 'admin', 'admin');



-- Data for Name: user_actions; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin
--

INSERT INTO ol_main.user_actions (action_id, action_code, screen_name, action_name, description, create_date, update_date) VALUES (1, 'hold', 'Hold', 'Hold', 'user holds the space', '2015-04-11', NULL);
INSERT INTO ol_main.user_actions (action_id, action_code, screen_name, action_name, description, create_date, update_date) VALUES (2, 'book', 'Book Now', 'Booking', 'User books the space', '2015-04-11', '2015-04-11');
INSERT INTO ol_main.user_actions (action_id, action_code, screen_name, action_name, description, create_date, update_date) VALUES (3, 'tour', 'Tour', 'Tour', 'User schedules a tour', '2015-04-11', '2015-04-11');
INSERT INTO ol_main.user_actions (action_id, action_code, screen_name, action_name, description, create_date, update_date) VALUES (4, 'showint', 'Show Interest', 'Show Interest', 'User shows interest in space', '2015-04-11', '2015-04-11');
INSERT INTO ol_main.user_actions (action_id, action_code, screen_name, action_name, description, create_date, update_date) VALUES (5, 'enquire', 'Send Enquiery', 'Enquiery', 'User sends enquiery on space', '2015-04-11', '2015-04-11');


-- Data for Name: user_types; Type: TABLE DATA; Schema: ol_main; Owner: ol_admin
--

INSERT INTO ol_main.user_types (user_type_id, type_code, screen_name, short_desc, scope_flag, status, create_date, update_date, create_by, update_by) VALUES (12, 'admin', 'Admin', 'company admin', 'P', 'A', '2015-11-23', NULL, 'admin', 'admin');
INSERT INTO ol_main.user_types (user_type_id, type_code, screen_name, short_desc, scope_flag, status, create_date, update_date, create_by, update_by) VALUES (15, 'seeker', 'Seeker', 'Space Seeker', 'W', 'A', NULL, NULL, 'admin', 'admin');
INSERT INTO ol_main.user_types (user_type_id, type_code, screen_name, short_desc, scope_flag, status, create_date, update_date, create_by, update_by) VALUES (16, 'provider', 'Provider', 'Space Provider', 'W', 'A', '2015-11-23', '2015-11-23', 'admin', 'admin');

-- Dummy data for references
INSERT INTO web_users VALUES (0, '12', 'Dummy', null, null NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, '2015-11-25', '2015-11-25');
INSERT INTO user_spaces VALUES (0, 0, 0, 'DUMMY', 'dummy', 'A', 'Dummy space for references', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '2015-11-25', '2015-11-25');

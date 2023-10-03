PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2023-09-28 10:01:45.336995');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2023-09-28 10:01:45.451919');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2023-09-28 10:01:45.630708');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2023-09-28 10:01:45.750916');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2023-09-28 10:01:45.879230');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2023-09-28 10:01:46.011405');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2023-09-28 10:01:46.132034');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2023-09-28 10:01:46.246281');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2023-09-28 10:01:46.510976');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2023-09-28 10:01:46.767738');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2023-09-28 10:01:46.861485');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2023-09-28 10:01:46.950525');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2023-09-28 10:01:47.048034');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2023-09-28 10:01:47.141496');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2023-09-28 10:01:47.235971');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2023-09-28 10:01:47.326669');
INSERT INTO django_migrations VALUES(17,'customers','0001_initial','2023-09-28 10:01:47.400201');
INSERT INTO django_migrations VALUES(18,'orders','0001_initial','2023-09-28 10:01:47.485609');
INSERT INTO django_migrations VALUES(19,'robots','0001_initial','2023-09-28 10:01:47.596720');
INSERT INTO django_migrations VALUES(20,'sessions','0001_initial','2023-09-28 10:01:47.706375');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_group_permissions VALUES(1,1,1);
INSERT INTO auth_group_permissions VALUES(2,1,2);
INSERT INTO auth_group_permissions VALUES(3,1,3);
INSERT INTO auth_group_permissions VALUES(4,1,4);
INSERT INTO auth_group_permissions VALUES(5,1,5);
INSERT INTO auth_group_permissions VALUES(6,1,6);
INSERT INTO auth_group_permissions VALUES(7,1,7);
INSERT INTO auth_group_permissions VALUES(8,1,8);
INSERT INTO auth_group_permissions VALUES(9,1,9);
INSERT INTO auth_group_permissions VALUES(10,1,10);
INSERT INTO auth_group_permissions VALUES(11,1,11);
INSERT INTO auth_group_permissions VALUES(12,1,12);
INSERT INTO auth_group_permissions VALUES(13,1,13);
INSERT INTO auth_group_permissions VALUES(14,1,14);
INSERT INTO auth_group_permissions VALUES(15,1,15);
INSERT INTO auth_group_permissions VALUES(16,1,16);
INSERT INTO auth_group_permissions VALUES(17,1,17);
INSERT INTO auth_group_permissions VALUES(18,1,18);
INSERT INTO auth_group_permissions VALUES(19,1,19);
INSERT INTO auth_group_permissions VALUES(20,1,20);
INSERT INTO auth_group_permissions VALUES(21,1,21);
INSERT INTO auth_group_permissions VALUES(22,1,22);
INSERT INTO auth_group_permissions VALUES(23,1,23);
INSERT INTO auth_group_permissions VALUES(24,1,24);
INSERT INTO auth_group_permissions VALUES(25,1,25);
INSERT INTO auth_group_permissions VALUES(26,1,26);
INSERT INTO auth_group_permissions VALUES(27,1,27);
INSERT INTO auth_group_permissions VALUES(28,1,28);
INSERT INTO auth_group_permissions VALUES(29,1,29);
INSERT INTO auth_group_permissions VALUES(30,1,30);
INSERT INTO auth_group_permissions VALUES(31,1,31);
INSERT INTO auth_group_permissions VALUES(32,1,32);
INSERT INTO auth_group_permissions VALUES(33,1,33);
INSERT INTO auth_group_permissions VALUES(34,1,34);
INSERT INTO auth_group_permissions VALUES(35,1,35);
INSERT INTO auth_group_permissions VALUES(36,1,36);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_user_groups VALUES(1,2,1);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_user_user_permissions VALUES(1,2,1);
INSERT INTO auth_user_user_permissions VALUES(2,2,2);
INSERT INTO auth_user_user_permissions VALUES(3,2,3);
INSERT INTO auth_user_user_permissions VALUES(4,2,4);
INSERT INTO auth_user_user_permissions VALUES(5,2,5);
INSERT INTO auth_user_user_permissions VALUES(6,2,6);
INSERT INTO auth_user_user_permissions VALUES(7,2,7);
INSERT INTO auth_user_user_permissions VALUES(8,2,8);
INSERT INTO auth_user_user_permissions VALUES(9,2,9);
INSERT INTO auth_user_user_permissions VALUES(10,2,10);
INSERT INTO auth_user_user_permissions VALUES(11,2,11);
INSERT INTO auth_user_user_permissions VALUES(12,2,12);
INSERT INTO auth_user_user_permissions VALUES(13,2,13);
INSERT INTO auth_user_user_permissions VALUES(14,2,14);
INSERT INTO auth_user_user_permissions VALUES(15,2,15);
INSERT INTO auth_user_user_permissions VALUES(16,2,16);
INSERT INTO auth_user_user_permissions VALUES(17,2,17);
INSERT INTO auth_user_user_permissions VALUES(18,2,18);
INSERT INTO auth_user_user_permissions VALUES(19,2,19);
INSERT INTO auth_user_user_permissions VALUES(20,2,20);
INSERT INTO auth_user_user_permissions VALUES(21,2,21);
INSERT INTO auth_user_user_permissions VALUES(22,2,22);
INSERT INTO auth_user_user_permissions VALUES(23,2,23);
INSERT INTO auth_user_user_permissions VALUES(24,2,24);
INSERT INTO auth_user_user_permissions VALUES(25,2,25);
INSERT INTO auth_user_user_permissions VALUES(26,2,26);
INSERT INTO auth_user_user_permissions VALUES(27,2,27);
INSERT INTO auth_user_user_permissions VALUES(28,2,28);
INSERT INTO auth_user_user_permissions VALUES(29,2,29);
INSERT INTO auth_user_user_permissions VALUES(30,2,30);
INSERT INTO auth_user_user_permissions VALUES(31,2,31);
INSERT INTO auth_user_user_permissions VALUES(32,2,32);
INSERT INTO auth_user_user_permissions VALUES(33,2,33);
INSERT INTO auth_user_user_permissions VALUES(34,2,34);
INSERT INTO auth_user_user_permissions VALUES(35,2,35);
INSERT INTO auth_user_user_permissions VALUES(36,2,36);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
INSERT INTO django_admin_log VALUES(1,'2023-10-02 10:40:49.327609','2','director','[{"added": {}}]',4,1,1);
INSERT INTO django_admin_log VALUES(2,'2023-10-02 10:41:42.462381','1','director','[{"added": {}}]',3,1,1);
INSERT INTO django_admin_log VALUES(3,'2023-10-02 10:41:55.313831','2','director','[{"changed": {"fields": ["Groups"]}}]',4,1,2);
INSERT INTO django_admin_log VALUES(4,'2023-10-02 10:42:12.690867','1','director_group','[{"changed": {"fields": ["Name"]}}]',3,1,2);
INSERT INTO django_admin_log VALUES(5,'2023-10-02 10:45:04.155867','2','director','[{"changed": {"fields": ["Staff status", "Superuser status"]}}]',4,1,2);
INSERT INTO django_admin_log VALUES(6,'2023-10-02 10:48:18.733597','2','director','[{"changed": {"fields": ["User permissions"]}}]',4,2,2);
INSERT INTO django_admin_log VALUES(7,'2023-10-02 10:48:45.936712','2','director','[]',4,2,2);
INSERT INTO django_admin_log VALUES(8,'2023-10-02 13:21:40.686751','34','Robot object (34)','',9,2,3);
INSERT INTO django_admin_log VALUES(9,'2023-10-02 13:21:40.786435','33','Robot object (33)','',9,2,3);
INSERT INTO django_admin_log VALUES(10,'2023-10-02 13:21:40.875148','32','Robot object (32)','',9,2,3);
INSERT INTO django_admin_log VALUES(11,'2023-10-02 13:21:40.963645','31','Robot object (31)','',9,2,3);
INSERT INTO django_admin_log VALUES(12,'2023-10-02 13:21:41.052616','30','Robot object (30)','',9,2,3);
INSERT INTO django_admin_log VALUES(13,'2023-10-02 13:21:41.152700','29','Robot object (29)','',9,2,3);
INSERT INTO django_admin_log VALUES(14,'2023-10-02 13:21:41.245395','28','Robot object (28)','',9,2,3);
INSERT INTO django_admin_log VALUES(15,'2023-10-02 13:21:41.345447','27','Robot object (27)','',9,2,3);
INSERT INTO django_admin_log VALUES(16,'2023-10-02 13:21:41.429552','26','Robot object (26)','',9,2,3);
INSERT INTO django_admin_log VALUES(17,'2023-10-02 13:21:41.518307','25','Robot object (25)','',9,2,3);
INSERT INTO django_admin_log VALUES(18,'2023-10-02 13:21:41.612098','24','Robot object (24)','',9,2,3);
INSERT INTO django_admin_log VALUES(19,'2023-10-02 13:21:41.700535','23','Robot object (23)','',9,2,3);
INSERT INTO django_admin_log VALUES(20,'2023-10-02 13:21:41.789488','22','Robot object (22)','',9,2,3);
INSERT INTO django_admin_log VALUES(21,'2023-10-02 13:21:42.034382','21','Robot object (21)','',9,2,3);
INSERT INTO django_admin_log VALUES(22,'2023-10-02 13:21:42.139780','20','Robot object (20)','',9,2,3);
INSERT INTO django_admin_log VALUES(23,'2023-10-02 13:21:42.244618','19','Robot object (19)','',9,2,3);
INSERT INTO django_admin_log VALUES(24,'2023-10-02 13:21:42.322064','18','Robot object (18)','',9,2,3);
INSERT INTO django_admin_log VALUES(25,'2023-10-02 13:21:42.395444','17','Robot object (17)','',9,2,3);
INSERT INTO django_admin_log VALUES(26,'2023-10-02 13:21:42.499289','16','Robot object (16)','',9,2,3);
INSERT INTO django_admin_log VALUES(27,'2023-10-02 13:21:42.610290','15','Robot object (15)','',9,2,3);
INSERT INTO django_admin_log VALUES(28,'2023-10-02 13:21:42.688268','14','Robot object (14)','',9,2,3);
INSERT INTO django_admin_log VALUES(29,'2023-10-02 13:21:42.765223','13','Robot object (13)','',9,2,3);
INSERT INTO django_admin_log VALUES(30,'2023-10-02 13:21:42.843089','12','Robot object (12)','',9,2,3);
INSERT INTO django_admin_log VALUES(31,'2023-10-02 13:21:42.949614','11','Robot object (11)','',9,2,3);
INSERT INTO django_admin_log VALUES(32,'2023-10-02 13:21:43.038576','10','Robot object (10)','',9,2,3);
INSERT INTO django_admin_log VALUES(33,'2023-10-02 13:21:43.131728','9','Robot object (9)','',9,2,3);
INSERT INTO django_admin_log VALUES(34,'2023-10-02 13:21:43.231082','8','Robot object (8)','',9,2,3);
INSERT INTO django_admin_log VALUES(35,'2023-10-02 13:21:43.309284','7','Robot object (7)','',9,2,3);
INSERT INTO django_admin_log VALUES(36,'2023-10-02 13:21:43.387069','6','Robot object (6)','',9,2,3);
INSERT INTO django_admin_log VALUES(37,'2023-10-02 13:21:43.465006','5','Robot object (5)','',9,2,3);
INSERT INTO django_admin_log VALUES(38,'2023-10-02 13:21:43.560310','4','Robot object (4)','',9,2,3);
INSERT INTO django_admin_log VALUES(39,'2023-10-02 13:21:43.642043','3','Robot object (3)','',9,2,3);
INSERT INTO django_admin_log VALUES(40,'2023-10-02 13:21:43.719813','2','Robot object (2)','',9,2,3);
INSERT INTO django_admin_log VALUES(41,'2023-10-02 13:21:43.808732','1','Robot object (1)','',9,2,3);
INSERT INTO django_admin_log VALUES(42,'2023-10-02 16:41:05.696227','45','Robot object (45)','[{"changed": {"fields": ["Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(43,'2023-10-02 16:41:10.712216','44','Robot object (44)','[{"changed": {"fields": ["Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(44,'2023-10-02 16:41:15.702600','43','Robot object (43)','[{"changed": {"fields": ["Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(45,'2023-10-02 16:59:30.943614','42','Robot object (42)','[{"changed": {"fields": ["Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(46,'2023-10-03 08:38:36.090088','38','Robot object (38)','[{"changed": {"fields": ["Version", "Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(47,'2023-10-03 08:38:44.941561','35','Robot object (35)','[{"changed": {"fields": ["Version", "Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(48,'2023-10-03 10:53:23.346044','46','Robot object (46)','',9,2,3);
INSERT INTO django_admin_log VALUES(49,'2023-10-03 10:53:23.469622','45','Robot object (45)','',9,2,3);
INSERT INTO django_admin_log VALUES(50,'2023-10-03 10:53:23.595599','44','Robot object (44)','',9,2,3);
INSERT INTO django_admin_log VALUES(51,'2023-10-03 10:53:23.684645','43','Robot object (43)','',9,2,3);
INSERT INTO django_admin_log VALUES(52,'2023-10-03 10:53:23.769502','42','Robot object (42)','',9,2,3);
INSERT INTO django_admin_log VALUES(53,'2023-10-03 10:53:23.880457','41','Robot object (41)','',9,2,3);
INSERT INTO django_admin_log VALUES(54,'2023-10-03 10:53:24.005999','40','Robot object (40)','',9,2,3);
INSERT INTO django_admin_log VALUES(55,'2023-10-03 10:53:24.101938','39','Robot object (39)','',9,2,3);
INSERT INTO django_admin_log VALUES(56,'2023-10-03 10:53:24.190402','38','Robot object (38)','',9,2,3);
INSERT INTO django_admin_log VALUES(57,'2023-10-03 10:53:24.272435','37','Robot object (37)','',9,2,3);
INSERT INTO django_admin_log VALUES(58,'2023-10-03 10:53:24.350015','36','Robot object (36)','',9,2,3);
INSERT INTO django_admin_log VALUES(59,'2023-10-03 10:53:24.438654','35','Robot object (35)','',9,2,3);
INSERT INTO django_admin_log VALUES(60,'2023-10-03 10:59:58.951409','55','Robot object (55)','[{"changed": {"fields": ["Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(61,'2023-10-03 11:22:51.573556','51','Robot object (51)','[{"changed": {"fields": ["Version", "Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(62,'2023-10-03 11:23:00.129437','55','Robot object (55)','[{"changed": {"fields": ["Version"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(63,'2023-10-03 11:23:07.171164','47','Robot object (47)','[{"changed": {"fields": ["Created"]}}]',9,2,2);
INSERT INTO django_admin_log VALUES(64,'2023-10-03 11:23:50.370403','49','Robot object (49)','[{"changed": {"fields": ["Version", "Created"]}}]',9,2,2);
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'customers','customer');
INSERT INTO django_content_type VALUES(8,'orders','order');
INSERT INTO django_content_type VALUES(9,'robots','robot');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_customer','Can add customer');
INSERT INTO auth_permission VALUES(26,7,'change_customer','Can change customer');
INSERT INTO auth_permission VALUES(27,7,'delete_customer','Can delete customer');
INSERT INTO auth_permission VALUES(28,7,'view_customer','Can view customer');
INSERT INTO auth_permission VALUES(29,8,'add_order','Can add order');
INSERT INTO auth_permission VALUES(30,8,'change_order','Can change order');
INSERT INTO auth_permission VALUES(31,8,'delete_order','Can delete order');
INSERT INTO auth_permission VALUES(32,8,'view_order','Can view order');
INSERT INTO auth_permission VALUES(33,9,'add_robot','Can add robot');
INSERT INTO auth_permission VALUES(34,9,'change_robot','Can change robot');
INSERT INTO auth_permission VALUES(35,9,'delete_robot','Can delete robot');
INSERT INTO auth_permission VALUES(36,9,'view_robot','Can view robot');
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$180000$6L7jhAq7u5dV$mP04NuE8CoxtqF7tJJx3ASZgR63q2qlUjf46zXFMO1s=','2023-10-02 10:44:48.795712',1,'admin','','admin@admin.ru',1,1,'2023-09-28 10:02:48.317691','');
INSERT INTO auth_user VALUES(2,'pbkdf2_sha256$180000$As7RTjtZ6fGM$a9rm99zGd4GQAefzxH2MHS80igOgJJ2Fii9UcVlDxl4=','2023-10-02 10:45:12',1,'director','','',1,1,'2023-10-02 10:40:49','');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
INSERT INTO auth_group VALUES(1,'director_group');
CREATE TABLE IF NOT EXISTS "customers_customer" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "email" varchar(255) NOT NULL);
CREATE TABLE IF NOT EXISTS "orders_order" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "robot_serial" varchar(5) NOT NULL, "customer_id" integer NOT NULL REFERENCES "customers_customer" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "robots_robot" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "serial" varchar(5) NOT NULL, "model" varchar(2) NOT NULL, "version" varchar(2) NOT NULL, "created" datetime NOT NULL);
INSERT INTO robots_robot VALUES(47,'X5-LT','X5','LT','2023-10-03 00:00:01');
INSERT INTO robots_robot VALUES(48,'R2-D2','R2','D2','2022-12-31 23:59:59');
INSERT INTO robots_robot VALUES(49,'R2-D2','R2','D1','2023-10-03 23:59:59');
INSERT INTO robots_robot VALUES(50,'R2-D2','R2','D2','2022-12-31 23:59:59');
INSERT INTO robots_robot VALUES(51,'R2-D2','R2','D1','2023-10-03 23:59:59');
INSERT INTO robots_robot VALUES(52,'R2-D2','R2','D2','2022-12-31 23:59:59');
INSERT INTO robots_robot VALUES(53,'R2-D2','R2','D2','2022-12-31 23:59:59');
INSERT INTO robots_robot VALUES(54,'R2-D2','R2','D2','2022-12-31 23:59:59');
INSERT INTO robots_robot VALUES(55,'R2-D2','R2','D3','2023-10-03 23:59:59');
INSERT INTO robots_robot VALUES(56,'R2-D2','R2','D2','2022-12-31 23:59:59');
INSERT INTO robots_robot VALUES(57,'R2-D2','R2','D2','2022-12-31 23:59:59');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('1nbeds7f0abl4w6blct04p93d0spnd6p','YmIxZDQ3M2FiYjU4YjIzZDkwZWFhOTA2MjY3NWY4YmU3NjlhMWMxZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOGNkNWQ5YmE4MDQwNGFmMDJhN2Q1YjEzYTI0MDIzYzViMTg2ZTVjIn0=','2023-10-16 10:45:12.176779');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',20);
INSERT INTO sqlite_sequence VALUES('django_admin_log',64);
INSERT INTO sqlite_sequence VALUES('django_content_type',9);
INSERT INTO sqlite_sequence VALUES('auth_permission',36);
INSERT INTO sqlite_sequence VALUES('auth_user',2);
INSERT INTO sqlite_sequence VALUES('auth_group',1);
INSERT INTO sqlite_sequence VALUES('robots_robot',57);
INSERT INTO sqlite_sequence VALUES('auth_group_permissions',36);
INSERT INTO sqlite_sequence VALUES('auth_user_groups',1);
INSERT INTO sqlite_sequence VALUES('auth_user_user_permissions',36);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "orders_order_customer_id_0b76f6a4" ON "orders_order" ("customer_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
COMMIT;
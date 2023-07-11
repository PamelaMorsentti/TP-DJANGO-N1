--
-- File generated with SQLiteStudio v3.3.3 on Tue Jul 11 13:21:05 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
INSERT INTO auth_group (id, name) VALUES (1, 'Administrador');

-- Table: auth_group_permissions
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (1, 1, 1);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (2, 1, 2);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (3, 1, 3);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (4, 1, 4);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (5, 1, 5);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (6, 1, 6);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (7, 1, 7);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (8, 1, 8);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (9, 1, 9);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (10, 1, 10);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (11, 1, 11);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (12, 1, 12);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (13, 1, 13);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (14, 1, 14);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (15, 1, 15);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (16, 1, 16);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (17, 1, 17);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (18, 1, 18);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (19, 1, 19);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (20, 1, 20);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (21, 1, 21);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (22, 1, 22);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (23, 1, 23);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (24, 1, 24);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (25, 1, 25);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (26, 1, 26);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (27, 1, 27);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (28, 1, 28);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (29, 1, 29);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (30, 1, 30);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (31, 1, 31);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (32, 1, 32);

-- Table: auth_permission
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_producto', 'Can add producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_producto', 'Can change producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_producto', 'Can delete producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_producto', 'Can view producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_categoria', 'Can add categoria');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_categoria', 'Can change categoria');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_categoria', 'Can delete categoria');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_categoria', 'Can view categoria');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_site', 'Can add site');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_site', 'Can change site');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_site', 'Can delete site');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_site', 'Can view site');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_registrationprofile', 'Can add registration profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_registrationprofile', 'Can change registration profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_registrationprofile', 'Can delete registration profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_registrationprofile', 'Can view registration profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_supervisedregistrationprofile', 'Can add supervised registration profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_supervisedregistrationprofile', 'Can change supervised registration profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_supervisedregistrationprofile', 'Can delete supervised registration profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_supervisedregistrationprofile', 'Can view supervised registration profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_datousuario', 'Can add dato usuario');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_datousuario', 'Can change dato usuario');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_datousuario', 'Can delete dato usuario');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_datousuario', 'Can view dato usuario');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_categoriaservicio', 'Can add categoria servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_categoriaservicio', 'Can change categoria servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_categoriaservicio', 'Can delete categoria servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_categoriaservicio', 'Can view categoria servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_servicio', 'Can add servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_servicio', 'Can change servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_servicio', 'Can delete servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_servicio', 'Can view servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (57, 15, 'add_servicio', 'Can add servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (58, 15, 'change_servicio', 'Can change servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (59, 15, 'delete_servicio', 'Can delete servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (60, 15, 'view_servicio', 'Can view servicio');

-- Table: auth_user
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$600000$p4QjLQMpLP1oP66uhAbKhm$5apmlhryYKc0LFonfkhnS/LUERMA6ibSS/CwXX35qlY=', '2023-07-09 20:15:24.714045', 1, 'pamelavm', 'Morsentti', 'pamelamorsentti@gmail.com', 1, 1, '2023-07-06 19:15:40', 'Pamela');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$600000$iVKQ4CZZB5YUCmpxIXV4PV$UMnFV0oLoLhnWOA/IaF/pwQFwLGc9uIyP9INNAfjAWc=', NULL, 0, 'fernandoac', 'Cabral', 'cabralfa@gmail.com', 1, 1, '2023-07-06 19:18:54', 'Fernando');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (3, 'pbkdf2_sha256$600000$zfVnsbHVBum3qBJ2Cb9Way$sie4uRLyIwd5WFkdS/ZjgPQPREstPcIEZL3zmPYcVSo=', NULL, 0, 'Camila', 'Cabral Morsentti', 'mariacamilacabralmorsentti@gmail.com', 1, 1, '2023-07-08 12:08:02', 'Maria Camila');

-- Table: auth_user_groups
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: django_admin_log
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '2', 'fernandoac', 1, '[{"added": {}}]', 4, 1, '2023-07-06 19:18:55.836486');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '2', 'fernandoac', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 4, 1, '2023-07-06 19:20:23.295642');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '2', 'fernandoac', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1, '2023-07-06 19:20:43.691984');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '1', 'pamelavm', 2, '[{"changed": {"fields": ["First name", "Last name"]}}]', 4, 1, '2023-07-06 19:21:13.082226');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '1', 'Proyecto --> 2023-07-07 03:50:36+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-07 03:50:37.942909');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '2', 'Ingenierìa Civil --> 2023-07-07 03:51:06+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-07 03:51:07.856716');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '3', 'Higiene y Seguridad --> 2023-07-07 03:52:08+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-07 03:52:10.150034');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '1', 'Proyecto arquitectònicos --> 2023-07-07 03:50:36+00:00', 2, '[{"changed": {"fields": ["Producto"]}}]', 7, 1, '2023-07-07 03:53:03.633183');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '4', 'Consultorìa --> 2023-07-07 03:53:12+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-07 03:53:13.097156');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '5', 'Cálculo estructural --> 2023-07-07 03:53:39+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-07 03:53:40.838719');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '1', 'Dirección de obra --> 2023-07-07 03:50:36+00:00', 2, '[{"changed": {"fields": ["Producto"]}}]', 7, 1, '2023-07-07 03:54:18.396892');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '6', 'Proyectos --> 2023-07-07 03:54:37+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-07 03:54:38.067267');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '6', 'Proyectos --> 2023-07-07 03:54:37+00:00', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1, '2023-07-07 04:01:54.968276');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '1', 'Ingeniería Civil', 1, '[{"added": {}}]', 8, 1, '2023-07-07 04:20:23.407376');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '2', 'Higiene y Seguridad', 1, '[{"added": {}}]', 8, 1, '2023-07-07 04:20:46.797395');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '3', 'Programa de Higiene y Seguridad --> 2023-07-07 03:52:08+00:00', 2, '[{"changed": {"fields": ["Producto"]}}]', 7, 1, '2023-07-07 04:21:13.164002');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '2', 'Ingenierìa Civil --> 2023-07-07 03:51:06+00:00', 3, '', 7, 1, '2023-07-07 04:21:42.334425');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '3', 'Asesoramiento / Consultoría', 1, '[{"added": {}}]', 8, 1, '2023-07-07 04:22:50.938460');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '3', 'Programa de Higiene y Seguridad --> 2023-07-07 03:52:08+00:00', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1, '2023-07-07 04:25:07.052127');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '6', 'Proyectos --> 2023-07-07 03:54:37+00:00', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1, '2023-07-07 04:25:12.863802');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '4', 'Consultorìa --> 2023-07-07 03:53:12+00:00', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1, '2023-07-07 04:25:25.775868');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '1', 'Dirección de obra --> 2023-07-07 03:50:36+00:00', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1, '2023-07-07 04:25:31.195354');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '5', 'Cálculo estructural --> 2023-07-07 03:53:39+00:00', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1, '2023-07-07 04:25:37.102449');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '6', 'Proyectos --> 2023-07-07 03:54:37+00:00', 2, '[{"changed": {"fields": ["Categoria", "Estado"]}}]', 7, 1, '2023-07-08 05:36:39.072747');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '6', 'Proyectos --> 2023-07-07 03:54:37+00:00', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1, '2023-07-08 05:37:38.442697');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '6', 'Proyectos --> 2023-07-07 03:54:37+00:00', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1, '2023-07-08 05:37:47.258347');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '6', 'Proyectos --> 2023-07-07 03:54:37+00:00', 2, '[{"changed": {"fields": ["Estado", "Imagen"]}}]', 7, 1, '2023-07-08 05:38:02.363957');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '3', 'Camila', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1, '2023-07-08 12:20:05.307434');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '1', 'Administrador', 1, '[{"added": {}}]', 3, 1, '2023-07-08 12:27:33.846792');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '3', 'Camila', 2, '[{"changed": {"fields": ["First name"]}}]', 4, 1, '2023-07-08 12:27:59.231527');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '4', 'Proyectos de Arquitectura', 1, '[{"added": {}}]', 8, 1, '2023-07-09 03:32:30.239765');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '7', 'Computo de materiales --> 2023-07-09 03:33:22+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-09 03:33:23.874332');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (33, '8', 'Presupuesto de obra --> 2023-07-09 03:33:30+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-09 03:33:44.160880');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (34, '9', 'Calculo estructural --> 2023-07-09 03:33:49+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-09 03:33:59.725335');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (35, '5', 'Cálculo estructural --> 2023-07-07 03:53:39+00:00', 3, '', 7, 1, '2023-07-09 03:34:20.183634');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (36, '10', 'Peritaje --> 2023-07-09 03:34:33+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-09 03:34:40.209805');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (37, '11', 'Inspeccion de obra --> 2023-07-09 03:34:49+00:00', 1, '[{"added": {}}]', 7, 1, '2023-07-09 03:34:56.861343');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (38, '1', 'Dirección de obra --> 2023-07-07 03:50:36+00:00', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1, '2023-07-09 03:35:11.920583');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (39, '3', 'Programa de Higiene y Seguridad --> 2023-07-07 03:52:08+00:00', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1, '2023-07-09 03:35:16.692626');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (40, '4', 'Consultorìa --> 2023-07-07 03:53:12+00:00', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1, '2023-07-09 03:35:22.243534');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (41, '6', 'Proyectos --> 2023-07-07 03:54:37+00:00', 2, '[]', 7, 1, '2023-07-09 03:35:25.916597');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (42, '2', 'Ingenieria Laboral', 2, '[{"changed": {"fields": ["Nombre", "Slug"]}}]', 8, 1, '2023-07-09 03:36:04.127593');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (43, '2', 'Ingenieria Laboral', 2, '[{"added": {"name": "producto", "object": "Servicios de Higiene y Seguridad para obras de construccion --> 2023-07-09 03:36:54+00:00"}}, {"added": {"name": "producto", "object": "Informes de seguridad contra incendios --> 2023-07-09 03:37:14+00:00"}}, {"added": {"name": "producto", "object": "Evaluacion de riesgos contra incendios --> 2023-07-09 03:37:36+00:00"}}, {"added": {"name": "producto", "object": "Prevencion de riesgos contra incendios --> 2023-07-09 03:38:19+00:00"}}, {"added": {"name": "producto", "object": "Analisis de riesgos laborales --> 2023-07-09 03:38:33+00:00"}}, {"added": {"name": "producto", "object": "Programas de riesgos laborales --> 2023-07-09 03:38:50+00:00"}}, {"added": {"name": "producto", "object": "Capacitaciones --> 2023-07-09 03:39:01+00:00"}}, {"added": {"name": "producto", "object": "Evaluacion de ambientes laborales --> 2023-07-09 03:39:13+00:00"}}]', 8, 1, '2023-07-09 03:39:23.343900');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (44, '3', 'Asesoramiento / Consultoría', 2, '[{"added": {"name": "producto", "object": "Capacitaciones --> 2023-07-09 03:39:41+00:00"}}]', 8, 1, '2023-07-09 03:39:42.730975');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (45, '3', 'Asesoramiento / Consultoría', 2, '[{"added": {"name": "producto", "object": "Evaluaciones --> 2023-07-09 03:41:33+00:00"}}]', 8, 1, '2023-07-09 03:41:35.107689');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (46, '6', 'Proyectos --> 2023-07-07 03:54:37', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1, '2023-07-11 00:06:11.443252');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (47, '3', 'Programa de Higiene y Seguridad --> 2023-07-07 03:52:08', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1, '2023-07-11 00:06:31.319325');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (48, '9', 'Calculo estructural --> 2023-07-09 03:33:49', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1, '2023-07-11 00:06:51.283965');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (49, '6', 'Proyectos --> 2023-07-07 03:54:37', 2, '[{"changed": {"fields": ["Estado"]}}]', 7, 1, '2023-07-11 00:16:30.038706');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (50, '1', 'Ingeniería Civil', 1, '[{"added": {}}]', 16, 1, '2023-07-11 13:17:51.967570');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (51, '2', 'Ingenieria Laboral', 1, '[{"added": {}}]', 16, 1, '2023-07-11 13:18:08.967324');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (52, '3', 'Proyectos de Arquitectura', 1, '[{"added": {}}]', 16, 1, '2023-07-11 13:18:26.426976');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (53, '4', 'Asesoramiento / Consultoría', 1, '[{"added": {}}]', 16, 1, '2023-07-11 13:18:43.404897');

-- Table: django_content_type
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'vista', 'producto');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'vista', 'categoria');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'sites', 'site');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'registration', 'registrationprofile');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'registration', 'supervisedregistrationprofile');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'usuarios', 'datousuario');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'ingenieria', 'categoriaservicio');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'ingenieria', 'servicio');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'ing', 'servicio');
INSERT INTO django_content_type (id, app_label, model) VALUES (16, 'ing', 'categoriaservicio');

-- Table: django_migrations
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2023-07-06 19:12:07.216039');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2023-07-06 19:12:07.253546');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-07-06 19:12:07.277419');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-07-06 19:12:07.304067');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-06 19:12:07.319067');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-07-06 19:12:07.358546');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-07-06 19:12:07.378109');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-07-06 19:12:07.400810');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-07-06 19:12:07.415877');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-07-06 19:12:07.438214');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-07-06 19:12:07.444626');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-06 19:12:07.459876');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-07-06 19:12:07.484087');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-06 19:12:07.509290');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-07-06 19:12:07.537841');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-07-06 19:12:07.557661');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-06 19:12:07.585950');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2023-07-06 19:12:07.603060');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'vista', '0001_initial', '2023-07-07 03:36:11.635440');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'vista', '0002_producto_imagen', '2023-07-07 03:59:07.526715');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'vista', '0003_categoria_producto_categoria', '2023-07-07 04:14:43.408527');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'vista', '0004_producto_estado_remove_producto_categoria_and_more', '2023-07-08 05:34:12.605061');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'registration', '0001_initial', '2023-07-08 15:46:57.000639');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'registration', '0002_registrationprofile_activated', '2023-07-08 15:46:57.020168');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'registration', '0003_migrate_activatedstatus', '2023-07-08 15:46:57.041116');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'registration', '0004_supervisedregistrationprofile', '2023-07-08 15:46:57.063584');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'registration', '0005_activation_key_sha256', '2023-07-08 15:46:57.086182');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'sites', '0001_initial', '2023-07-08 15:46:57.092711');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'sites', '0002_alter_domain_unique', '2023-07-08 15:46:57.106188');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'usuarios', '0001_initial', '2023-07-08 23:26:55.041450');
INSERT INTO django_migrations (id, app, name, applied) VALUES (31, 'ing', '0001_initial', '2023-07-11 11:18:49.706254');

-- Table: django_session
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('kb8qr40n6bjo5b0eautvv1mavuxgrvu0', '.eJxVjEEOgjAQRe_StWlKmTqMS_ecgUzbGYsaSCisjHdXEha6_e-9_zIDb2sZtirLMGZzMY05_W6R00OmHeQ7T7fZpnlalzHaXbEHrbafszyvh_t3ULiWb51YiQKG6ABbSADiUQEDCbUcokTx4DUjserZJ8yd62KjjjIQIKt5fwDl0zgl:1qHUTx:0FJXEFUq5YqzILr3Wh-QUE6a0YB1d111MGKW-xcFeiM', '2023-07-20 19:17:37.276697');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('hgv7us93rwnfncdznhk3m7wia0d0o9ym', '.eJxVjEEOgjAQRe_StWlKmTqMS_ecgUzbGYsaSCisjHdXEha6_e-9_zIDb2sZtirLMGZzMY05_W6R00OmHeQ7T7fZpnlalzHaXbEHrbafszyvh_t3ULiWb51YiQKG6ABbSADiUQEDCbUcokTx4DUjserZJ8yd62KjjjIQIKt5fwDl0zgl:1qIHj1:5rPwmSgR2RlzvSjA--h0-V0nA7j2khq9PZ38fGwjDJ4', '2023-07-22 23:52:27.474870');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('nb7vmlb5yn7euzaprourcx34tfr55nn4', '.eJxVjEEOgjAQRe_StWlKmTqMS_ecgUzbGYsaSCisjHdXEha6_e-9_zIDb2sZtirLMGZzMY05_W6R00OmHeQ7T7fZpnlalzHaXbEHrbafszyvh_t3ULiWb51YiQKG6ABbSADiUQEDCbUcokTx4DUjserZJ8yd62KjjjIQIKt5fwDl0zgl:1qIdci:9iw6OXqMQuagoEbE9vPFkT3vCjp7EIfYxQpUTYBfN4U', '2023-07-23 20:15:24.747994');

-- Table: django_site
CREATE TABLE "django_site" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "domain" varchar(100) NOT NULL UNIQUE);
INSERT INTO django_site (id, name, domain) VALUES (1, 'example.com', 'example.com');

-- Table: ing_categoriaservicio
CREATE TABLE ing_categoriaservicio (id INTEGER PRIMARY KEY, nombre VARCHAR (100) NOT NULL, slug VARCHAR (100) NOT NULL);
INSERT INTO ing_categoriaservicio (id, nombre, slug) VALUES (1, 'Ingeniería Civil', 'ingenieria_civil');
INSERT INTO ing_categoriaservicio (id, nombre, slug) VALUES (2, 'Ingenieria Laboral', 'ingenieria_laboral');
INSERT INTO ing_categoriaservicio (id, nombre, slug) VALUES (3, 'Proyectos de Arquitectura', 'proyetos_de_arquitectura');
INSERT INTO ing_categoriaservicio (id, nombre, slug) VALUES (4, 'Asesoramiento / Consultoría', 'asesoramiento_consultoria');

-- Table: ing_servicio
CREATE TABLE ing_servicio (id integer NOT NULL PRIMARY KEY AUTOINCREMENT, servicio varchar (200), estado varchar (30) NOT NULL, fecha_inicio datetime NOT NULL, imagen varchar (100), descripcion varchar (255) NOT NULL, categoriaservicio_id BIGINT REFERENCES ing_categoriaservicio (id) ON DELETE NO ACTION);

-- Table: registration_registrationprofile
CREATE TABLE "registration_registrationprofile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "activated" bool NOT NULL, "activation_key" varchar(64) NOT NULL);

-- Table: registration_supervisedregistrationprofile
CREATE TABLE "registration_supervisedregistrationprofile" ("registrationprofile_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "registration_registrationprofile" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: usuarios_datousuario
CREATE TABLE "usuarios_datousuario" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "imagen" varchar(100) NULL, "nombre" varchar(50) NOT NULL, "apellido" varchar(50) NOT NULL, "fecha_nacimiento" date NULL, "pais" varchar(30) NOT NULL, "provincia" varchar(40) NOT NULL, "ciudad" varchar(40) NOT NULL, "domicilio" varchar(80) NOT NULL, "codigo_postal" varchar(50) NOT NULL, "telefono" varchar(30) NOT NULL, "celular" varchar(30) NOT NULL, "documento" varchar(30) NOT NULL, "cuit" varchar(30) NOT NULL, "usuario_id" integer NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: vista_categoria
CREATE TABLE "vista_categoria" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre" varchar(100) NOT NULL, "slug" varchar(100) NOT NULL);
INSERT INTO vista_categoria (id, nombre, slug) VALUES (1, 'Ingeniería Civil', 'ingenieria_civil');
INSERT INTO vista_categoria (id, nombre, slug) VALUES (2, 'Ingenieria Laboral', 'ingenieria_laboral');
INSERT INTO vista_categoria (id, nombre, slug) VALUES (3, 'Asesoramiento / Consultoría', 'asesoramiento_consultoria');
INSERT INTO vista_categoria (id, nombre, slug) VALUES (4, 'Proyectos de Arquitectura', 'proyetos_de_arquitectura');

-- Table: vista_producto
CREATE TABLE "vista_producto" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "producto" varchar(200) NOT NULL, "fecha_publicacion" datetime NOT NULL, "imagen" varchar(100) NULL, "estado" varchar(10) NOT NULL, "categoria_id" bigint NULL REFERENCES "vista_categoria" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (1, 'Dirección de obra', '2023-07-07 03:50:36', '', 'Borrador', 1);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (3, 'Programa de Higiene y Seguridad', '2023-07-07 03:52:08', 'producto/2023/07/11/siluetas-sitio-construccion.jpg', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (4, 'Consultorìa', '2023-07-07 03:53:12', '', 'Borrador', 3);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (6, 'Proyectos', '2023-07-07 03:54:37', 'producto/2023/07/11/manos.jpg', 'Borrador', 1);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (7, 'Computo de materiales', '2023-07-09 03:33:22', '', 'Borrador', 1);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (8, 'Presupuesto de obra', '2023-07-09 03:33:30', '', 'Borrador', 1);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (9, 'Calculo estructural', '2023-07-09 03:33:49', 'producto/2023/07/11/silueta-construccion.jpg', 'Borrador', 1);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (10, 'Peritaje', '2023-07-09 03:34:33', '', 'Borrador', 1);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (11, 'Inspeccion de obra', '2023-07-09 03:34:49', '', 'Borrador', 1);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (12, 'Servicios de Higiene y Seguridad para obras de construccion', '2023-07-09 03:36:54', '', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (13, 'Informes de seguridad contra incendios', '2023-07-09 03:37:14', '', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (14, 'Evaluacion de riesgos contra incendios', '2023-07-09 03:37:36', '', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (15, 'Prevencion de riesgos contra incendios', '2023-07-09 03:38:19', '', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (16, 'Analisis de riesgos laborales', '2023-07-09 03:38:33', '', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (17, 'Programas de riesgos laborales', '2023-07-09 03:38:50', '', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (18, 'Capacitaciones', '2023-07-09 03:39:01', '', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (19, 'Evaluacion de ambientes laborales', '2023-07-09 03:39:13', '', 'Borrador', 2);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (20, 'Capacitaciones', '2023-07-09 03:39:41', '', 'Borrador', 3);
INSERT INTO vista_producto (id, producto, fecha_publicacion, imagen, estado, categoria_id) VALUES (21, 'Evaluaciones', '2023-07-09 03:41:33', '', 'Borrador', 3);

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- Index: ing_servicio_descripcion_42e6ca2d
CREATE INDEX ing_servicio_descripcion_42e6ca2d ON ing_servicio ("descripcion");

-- Index: ing_servicio_servicio_1cf65e75
CREATE INDEX ing_servicio_servicio_1cf65e75 ON ing_servicio ("servicio");

-- Index: usuarios_datousuario_usuario_id_71ff3de4
CREATE INDEX "usuarios_datousuario_usuario_id_71ff3de4" ON "usuarios_datousuario" ("usuario_id");

-- Index: vista_categoria_nombre_605a6ffb
CREATE INDEX "vista_categoria_nombre_605a6ffb" ON "vista_categoria" ("nombre");

-- Index: vista_categoria_slug_767cdd4d
CREATE INDEX "vista_categoria_slug_767cdd4d" ON "vista_categoria" ("slug");

-- Index: vista_producto_categoria_id_5e2257c1
CREATE INDEX "vista_producto_categoria_id_5e2257c1" ON "vista_producto" ("categoria_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

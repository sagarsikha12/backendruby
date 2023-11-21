PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20231014072940');
INSERT INTO schema_migrations VALUES('20231014164624');
INSERT INTO schema_migrations VALUES('20231015013538');
INSERT INTO schema_migrations VALUES('20231015014759');
INSERT INTO schema_migrations VALUES('20231015042039');
INSERT INTO schema_migrations VALUES('20231015042040');
INSERT INTO schema_migrations VALUES('20231015081625');
INSERT INTO schema_migrations VALUES('20231015081804');
INSERT INTO schema_migrations VALUES('20231016030049');
INSERT INTO schema_migrations VALUES('20231017080236');
INSERT INTO schema_migrations VALUES('20231017113301');
INSERT INTO schema_migrations VALUES('20231018030514');
INSERT INTO schema_migrations VALUES('20231023011709');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2023-10-15 20:15:53.798187','2023-10-15 20:15:53.798187');
CREATE TABLE IF NOT EXISTS "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime(6), "remember_created_at" datetime(6), "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "username" varchar, "first_name" varchar, "last_name" varchar);
INSERT INTO users VALUES(1,'test@test.com','$2a$12$EmVHJscyMX0yLRXlVFoxjuya8dr/94ws7t06RTVFKAwXmVAMsIynW',NULL,NULL,NULL,'2023-10-15 20:48:09.635431','2023-10-15 20:48:09.635431',NULL,NULL,NULL);
INSERT INTO users VALUES(2,'test1@test.com','$2a$12$5XvMEjQ6ip85Za4D8Wgr..XoK7THknUKqaSEtEc.AvLX3egtNaXSG',NULL,NULL,NULL,'2023-10-16 02:51:31.479114','2023-10-16 02:51:31.479114',NULL,NULL,NULL);
INSERT INTO users VALUES(3,'bishal@gmail','$2a$12$K4TfpW5wII0Ee6kwxOMEoOK5mBQD4/Lvg27Oo6Tc12VqG/EXigvzG',NULL,NULL,NULL,'2023-10-17 23:09:10.673436','2023-10-17 23:09:10.673436',NULL,NULL,NULL);
INSERT INTO users VALUES(4,'bishal@gmail.com','$2a$12$dg4KK4rIgggUdEEDv5rAh.wD3k4UrUOlja6JDeJNx3b/Nd7Te5pk2',NULL,NULL,NULL,'2023-10-18 03:28:35.072625','2023-10-18 03:28:35.072625','ramkatwal','Ram','Katwal');
INSERT INTO users VALUES(5,'test@example.com','$2a$12$6xOExJQSCLuN.Dn6oOX3s.V0BBOcr.qriya5PIKzuB7.2O/f0KanS',NULL,NULL,NULL,'2023-10-23 01:34:51.956923','2023-10-23 01:34:51.956923','johndoe','John','Doe');
INSERT INTO users VALUES(6,'d@gmail.com','$2a$12$CapGGsmdkFa15stP65VKWeYSY83qhnJLt9owpuY3TXPd.sMhbAdVi',NULL,NULL,NULL,'2023-10-23 01:45:53.446710','2023-10-23 01:45:53.446710','fUsername','Name','lastname');
INSERT INTO users VALUES(7,'dfa@g.com','$2a$12$KtULx266K0/WPHYGDVGh8uXOrw44I83Q56MxQ383oS.bN5sFpFpQy',NULL,NULL,NULL,'2023-10-23 01:48:20.797188','2023-10-23 01:48:20.797188','dfa','dfa','da');
INSERT INTO users VALUES(8,'suvashbhandari@gmail.com','$2a$12$ZQWPHK5..KZ8H9yzNLOIfuy.vNGUR3Wo7.nAlD2GaFQwCJBuFkVm.',NULL,NULL,NULL,'2023-10-24 03:00:22.756629','2023-10-24 03:00:22.756629','suvash','Suvash','bhandari');
INSERT INTO users VALUES(9,'sabu@gmail.com','$2a$12$JTd0KaIeMJOjsx/sn/hKlu/leSQZfWcO4s5dpExkNx13jbX1MQQHW',NULL,NULL,NULL,'2023-10-24 03:02:35.338415','2023-10-24 03:02:35.338415','sabu','sabu','tamang');
CREATE TABLE IF NOT EXISTS "categories" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "name" varchar);
INSERT INTO categories VALUES(1,'2023-10-15 20:55:37.747359','2023-10-15 20:55:37.747359','water');
INSERT INTO categories VALUES(2,'2023-10-24 01:49:52.499904','2023-10-24 01:49:52.499904','Social Awareness');
INSERT INTO categories VALUES(3,'2023-10-24 01:56:19.931240','2023-10-24 01:56:19.931240','It Awareness');
INSERT INTO categories VALUES(4,'2023-10-24 01:57:17.187551','2023-10-24 01:57:17.187551','XSS awarenesss');
INSERT INTO categories VALUES(5,'2023-10-24 01:58:28.220100','2023-10-24 01:58:28.220100','Blog 2023');
CREATE TABLE IF NOT EXISTS "active_storage_blobs" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar NOT NULL, "filename" varchar NOT NULL, "content_type" varchar, "metadata" text, "service_name" varchar NOT NULL, "byte_size" bigint NOT NULL, "checksum" varchar, "created_at" datetime(6) NOT NULL);
INSERT INTO active_storage_blobs VALUES(1,'pz6jzzmwlor4dy546va2fvfa9ke9','2221e872-721e-4a40-933d-baddcfb1c8b0.png','image/png',NULL,'local',32984,'f5sXdWViC+/BSHYqUJrkZA==','2023-10-15 21:25:36.579746');
INSERT INTO active_storage_blobs VALUES(13,'064p0of97gtl53d8q3lrdjawd2o1','a5a218fc-d6e8-4243-96a3-5384a97c100f.jpg','image/jpeg','{"identified":true,"analyzed":true}','local',114390,'86OD6qR0OCPxXXR9hR/5nw==','2023-10-17 10:51:16.243237');
INSERT INTO active_storage_blobs VALUES(14,'eg1m6jueuzmu9r5an4qvb3z11ewr','a5a218fc-d6e8-4243-96a3-5384a97c100f.jpg','image/jpeg','{"identified":true,"analyzed":true}','local',114390,'86OD6qR0OCPxXXR9hR/5nw==','2023-10-17 11:10:18.432417');
INSERT INTO active_storage_blobs VALUES(16,'werohp8fxxc639rx2rsgs13luon2','a5a218fc-d6e8-4243-96a3-5384a97c100f.jpg','image/jpeg','{"identified":true,"analyzed":true}','local',114390,'86OD6qR0OCPxXXR9hR/5nw==','2023-10-17 23:09:47.655726');
INSERT INTO active_storage_blobs VALUES(18,'im6fu6g3vrwxbrl5m67ztq98a8kn','3364ed28-8e54-4257-a5ab-300582e4a1fc.png','image/png','{"identified":true,"analyzed":true}','local',30904,'td6oFWA0tZQqJmeXJWcfyw==','2023-10-23 09:38:42.260740');
INSERT INTO active_storage_blobs VALUES(19,'4gkp8jjodyri0y9cez9wsz4sraf4','3364ed28-8e54-4257-a5ab-300582e4a1fc.png','image/png','{"identified":true,"analyzed":true}','local',30904,'td6oFWA0tZQqJmeXJWcfyw==','2023-10-23 09:39:59.180183');
INSERT INTO active_storage_blobs VALUES(20,'562uvuy315bnhoszdcuctbhtbko8','2221e872-721e-4a40-933d-baddcfb1c8b0.png','image/png','{"identified":true,"analyzed":true}','local',32984,'f5sXdWViC+/BSHYqUJrkZA==','2023-10-23 09:41:58.681998');
INSERT INTO active_storage_blobs VALUES(21,'2k04eagr1hri73r1uymqmf1imzn4','3364ed28-8e54-4257-a5ab-300582e4a1fc.png','image/png','{"identified":true,"analyzed":true}','local',30904,'td6oFWA0tZQqJmeXJWcfyw==','2023-10-23 09:46:39.526873');
INSERT INTO active_storage_blobs VALUES(22,'d80oy7u1onb8t5twxvidyolrfkf1','2221e872-721e-4a40-933d-baddcfb1c8b0.png','image/png','{"identified":true,"analyzed":true}','local',32984,'f5sXdWViC+/BSHYqUJrkZA==','2023-10-24 01:50:09.150264');
CREATE TABLE IF NOT EXISTS "active_storage_attachments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "record_type" varchar NOT NULL, "record_id" bigint NOT NULL, "blob_id" bigint NOT NULL, "created_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_c3b3935057"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
INSERT INTO active_storage_attachments VALUES(12,'cover_image','Campaign',14,13,'2023-10-17 10:51:16.244566');
INSERT INTO active_storage_attachments VALUES(13,'cover_image','Campaign',34,14,'2023-10-17 11:10:18.436692');
INSERT INTO active_storage_attachments VALUES(15,'cover_image','Campaign',36,16,'2023-10-17 23:09:47.657170');
INSERT INTO active_storage_attachments VALUES(17,'cover_image','Campaign',38,18,'2023-10-23 09:38:42.261670');
INSERT INTO active_storage_attachments VALUES(18,'cover_image','Campaign',39,19,'2023-10-23 09:39:59.181709');
INSERT INTO active_storage_attachments VALUES(19,'cover_image','Campaign',40,20,'2023-10-23 09:41:58.683175');
INSERT INTO active_storage_attachments VALUES(20,'cover_image','Campaign',41,21,'2023-10-23 09:46:39.527414');
INSERT INTO active_storage_attachments VALUES(21,'cover_image','Campaign',42,22,'2023-10-24 01:50:09.151514');
CREATE TABLE IF NOT EXISTS "active_storage_variant_records" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "blob_id" bigint NOT NULL, "variation_digest" varchar NOT NULL, CONSTRAINT "fk_rails_993965df05"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
CREATE TABLE IF NOT EXISTS "action_text_rich_texts" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "body" text, "record_type" varchar NOT NULL, "record_id" bigint NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
INSERT INTO action_text_rich_texts VALUES(14,'content','<div>dfafa</div>','Campaign',14,'2023-10-17 03:10:44.870159','2023-10-17 03:10:44.870159');
INSERT INTO action_text_rich_texts VALUES(34,'content','<div>FDAFADFA</div>','Campaign',34,'2023-10-17 11:10:18.429678','2023-10-17 11:10:18.429678');
INSERT INTO action_text_rich_texts VALUES(36,'content','<blockquote>odfsijfaklj;lak jajo;v ;sodklfja;ofiefnvsdklfoad;lfjaow;f hvkafdskajf;disofjhad o;jasd</blockquote>','Campaign',36,'2023-10-17 23:09:47.650835','2023-10-17 23:09:47.650835');
INSERT INTO action_text_rich_texts VALUES(38,'content','22222dfa','Campaign',38,'2023-10-23 09:38:42.257587','2023-10-24 01:37:38.458613');
INSERT INTO action_text_rich_texts VALUES(39,'content','3333','Campaign',39,'2023-10-23 09:39:59.176450','2023-10-23 09:39:59.176450');
INSERT INTO action_text_rich_texts VALUES(40,'content','dfasfasdf','Campaign',40,'2023-10-23 09:41:58.677851','2023-10-23 09:41:58.677851');
INSERT INTO action_text_rich_texts VALUES(41,'content','fda','Campaign',41,'2023-10-23 09:46:39.525160','2023-10-23 09:46:39.525160');
INSERT INTO action_text_rich_texts VALUES(42,'content','Thladkf','Campaign',42,'2023-10-24 01:50:09.145930','2023-10-24 01:50:09.145930');
CREATE TABLE IF NOT EXISTS "campaigns" ("id" integer NOT NULL PRIMARY KEY, "title" varchar DEFAULT NULL, "cover_image" varchar DEFAULT NULL, "user_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "category_id" integer NOT NULL, CONSTRAINT "fk_rails_76efd80cae"
FOREIGN KEY ("category_id")
  REFERENCES "categories" ("id")
, CONSTRAINT "fk_rails_9eb8249bf2"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO campaigns VALUES(14,'Lorem text',NULL,2,'2023-10-17 03:10:44.862805','2023-10-17 10:51:16.245217',1);
INSERT INTO campaigns VALUES(34,'dsaF',NULL,2,'2023-10-17 11:10:18.427780','2023-10-17 11:10:18.437314',1);
INSERT INTO campaigns VALUES(36,'testing',NULL,3,'2023-10-17 23:09:47.648209','2023-10-17 23:09:47.658127',1);
INSERT INTO campaigns VALUES(38,'2dfa',NULL,1,'2023-10-23 09:38:42.255400','2023-10-24 01:37:38.462347',1);
INSERT INTO campaigns VALUES(39,'33',NULL,1,'2023-10-23 09:39:59.174063','2023-10-23 09:39:59.182944',1);
INSERT INTO campaigns VALUES(40,'dfadf',NULL,1,'2023-10-23 09:41:58.675060','2023-10-23 09:41:58.684011',1);
INSERT INTO campaigns VALUES(41,'dfa',NULL,1,'2023-10-23 09:46:39.524187','2023-10-23 09:46:39.527819',1);
INSERT INTO campaigns VALUES(42,'fas',NULL,1,'2023-10-24 01:50:09.143313','2023-10-24 01:50:09.152374',2);
CREATE TABLE IF NOT EXISTS "notifications" ("id" integer NOT NULL PRIMARY KEY, "user_id" integer NOT NULL, "campaign_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "status" integer DEFAULT NULL, "read" boolean DEFAULT 0, CONSTRAINT "fk_rails_b080fb4855"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO notifications VALUES(11,2,31,'2023-10-17 08:12:14.262645','2023-10-17 09:42:53.416381',1,0);
INSERT INTO notifications VALUES(13,2,32,'2023-10-17 08:45:21.688216','2023-10-17 09:42:54.974755',1,0);
INSERT INTO notifications VALUES(15,2,33,'2023-10-17 09:07:58.891023','2023-10-17 09:42:56.194358',1,0);
INSERT INTO notifications VALUES(16,1,34,'2023-10-17 11:10:18.442862','2023-10-17 11:10:36.749719',1,0);
INSERT INTO notifications VALUES(17,2,34,'2023-10-17 11:10:18.445060','2023-10-17 11:36:39.894435',1,0);
INSERT INTO notifications VALUES(20,1,36,'2023-10-17 23:09:47.676735','2023-10-17 23:10:03.923345',1,0);
INSERT INTO notifications VALUES(21,2,36,'2023-10-17 23:09:47.679349','2023-10-17 23:09:47.679349',0,0);
INSERT INTO notifications VALUES(22,3,36,'2023-10-17 23:09:47.681275','2023-10-18 03:01:09.767953',1,0);
INSERT INTO notifications VALUES(24,2,37,'2023-10-23 09:35:53.522227','2023-10-23 09:35:53.522227',0,0);
INSERT INTO notifications VALUES(25,3,37,'2023-10-23 09:35:53.523799','2023-10-23 09:35:53.523799',0,0);
INSERT INTO notifications VALUES(26,4,37,'2023-10-23 09:35:53.525230','2023-10-23 09:35:53.525230',0,0);
INSERT INTO notifications VALUES(27,5,37,'2023-10-23 09:35:53.526672','2023-10-23 09:35:53.526672',0,0);
INSERT INTO notifications VALUES(28,6,37,'2023-10-23 09:35:53.527917','2023-10-23 09:35:53.527917',0,0);
INSERT INTO notifications VALUES(29,7,37,'2023-10-23 09:35:53.529273','2023-10-23 09:35:53.529273',0,0);
INSERT INTO notifications VALUES(30,1,38,'2023-10-23 09:38:42.267864','2023-10-24 02:48:18.826919',1,0);
INSERT INTO notifications VALUES(31,2,38,'2023-10-23 09:38:42.270251','2023-10-23 09:38:42.270251',0,0);
INSERT INTO notifications VALUES(32,3,38,'2023-10-23 09:38:42.272402','2023-10-23 09:38:42.272402',0,0);
INSERT INTO notifications VALUES(33,4,38,'2023-10-23 09:38:42.274306','2023-10-23 09:38:42.274306',0,0);
INSERT INTO notifications VALUES(34,5,38,'2023-10-23 09:38:42.276609','2023-10-23 09:38:42.276609',0,0);
INSERT INTO notifications VALUES(35,6,38,'2023-10-23 09:38:42.278640','2023-10-23 09:38:42.278640',0,0);
INSERT INTO notifications VALUES(36,7,38,'2023-10-23 09:38:42.280702','2023-10-23 09:38:42.280702',0,0);
INSERT INTO notifications VALUES(37,1,39,'2023-10-23 09:39:59.191385','2023-10-24 02:49:03.487742',1,0);
INSERT INTO notifications VALUES(38,2,39,'2023-10-23 09:39:59.194289','2023-10-23 09:39:59.194289',0,0);
INSERT INTO notifications VALUES(39,3,39,'2023-10-23 09:39:59.196490','2023-10-23 09:39:59.196490',0,0);
INSERT INTO notifications VALUES(40,4,39,'2023-10-23 09:39:59.198606','2023-10-23 09:39:59.198606',0,0);
INSERT INTO notifications VALUES(41,5,39,'2023-10-23 09:39:59.200456','2023-10-23 09:39:59.200456',0,0);
INSERT INTO notifications VALUES(42,6,39,'2023-10-23 09:39:59.202096','2023-10-23 09:39:59.202096',0,0);
INSERT INTO notifications VALUES(43,7,39,'2023-10-23 09:39:59.203966','2023-10-23 09:39:59.203966',0,0);
INSERT INTO notifications VALUES(44,1,40,'2023-10-23 09:41:58.689480','2023-10-24 02:51:33.489929',1,0);
INSERT INTO notifications VALUES(45,2,40,'2023-10-23 09:41:58.691641','2023-10-23 09:41:58.691641',0,0);
INSERT INTO notifications VALUES(46,3,40,'2023-10-23 09:41:58.693876','2023-10-23 09:41:58.693876',0,0);
INSERT INTO notifications VALUES(47,4,40,'2023-10-23 09:41:58.696134','2023-10-23 09:41:58.696134',0,0);
INSERT INTO notifications VALUES(48,5,40,'2023-10-23 09:41:58.698102','2023-10-23 09:41:58.698102',0,0);
INSERT INTO notifications VALUES(49,6,40,'2023-10-23 09:41:58.700251','2023-10-23 09:41:58.700251',0,0);
INSERT INTO notifications VALUES(50,7,40,'2023-10-23 09:41:58.702138','2023-10-23 09:41:58.702138',0,0);
INSERT INTO notifications VALUES(51,1,41,'2023-10-23 09:46:39.533689','2023-10-23 09:46:39.533689',0,0);
INSERT INTO notifications VALUES(52,2,41,'2023-10-23 09:46:39.535176','2023-10-23 09:46:39.535176',0,0);
INSERT INTO notifications VALUES(53,3,41,'2023-10-23 09:46:39.536653','2023-10-23 09:46:39.536653',0,0);
INSERT INTO notifications VALUES(54,4,41,'2023-10-23 09:46:39.537828','2023-10-23 09:46:39.537828',0,0);
INSERT INTO notifications VALUES(55,5,41,'2023-10-23 09:46:39.538975','2023-10-23 09:46:39.538975',0,0);
INSERT INTO notifications VALUES(56,6,41,'2023-10-23 09:46:39.540140','2023-10-23 09:46:39.540140',0,0);
INSERT INTO notifications VALUES(57,7,41,'2023-10-23 09:46:39.541351','2023-10-23 09:46:39.541351',0,0);
INSERT INTO notifications VALUES(58,1,42,'2023-10-24 01:50:09.165672','2023-10-24 01:50:09.165672',0,0);
INSERT INTO notifications VALUES(59,2,42,'2023-10-24 01:50:09.168131','2023-10-24 01:50:09.168131',0,0);
INSERT INTO notifications VALUES(60,3,42,'2023-10-24 01:50:09.170347','2023-10-24 01:50:09.170347',0,0);
INSERT INTO notifications VALUES(61,4,42,'2023-10-24 01:50:09.172303','2023-10-24 01:50:09.172303',0,0);
INSERT INTO notifications VALUES(62,5,42,'2023-10-24 01:50:09.174265','2023-10-24 01:50:09.174265',0,0);
INSERT INTO notifications VALUES(63,6,42,'2023-10-24 01:50:09.176268','2023-10-24 01:50:09.176268',0,0);
INSERT INTO notifications VALUES(64,7,42,'2023-10-24 01:50:09.177880','2023-10-24 01:50:09.177880',0,0);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('users',9);
INSERT INTO sqlite_sequence VALUES('categories',5);
INSERT INTO sqlite_sequence VALUES('active_storage_blobs',22);
INSERT INTO sqlite_sequence VALUES('action_text_rich_texts',42);
INSERT INTO sqlite_sequence VALUES('active_storage_attachments',21);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs" ("key");
CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments" ("blob_id");
CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments" ("record_type", "record_id", "name", "blob_id");
CREATE UNIQUE INDEX "index_active_storage_variant_records_uniqueness" ON "active_storage_variant_records" ("blob_id", "variation_digest");
CREATE UNIQUE INDEX "index_action_text_rich_texts_uniqueness" ON "action_text_rich_texts" ("record_type", "record_id", "name");
CREATE INDEX "index_campaigns_on_user_id" ON "campaigns" ("user_id");
CREATE INDEX "index_campaigns_on_category_id" ON "campaigns" ("category_id");
CREATE INDEX "index_notifications_on_user_id" ON "notifications" ("user_id");
CREATE INDEX "index_notifications_on_campaign_id" ON "notifications" ("campaign_id");
CREATE UNIQUE INDEX "index_users_on_username" ON "users" ("username");
COMMIT;

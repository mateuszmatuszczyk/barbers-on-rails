gordon@DESKTOP-SKUD77D:/mnt/c/Users/Marcel/Desktop/Mateusz/Cloud/BarbersOnRails$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   db/migrate/20190330032624_devise_create_users.rb
        modified:   db/migrate/20190331143510_create_barbers.rb
        modified:   db/migrate/20190331235139_create_customers.rb
        modified:   db/migrate/20190401212625_create_services.rb
        modified:   db/schema.rb
        modified:   db/seeds.rb

no changes added to commit (use "git add" and/or "git commit -a")
gordon@DESKTOP-SKUD77D:/mnt/c/Users/Marcel/Desktop/Mateusz/Cloud/BarbersOnRails$ git add .
gordon@DESKTOP-SKUD77D:/mnt/c/Users/Marcel/Desktop/Mateusz/Cloud/BarbersOnRails$ git commit -m "Added objects to seed.rb file"
[master f63bb8b] Added objects to seed.rb file
 6 files changed, 46 insertions(+), 42 deletions(-)
 rewrite db/seeds.rb (82%)
gordon@DESKTOP-SKUD77D:/mnt/c/Users/Marcel/Desktop/Mateusz/Cloud/BarbersOnRails$ git push heroku master
Counting objects: 10, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (10/10), done.
Writing objects: 100% (10/10), 1.91 KiB | 975.00 KiB/s, done.
Total 10 (delta 7), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote: 
remote: -----> Ruby app detected
remote: -----> Compiling Ruby/Rails
remote: -----> Using Ruby version: ruby-2.6.3
remote: -----> Installing dependencies using bundler 2.0.2
remote:        Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4 --deployment
remote:        The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
remote:        Using rake 12.3.3
remote:        Using concurrent-ruby 1.1.5
remote:        Using i18n 1.6.0
remote:        Using minitest 5.11.3
remote:        Using thread_safe 0.3.6
remote:        Using tzinfo 1.2.5
remote:        Using activesupport 5.2.3
remote:        Using builder 3.2.3
remote:        Using erubi 1.8.0
remote:        Using mini_portile2 2.4.0
remote:        Using nokogiri 1.10.2
remote:        Using rails-dom-testing 2.0.3
remote:        Using crass 1.0.4
remote:        Using loofah 2.2.3
remote:        Using rails-html-sanitizer 1.0.4
remote:        Using actionview 5.2.3
remote:        Using rack 2.0.6
remote:        Using rack-test 1.1.0
remote:        Using actionpack 5.2.3
remote:        Using nio4r 2.3.1
remote:        Using websocket-extensions 0.1.3
remote:        Using websocket-driver 0.7.0
remote:        Using actioncable 5.2.3
remote:        Using globalid 0.4.2
remote:        Using activejob 5.2.3
remote:        Using mini_mime 1.0.1
remote:        Using mail 2.7.1
remote:        Using actionmailer 5.2.3
remote:        Using activemodel 5.2.3
remote:        Using arel 9.0.0
remote:        Using activerecord 5.2.3
remote:        Using mimemagic 0.3.3
remote:        Using marcel 0.3.3
remote:        Using activestorage 5.2.3
remote:        Using execjs 2.7.0
remote:        Using autoprefixer-rails 9.6.1
remote:        Using bcrypt 3.1.12
remote:        Using msgpack 1.2.9
remote:        Using bootsnap 1.4.2
remote:        Using ffi 1.10.0
remote:        Using sassc 2.0.1
remote:        Using bootstrap-sass 3.4.1
remote:        Using bootstrap_form 4.2.0
remote:        Using bundler 2.0.2
remote:        Using coffee-script-source 1.12.2
remote:        Using coffee-script 2.4.1
remote:        Using method_source 0.9.2
remote:        Using thor 0.20.3
remote:        Using railties 5.2.3
remote:        Using coffee-rails 4.2.2
remote:        Using orm_adapter 0.5.0
remote:        Using responders 2.4.1
remote:        Using warden 1.2.8
remote:        Using devise 4.6.2
remote:        Using font-awesome-rails 4.7.0.5
remote:        Using multi_json 1.13.1
remote:        Using jbuilder 2.8.0
remote:        Using jquery-rails 4.3.5
remote:        Using pg 1.1.4
remote:        Using puma 3.12.1
remote:        Using sprockets 3.7.2
remote:        Using sprockets-rails 3.2.1
remote:        Using rails 5.2.3
remote:        Using rb-fsevent 0.10.3
remote:        Using rb-inotify 0.10.0
remote:        Using sass-listen 4.0.0
remote:        Using sass 3.7.3
remote:        Using tilt 2.0.9
remote:        Using sass-rails 5.0.7
remote:        Using turbolinks-source 5.2.0
remote:        Using turbolinks 5.2.0
remote:        Using uglifier 4.1.20
remote:        Bundle complete! 24 Gemfile dependencies, 72 gems now installed.
remote:        Gems in the groups development and test were not installed.
remote:        Bundled gems are installed into `./vendor/bundle`
remote:        Bundle completed (1.77s)
remote:        Cleaning up the bundler cache.
remote: -----> Installing node-v10.15.3-linux-x64
remote: -----> Detecting rake tasks
remote: -----> Preparing app for Rails asset pipeline
remote:        Running: rake assets:precompile
remote:        Yarn executable was not detected in the system.
remote:        Download Yarn at https://yarnpkg.com/en/docs/install
remote:        Asset precompilation completed (1.74s)
remote:        Cleaning assets
remote:        Running: rake assets:clean
remote: -----> Detecting rails configuration
remote: 
remote: ###### WARNING:
remote:
remote:        You set your `config.assets.compile = true` in production.
remote:        This can negatively impact the performance of your application.
remote:
remote:        For more information can be found in this article:
remote:          https://devcenter.heroku.com/articles/rails-asset-pipeline#compile-set-to-true-in-production
remote:
remote:
remote: ###### WARNING:
remote:
remote:        You set your `config.active_storage.service` to :local in production.
remote:        If you are uploading files to this app, they will not persist after the app
remote:        is restarted, on one-off dynos, or if the app has multiple dynos.
remote:        Heroku applications have an ephemeral file system. To
remote:        persist uploaded files, please use a service such as S3 and update your Rails
remote:        configuration.
remote:
remote:        For more information can be found in this article:
remote:          https://devcenter.heroku.com/articles/active-storage-on-heroku
remote:
remote:
remote: ###### WARNING:
remote:
remote:        We detected that some binary dependencies required to
remote:        use all the preview features of Active Storage are not
remote:        present on this system.
remote:
remote:        For more information please see:
remote:          https://devcenter.heroku.com/articles/active-storage-on-heroku
remote:
remote:
remote: ###### WARNING:
remote:
remote:        No Procfile detected, using the default web server.
remote:        We recommend explicitly declaring how to boot your server process via a Procfile.
remote:        https://devcenter.heroku.com/articles/ruby-default-web-server
remote:
remote:
remote: -----> Discovering process types
remote:        Procfile declares types     -> (none)
remote:        Default types for buildpack -> console, rake, web
remote:
remote: -----> Compressing...
remote:        Done: 53.8M
remote: -----> Launching...
remote:        Released v20
remote:        https://barbers-on-rails.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
To https://git.heroku.com/barbers-on-rails.git
   d8715a8..f63bb8b  master -> master
gordon@DESKTOP-SKUD77D:/mnt/c/Users/Marcel/Desktop/Mateusz/Cloud/BarbersOnRails$ heroku pg:psql
--> Connecting to postgresql-lively-62663
psql (10.10 (Ubuntu 10.10-0ubuntu0.18.04.1), server 11.5 (Ubuntu 11.5-1.pgdg16.04+1))
WARNING: psql major version 10, server major version 11.
         Some psql features might not work.
SSL connection (protocol: TLSv1.2, cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256, compression: off)
Type "help" for help.

barbers-on-rails::DATABASE=> quit
barbers-on-rails::DATABASE-> \q
gordon@DESKTOP-SKUD77D:/mnt/c/Users/Marcel/Desktop/Mateusz/Cloud/BarbersOnRails$ heroku restart; heroku pg:reset DATABASE --confirm barbers-on-rails; heroku run rake db:migrate
Restarting dynos on ⬢ barbers-on-rails... done
Resetting postgresql-lively-62663... done
Running rake db:migrate on ⬢ barbers-on-rails... up, run.5096 (Free)
D, [2019-08-20T15:05:20.631891 #4] DEBUG -- :    (38.8ms)  CREATE TABLE "schema_migrations" ("version" character varying NOT NULL PRIMARY KEY)
D, [2019-08-20T15:05:20.645014 #4] DEBUG -- :    (9.5ms)  CREATE TABLE "ar_internal_metadata" ("key" character varying NOT NULL PRIMARY KEY, "value" character varying, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL)
D, [2019-08-20T15:05:20.647856 #4] DEBUG -- :    (1.4ms)  SELECT pg_try_advisory_lock(4908069146559467700)
D, [2019-08-20T15:05:20.669323 #4] DEBUG -- :    (1.3ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
I, [2019-08-20T15:05:20.670572 #4]  INFO -- : Migrating to DeviseCreateUsers (20190330032624)
D, [2019-08-20T15:05:20.674325 #4] DEBUG -- :    (0.9ms)  BEGIN
== 20190330032624 DeviseCreateUsers: migrating ================================
-- create_table(:users)
D, [2019-08-20T15:05:20.693184 #4] DEBUG -- :    (16.0ms)  CREATE TABLE "users" ("id" bigserial primary key, "email" character varying DEFAULT '' NOT NULL, "encrypted_password" character varying DEFAULT '' NOT 
NULL, "reset_password_token" character varying, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL)
   -> 0.0187s
-- add_index(:users, :email, {:unique=>true})
D, [2019-08-20T15:05:20.702694 #4] DEBUG -- :    (3.4ms)  CREATE UNIQUE INDEX  "index_users_on_email" ON "users"  ("email")
   -> 0.0094s
-- add_index(:users, :reset_password_token, {:unique=>true})
D, [2019-08-20T15:05:20.709195 #4] DEBUG -- :    (3.4ms)  CREATE UNIQUE INDEX  "index_users_on_reset_password_token" ON "users"  ("reset_password_token")
   -> 0.0064s
== 20190330032624 DeviseCreateUsers: migrated (0.0348s) =======================

D, [2019-08-20T15:05:20.714348 #4] DEBUG -- :   ActiveRecord::SchemaMigration Create (1.4ms)  INSERT INTO "schema_migrations" ("version") VALUES ($1) RETURNING "version"  [["version", "20190330032624"]]
D, [2019-08-20T15:05:20.717535 #4] DEBUG -- :    (3.0ms)  COMMIT
I, [2019-08-20T15:05:20.717622 #4]  INFO -- : Migrating to CreateBarbers (20190331143510)
D, [2019-08-20T15:05:20.719287 #4] DEBUG -- :    (1.0ms)  BEGIN
== 20190331143510 CreateBarbers: migrating ====================================
-- create_table(:barbers)
D, [2019-08-20T15:05:20.731677 #4] DEBUG -- :    (8.5ms)  CREATE TABLE "barbers" ("id" bigserial primary key, "barber_name" character varying DEFAULT 'Barber Name' NOT NULL, "barber_bio" character varying DEFAULT 'Barber''s bio...' NOT NULL, "barber_photo_path" character varying DEFAULT 'avatar1' NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL)
   -> 0.0124s
== 20190331143510 CreateBarbers: migrated (0.0124s) ===========================

D, [2019-08-20T15:05:20.733406 #4] DEBUG -- :   ActiveRecord::SchemaMigration Create (1.1ms)  INSERT INTO "schema_migrations" ("version") VALUES ($1) RETURNING "version"  [["version", "20190331143510"]]        
D, [2019-08-20T15:05:20.736644 #4] DEBUG -- :    (3.1ms)  COMMIT
I, [2019-08-20T15:05:20.736726 #4]  INFO -- : Migrating to CreateCustomers (20190331235139)
D, [2019-08-20T15:05:20.738519 #4] DEBUG -- :    (1.0ms)  BEGIN
== 20190331235139 CreateCustomers: migrating ==================================
-- create_table(:customers)
D, [2019-08-20T15:05:20.764346 #4] DEBUG -- :    (21.9ms)  CREATE TABLE "customers" ("id" bigserial primary key, "customer_name" character varying DEFAULT 'Name' NOT NULL, "customer_number" character varying DEFAULT '' NOT NULL, "customer_photo_path" character varying DEFAULT 'avatar2' NOT NULL, "user_id" bigint, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, CONSTRAINT "fk_rails_9917eeaf5d"       
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
)
D, [2019-08-20T15:05:20.772756 #4] DEBUG -- :    (4.8ms)  CREATE  INDEX  "index_customers_on_user_id" ON "customers"  ("user_id")
   -> 0.0341s
== 20190331235139 CreateCustomers: migrated (0.0342s) =========================

D, [2019-08-20T15:05:20.775011 #4] DEBUG -- :   ActiveRecord::SchemaMigration Create (1.6ms)  INSERT INTO "schema_migrations" ("version") VALUES ($1) RETURNING "version"  [["version", "20190331235139"]]        
D, [2019-08-20T15:05:20.777549 #4] DEBUG -- :    (2.4ms)  COMMIT
I, [2019-08-20T15:05:20.777633 #4]  INFO -- : Migrating to CreateAppointments (20190401212241)
D, [2019-08-20T15:05:20.779377 #4] DEBUG -- :    (1.0ms)  BEGIN
== 20190401212241 CreateAppointments: migrating ===============================
-- create_table(:appointments)
D, [2019-08-20T15:05:20.796545 #4] DEBUG -- :    (13.0ms)  CREATE TABLE "appointments" ("id" bigserial primary key, "appointment_time" time NOT NULL, "appointment_date" date NOT NULL, "appointment_duration" integer DEFAULT 0 NOT NULL, "total_cost" decimal DEFAULT 0.0 NOT NULL, "status" character varying DEFAULT 'active' NOT NULL, "customer_id" bigint, "barber_id" bigint, "created_at" timestamp NOT NULL, "updated_at" 
timestamp NOT NULL, CONSTRAINT "fk_rails_882571afb2"
FOREIGN KEY ("customer_id")
  REFERENCES "customers" ("id")
, CONSTRAINT "fk_rails_5a79e66860"
FOREIGN KEY ("barber_id")
  REFERENCES "barbers" ("id")
)
D, [2019-08-20T15:05:20.803751 #4] DEBUG -- :    (4.0ms)  CREATE  INDEX  "index_appointments_on_customer_id" ON "appointments"  ("customer_id")
D, [2019-08-20T15:05:20.811748 #4] DEBUG -- :    (4.1ms)  CREATE  INDEX  "index_appointments_on_barber_id" ON "appointments"  ("barber_id")
   -> 0.0323s
== 20190401212241 CreateAppointments: migrated (0.0324s) ======================

D, [2019-08-20T15:05:20.813631 #4] DEBUG -- :   ActiveRecord::SchemaMigration Create (1.0ms)  INSERT INTO "schema_migrations" ("version") VALUES ($1) RETURNING "version"  [["version", "20190401212241"]]        
D, [2019-08-20T15:05:20.832935 #4] DEBUG -- :    (19.1ms)  COMMIT
I, [2019-08-20T15:05:20.833028 #4]  INFO -- : Migrating to CreateServices (20190401212625)
D, [2019-08-20T15:05:20.834839 #4] DEBUG -- :    (1.0ms)  BEGIN
== 20190401212625 CreateServices: migrating ===================================
-- create_table(:services)
D, [2019-08-20T15:05:20.849912 #4] DEBUG -- :    (9.7ms)  CREATE TABLE "services" ("id" bigserial primary key, "service_name" character varying DEFAULT 'Service Name' NOT NULL, "service_description" character varying DEFAULT 'Service description...' NOT NULL, "service_duration" integer DEFAULT 0 NOT NULL, "service_price" decimal DEFAULT 0.0 NOT NULL, "appointment_id" bigint, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, CONSTRAINT "fk_rails_b417cbf859"
FOREIGN KEY ("appointment_id")
  REFERENCES "appointments" ("id")
)
D, [2019-08-20T15:05:20.857806 #4] DEBUG -- :    (4.3ms)  CREATE  INDEX  "index_services_on_appointment_id" ON "services"  ("appointment_id")
   -> 0.0229s
== 20190401212625 CreateServices: migrated (0.0230s) ==========================

D, [2019-08-20T15:05:20.859891 #4] DEBUG -- :   ActiveRecord::SchemaMigration Create (1.2ms)  INSERT INTO "schema_migrations" ("version") VALUES ($1) RETURNING "version"  [["version", "20190401212625"]]        
D, [2019-08-20T15:05:20.863097 #4] DEBUG -- :    (3.0ms)  COMMIT
I, [2019-08-20T15:05:20.863190 #4]  INFO -- : Migrating to AddAdminToUsers (20190403035637)
D, [2019-08-20T15:05:20.864857 #4] DEBUG -- :    (1.0ms)  BEGIN
== 20190403035637 AddAdminToUsers: migrating ==================================
-- add_column(:users, :admin, :boolean, {:default=>false})
D, [2019-08-20T15:05:20.868090 #4] DEBUG -- :    (1.7ms)  ALTER TABLE "users" ADD "admin" boolean DEFAULT FALSE
   -> 0.0031s
== 20190403035637 AddAdminToUsers: migrated (0.0032s) =========================

D, [2019-08-20T15:05:20.869707 #4] DEBUG -- :   ActiveRecord::SchemaMigration Create (1.0ms)  INSERT INTO "schema_migrations" ("version") VALUES ($1) RETURNING "version"  [["version", "20190403035637"]]        
D, [2019-08-20T15:05:20.871639 #4] DEBUG -- :    (1.8ms)  COMMIT
I, [2019-08-20T15:05:20.871743 #4]  INFO -- : Migrating to CreateJoinTableAppointmentsServices (20190819105104)
D, [2019-08-20T15:05:20.873322 #4] DEBUG -- :    (1.0ms)  BEGIN
== 20190819105104 CreateJoinTableAppointmentsServices: migrating ==============
-- create_join_table(:appointments, :services)
D, [2019-08-20T15:05:20.875427 #4] DEBUG -- :    (1.6ms)  CREATE TABLE "appointments_services" ("appointment_id" bigint NOT NULL, "service_id" bigint NOT NULL)
D, [2019-08-20T15:05:20.882788 #4] DEBUG -- :    (4.1ms)  CREATE  INDEX  "index_appointments_services_on_appointment_id_and_service_id" ON "appointments_services"  ("appointment_id", "service_id")
   -> 0.0094s
== 20190819105104 CreateJoinTableAppointmentsServices: migrated (0.0095s) =====

D, [2019-08-20T15:05:20.884432 #4] DEBUG -- :   ActiveRecord::SchemaMigration Create (1.1ms)  INSERT INTO "schema_migrations" ("version") VALUES ($1) RETURNING "version"  [["version", "20190819105104"]]        
D, [2019-08-20T15:05:20.886655 #4] DEBUG -- :    (2.1ms)  COMMIT
I, [2019-08-20T15:05:20.886735 #4]  INFO -- : Migrating to RemoveAppointmentIdFromServices (20190819154108)
D, [2019-08-20T15:05:20.888205 #4] DEBUG -- :    (1.0ms)  BEGIN
== 20190819154108 RemoveAppointmentIdFromServices: migrating ==================
-- remove_column(:services, :appointment_id, :bigint)
D, [2019-08-20T15:05:20.890333 #4] DEBUG -- :    (1.9ms)  ALTER TABLE "services" DROP COLUMN "appointment_id"
   -> 0.0020s
== 20190819154108 RemoveAppointmentIdFromServices: migrated (0.0021s) =========

D, [2019-08-20T15:05:20.891916 #4] DEBUG -- :   ActiveRecord::SchemaMigration Create (1.1ms)  INSERT INTO "schema_migrations" ("version") VALUES ($1) RETURNING "version"  [["version", "20190819154108"]]        
D, [2019-08-20T15:05:20.897748 #4] DEBUG -- :    (5.6ms)  COMMIT
D, [2019-08-20T15:05:20.919642 #4] DEBUG -- :   ActiveRecord::InternalMetadata Load (1.3ms)  SELECT  "ar_internal_metadata".* FROM "ar_internal_metadata" WHERE "ar_internal_metadata"."key" = $1 LIMIT $2  [["key", "environment"], ["LIMIT", 1]]
D, [2019-08-20T15:05:20.926927 #4] DEBUG -- :    (1.0ms)  BEGIN
D, [2019-08-20T15:05:20.929045 #4] DEBUG -- :   ActiveRecord::InternalMetadata Create (1.4ms)  INSERT INTO "ar_internal_metadata" ("key", "value", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING ""id"  [["barber_name", "James"], ["barber_bio", "James has been cutting hair all over the world. He combines his passion for haircutting with travelling. Book an appointment with James now, you never know when 
he's going to endulge in new adventure... Suspendisse eget luctus urna, sit amet ultricies dolor. Sed pretium viveiverra pulvinar esta."], ["barber_photo_path", "avatar4"], ["created_at", "2019-08-20 15:05:59.504049"], ["updated_at", "2019-08-20 15:05:59.504049"]]
D, [2019-08-20T15:05:59.519575 #4] DEBUG -- :    (7.6ms)  COMMIT
D, [2019-08-20T15:05:59.523597 #4] DEBUG -- :    (3.6ms)  BEGIN
D, [2019-08-20T15:05:59.526909 #4] DEBUG -- :   Barber Create (1.8ms)  INSERT INTO "barbers" ("barber_name", "barber_bio", "barber_photo_path", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING 
"id"  [["barber_name", "Shaggy"], ["barber_bio", "Don't get put off by his name! Shaggy is one of the best in his craft! Suspendisse eget luctus urna, sit amet ultricies dolor. Sed iaculis pretium viverra. Nunc viverra pulvinar esta. Suspendisse eget luctus urna, sit amet ultricies dolor. Suspendisse eget luctus urna luctus urna, sit amet ultricies dolor."], ["barber_photo_path", "avatar3"], ["created_at", "2019-08-20 15:05:59.524119"], ["updated_at", "2019-08-20 15:05:59.524119"]]
D, [2019-08-20T15:05:59.531650 #4] DEBUG -- :    (4.2ms)  COMMIT
D, [2019-08-20T15:05:59.583609 #4] DEBUG -- :    (1.4ms)  BEGIN
D, [2019-08-20T15:05:59.587615 #4] DEBUG -- :   Service Create (2.0ms)  INSERT INTO "services" ("service_name", "service_description", "service_duration", "service_price", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["service_name", "Haircut"], ["service_description", "Standard Haircut. Get your hair cut for only €15! Suspendisse eget luctus urna, sit amet ultricies dolor. Sed iaculis pretium viverra. Nunc viverra pulvinar esta."], ["service_duration", 15], ["service_price", "15.0"], ["created_at", "2019-08-20 15:05:59.584445"], ["updated_at", "2019-08-20 15:05:59.584445"]]
D, [2019-08-20T15:05:59.597947 #4] DEBUG -- :    (8.3ms)  COMMIT
D, [2019-08-20T15:05:59.600960 #4] DEBUG -- :    (1.7ms)  BEGIN
D, [2019-08-20T15:05:59.606483 #4] DEBUG -- :   Service Create (3.6ms)  INSERT INTO "services" ("service_name", "service_description", "service_duration", "service_price", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["service_name", "Beard Trim"], ["service_description", "Regular Beard Trim with an electric trimmer and razor blade finish! Vestibulum ullamcorper elementum. Mauris elementum efficitur sollicitudin. Aliquam condimentum dignissim."], ["service_duration", 10], ["service_price", "10.0"], ["created_at", "2019-08-20 15:05:59.601700"], ["updated_at", "2019-08-20 15:05:59.601700"]]   
D, [2019-08-20T15:05:59.608989 #4] DEBUG -- :    (2.0ms)  COMMIT
D, [2019-08-20T15:05:59.610561 #4] DEBUG -- :    (1.2ms)  BEGIN
D, [2019-08-20T15:05:59.613730 #4] DEBUG -- :   Service Create (1.3ms)  INSERT INTO "services" ("service_name", "service_description", "service_duration", "service_price", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["service_name", "Hot Towel Shave"], ["service_description", "Our famous Hot Towel Shave will make you and your skin feel amazing! Try it now! Quisque malesuada metus turpis, vitae dignissim elit congue sed."], ["service_duration", 15], ["service_price", "15.0"], ["created_at", "2019-08-20 15:05:59.611444"], ["updated_at", "2019-08-20 15:05:59.611444"]]
D, [2019-08-20T15:05:59.618699 #4] DEBUG -- :    (4.2ms)  COMMIT
gordon@DESKTOP-SKUD77D:/mnt/c/Users/Marcel/Desktop/Mateusz/Cloud/BarbersOnRails$






he's going to endulge in new adventure... Suspendisse eget luctus urna, sit amet ultricies dolor. Sed pretium viveiverra pulvinar esta."], ["barber_photo_path", "avatar4"], ["created_at", "2019-08-20 15:05:59.504049"], ["updated_at", "2019-08-20 15:05:59.504049"]]
D, [2019-08-20T15:05:59.519575 #4] DEBUG -- :    (7.6ms)  COMMIT
D, [2019-08-20T15:05:59.523597 #4] DEBUG -- :    (3.6ms)  BEGIN
D, [2019-08-20T15:05:59.526909 #4] DEBUG -- :   Barber Create (1.8ms)  INSERT INTO "barbers" ("barber_name", "barber_bio", "barber_photo_path", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING 
"id"  [["barber_name", "Shaggy"], ["barber_bio", "Don't get put off by his name! Shaggy is one of the best in his craft! Suspendisse eget luctus urna, sit amet ultricies dolor. Sed iaculis pretium viverra. Nunc viverra pulvinar esta. Suspendisse eget luctus urna, sit amet ultricies dolor. Suspendisse eget luctus urna luctus urna, sit amet ultricies dolor."], ["barber_photo_path", "avatar3"], ["created_at", "2019-08-20 15:05:59.524119"], ["updated_at", "2019-08-20 15:05:59.524119"]]
D, [2019-08-20T15:05:59.531650 #4] DEBUG -- :    (4.2ms)  COMMIT
D, [2019-08-20T15:05:59.583609 #4] DEBUG -- :    (1.4ms)  BEGIN
D, [2019-08-20T15:05:59.587615 #4] DEBUG -- :   Service Create (2.0ms)  INSERT INTO "services" ("service_name", "service_description", "service_duration", "service_price", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["service_name", "Haircut"], ["service_description", "Standard Haircut. Get your hair cut for only €15! Suspendisse eget luctus urna, sit amet ultricies dolor. Sed iaculis pretium viverra. Nunc viverra pulvinar esta."], ["service_duration", 15], ["service_price", "15.0"], ["created_at", "2019-08-20 15:05:59.584445"], ["updated_at", "2019-08-20 15:05:59.584445"]]
D, [2019-08-20T15:05:59.597947 #4] DEBUG -- :    (8.3ms)  COMMIT
D, [2019-08-20T15:05:59.600960 #4] DEBUG -- :    (1.7ms)  BEGIN
D, [2019-08-20T15:05:59.606483 #4] DEBUG -- :   Service Create (3.6ms)  INSERT INTO "services" ("service_name", "service_description", "service_duration", "service_price", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["service_name", "Beard Trim"], ["service_description", "Regular Beard Trim with an electric trimmer and razor blade finish! Vestibulum ullamcorper elementum. Mauris elementum efficitur sollicitudin. Aliquam condimentum dignissim."], ["service_duration", 10], ["service_price", "10.0"], ["created_at", "2019-08-20 15:05:59.601700"], ["updated_at", "2019-08-20 15:05:59.601700"]]   
D, [2019-08-20T15:05:59.608989 #4] DEBUG -- :    (2.0ms)  COMMIT
D, [2019-08-20T15:05:59.610561 #4] DEBUG -- :    (1.2ms)  BEGIN
D, [2019-08-20T15:05:59.613730 #4] DEBUG -- :   Service Create (1.3ms)  INSERT INTO "services" ("service_name", "service_description", "service_duration", "service_price", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["service_name", "Hot Towel Shave"], ["service_description", "Our famous Hot Towel Shave will make you and your skin feel amazing! Try it now! Quisque malesuada metus turpis, vitae dignissim elit congue sed."], ["service_duration", 15], ["service_price", "15.0"], ["created_at", "2019-08-20 15:05:59.611444"], ["updated_at", "2019-08-20 15:05:59.611444"]]
D, [2019-08-20T15:05:59.618699 #4] DEBUG -- :    (4.2ms)  COMMIT
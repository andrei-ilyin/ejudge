CREATE TABLE %sconfig
       (config_key VARCHAR(64) NOT NULL PRIMARY KEY,
       config_val VARCHAR(64)
       );

CREATE TABLE %slogins
       (user_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
       login VARCHAR(64) NOT NULL UNIQUE KEY COLLATE utf8_bin,
       email VARCHAR(128),
       pwdmethod TINYINT NOT NULL DEFAULT 0,
       password VARCHAR(64),
       privileged TINYINT NOT NULL DEFAULT 0,
       invisible TINYINT NOT NULL DEFAULT 0,
       banned TINYINT NOT NULL DEFAULT 0,
       locked TINYINT NOT NULL DEFAULT 0,
       readonly TINYINT NOT NULL DEFAULT 0,
       neverclean TINYINT NOT NULL DEFAULT 0,
       simplereg TINYINT NOT NULL DEFAULT 0,
       regtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       logintime TIMESTAMP DEFAULT 0,
       pwdtime TIMESTAMP DEFAULT 0,
       changetime TIMESTAMP DEFAULT 0
       );

CREATE TABLE %scookies
       (cookie BIGINT UNSIGNED NOT NULL PRIMARY KEY,
       user_id INT NOT NULL,
       contest_id INT UNSIGNED NOT NULL,
       priv_level TINYINT NOT NULL DEFAULT 0,
       role_id TINYINT NOT NULL DEFAULT 0,
       ip_version TINYINT NOT NULL DEFAULT 4,
       locale_id TINYINT NOT NULL DEFAULT 0,
       recovery TINYINT NOT NULL DEFAULT 0,
       team_login TINYINT NOT NULL DEFAULT 0,
       ip VARCHAR(64) NOT NULL,
       ssl_flag TINYINT NOT NULL DEFAULT 0,
       expire DATETIME NOT NULL,
       FOREIGN KEY (user_id) REFERENCES logins (id)
       );

CREATE TABLE %scntsregs
       (user_id INT UNSIGNED NOT NULL,
       contest_id INT UNSIGNED NOT NULL,
       status TINYINT NOT NULL DEFAULT 0,
       banned TINYINT NOT NULL DEFAULT 0,
       invisible TINYINT NOT NULL DEFAULT 0,
       locked TINYINT NOT NULL DEFAULT 0,
       incomplete TINYINT NOT NULL DEFAULT 0,
       disqualified TINYINT NOT NULL DEFAULT 0,
       createtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       changetime TIMESTAMP DEFAULT 0,
       PRIMARY KEY (user_id, contest_id),
       FOREIGN KEY (user_id) REFERENCES logins (id)
       );

CREATE TABLE %susers
       (user_id INT UNSIGNED NOT NULL,
       contest_id INT UNSIGNED NOT NULL,
       cnts_read_only TINYINT NOT NULL DEFAULT 0,
       username VARCHAR(512),
       pwdmethod TINYINT NOT NULL DEFAULT 0,
       password VARCHAR(64),
       pwdtime TIMESTAMP DEFAULT 0,
       createtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       changetime TIMESTAMP DEFAULT 0,
       inst VARCHAR(512),
       inst_en VARCHAR (512),
       instshort VARCHAR (512),
       instshort_en VARCHAR (512),
       fac VARCHAR(512),
       fac_en VARCHAR (512),
       facshort VARCHAR (512),
       facshort_en VARCHAR (512),
       homepage VARCHAR (512),
       phone VARCHAR (512),
       city VARCHAR (512),
       city_en VARCHAR (512),
       region VARCHAR (512),
       zip VARCHAR (512),
       street VARCHAR (512),
       country VARCHAR (512),
       country_en VARCHAR (512),
       location VARCHAR (512),
       spelling VARCHAR (512),
       printer VARCHAR (512),
       languages VARCHAR (512),
       exam_id VARCHAR (512),
       exam_cypher VARCHAR (512),
       PRIMARY KEY (user_id, contest_id),
       FOREIGN KEY (user_id) REFERENCES logins (id)
       );

CREATE TABLE %sparticipants
       (
       serial INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
       user_id INT UNSIGNED NOT NULL,
       contest_id INT UNSIGNED NOT NULL,
       role_id TINYINT NOT NULL,
       createtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       changetime TIMESTAMP DEFAULT 0,
       firstname VARCHAR(512),
       firstname_en VARCHAR(512),
       middlename VARCHAR(512),
       middlename_en VARCHAR(512),
       surname VARCHAR(512),
       surname_en VARCHAR(512),
       status TINYINT NOT NULL,
       gender TINYINT NOT NULL,
       grade TINYINT NOT NULL,
       grp VARCHAR(512),
       grp_en VARCHAR(512),
       occupation VARCHAR(512),
       occupation_en VARCHAR(512),
       discipline VARCHAR(512),
       email VARCHAR(512),
       homepage VARCHAR(512),
       phone VARCHAR(512),
       inst VARCHAR(512),
       inst_en VARCHAR(512),
       instshort VARCHAR(512),
       instshort_en VARCHAR(512),
       fac VARCHAR(512),
       fac_en VARCHAR(512),
       facshort VARCHAR(512),
       facshort_en VARCHAR(512),
       birth_date DATE DEFAULT NULL,
       entry_date DATE DEFAULT NULL,
       graduation_date DATE DEFAULT NULL,
       FOREIGN KEY (user_id) REFERENCES logins (id)
       );

INSERT INTO %sconfig VALUES ('version', '1');

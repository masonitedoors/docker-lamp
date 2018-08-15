use mysql;
update user SET password=PASSWORD("root") where User='root';
create user 'web'@'localhost' IDENTIFIED BY 'web';
update user SET password=PASSWORD("web") where User='web';
GRANT ALL PRIVILEGES ON *.* TO 'web'@'localhost';
flush privileges;
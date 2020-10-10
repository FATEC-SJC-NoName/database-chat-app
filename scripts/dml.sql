-- USERS
INSERT INTO users (first_name,last_name,username,email) 
VALUES ('User','One','userone','user@one.com');
INSERT INTO users (first_name,last_name,username,email) 
VALUES ('User','Two','usertwo','user@two.com');

-- CHATS
INSERT INTO chat (name) 
VALUES ('chat one');
INSERT INTO chat (name) 
VALUES ('chat two');

-- PARTICIPANTS
-- Tabela que faz a ligacao entre usuario e chat, podendo haver varios chats e os usuarios podem esta
-- presentes em cada um desses chats (multiplos chats / multiplos usuarios)
INSERT INTO participant (user_id,chat_id) 
VALUES ('8208220d-2a55-4dcd-9125-c140076462dc','46df5256-6dd8-4007-bf53-ef6ae38ec1bb');
INSERT INTO participant (user_id,chat_id) 
VALUES ('8208220d-2a55-4dcd-9125-c140076462dc','a09c90c2-34e5-4dde-b268-9bb45701bfd9');
INSERT INTO participant (user_id,chat_id) 
VALUES ('5cc92ff6-f64b-4e40-9da6-1db5e039a3e2','46df5256-6dd8-4007-bf53-ef6ae38ec1bb');

-- MESSAGES
INSERT INTO message (user_id, chat_id, message)
VALUES ('8208220d-2a55-4dcd-9125-c140076462dc','46df5256-6dd8-4007-bf53-ef6ae38ec1bb', 'Hello chat one');
INSERT INTO message (user_id, chat_id, message)
VALUES ('8208220d-2a55-4dcd-9125-c140076462dc','46df5256-6dd8-4007-bf53-ef6ae38ec1bb', 'Out of chat one');
INSERT INTO message (user_id, chat_id, message)
VALUES ('5cc92ff6-f64b-4e40-9da6-1db5e039a3e2','46df5256-6dd8-4007-bf53-ef6ae38ec1bb', 'Hello chat one from user Two!');

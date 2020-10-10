CREATE DATABASE chat;

CREATE EXTENSION pgcrypto;

CREATE TABLE users (
  user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE chat (
  chat_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name VARCHAR(50) NOT NULL UNIQUE,
  isActive BOOLEAN DEFAULT true
);

CREATE TABLE participant (
  participant_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(user_id),
  chat_id UUID REFERENCES chat(chat_id)
);

CREATE TABLE message (
  message_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(user_id),
  chat_id UUID REFERENCES chat(chat_id),
  message VARCHAR(100) NOT NULL
);
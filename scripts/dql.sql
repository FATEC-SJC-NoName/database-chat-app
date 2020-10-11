-- Seleciona o nome dos usuarios e as mensagens que eles enviaram 
SELECT username, email, message 
FROM users
LEFT JOIN message
ON users.user_id = message.user_id;

-- Seleciona os nomes dos chats e as mensagens que foram enviadas neles
SELECT name, message 
FROM chat
LEFT JOIN message
ON chat.chat_id = message.chat_id;

-- Seleciona o nome o email dos usuarios, as mensagens que foram enviadas 
-- e para quais chats foram enviadas
SELECT username, name, message, email
FROM chat
LEFT JOIN message
ON message.chat_id = chat.chat_id
LEFT JOIN users
ON message.user_id = users.user_id;
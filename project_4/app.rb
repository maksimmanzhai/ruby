require 'telegram/bot'
token = '615262607:AAGN7usJVfGXxcIPQXas4-F-XED-0psGPUY'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Hello2, #{message.from.first_name}")
    end
  end
end
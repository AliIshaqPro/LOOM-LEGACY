// app/javascript/channels/chat_channel.js
import consumer from "./consumer"

consumer.subscriptions.create({ channel: "ChatChannel", conversation_id: conversation_id }, {
  received(data) {
    document.getElementById('messages').innerHTML += data.message
  }
});

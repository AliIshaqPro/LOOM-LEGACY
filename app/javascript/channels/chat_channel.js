import consumer from "./consumer"

const conversationId = document.getElementById('messages').dataset.conversationId;

consumer.subscriptions.create(
  { channel: "ConversationChannel", id: conversationId }, // Use the correct id here
  {
    received(data) {
      // Insert the received message via Turbo Streams
      document.getElementById("messages").insertAdjacentHTML("beforeend", data);
      scrollToBottom();
    }
  }
);

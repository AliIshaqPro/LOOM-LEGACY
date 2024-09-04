import { createConsumer } from "@rails/actioncable"

const consumer = createConsumer()

const conversationId = document.getElementById('messages').dataset.conversationId;

consumer.subscriptions.create(
  { channel: "ConversationChannel", conversation_id: conversationId },
  {
    received(data) {
      const messagesElement = document.getElementById("messages");
      messagesElement.insertAdjacentHTML("beforeend", data);
      scrollToBottom(); // Ensure the view scrolls to the latest message
    }
  }
);

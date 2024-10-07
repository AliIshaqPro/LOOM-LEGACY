import './index';
import { Turbo } from "@hotwired/turbo-rails";
import { createConsumer } from "@rails/actioncable";

Turbo.start();

const consumer = createConsumer();
const messagesElement = document.getElementById('messages');

if (messagesElement) {
  const conversationId = messagesElement.dataset.conversationId;

  consumer.subscriptions.create(
    { channel: "ConversationChannel", id: conversationId },
    {
      received(data) {
        messagesElement.insertAdjacentHTML("beforeend", data);
        scrollToBottom();
      }
    }
  );
}

function scrollToBottom() {
  messagesElement.scrollTop = messagesElement.scrollHeight;
}

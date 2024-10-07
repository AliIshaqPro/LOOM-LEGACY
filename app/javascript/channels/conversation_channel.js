import { createConsumer } from "@rails/actioncable"

const consumer = createConsumer()

// Retrieve the conversation ID from the data attribute of the messages div
const conversationId = document.getElementById('messages').dataset.conversationId;

// Create a subscription to the ConversationChannel using the conversationId
consumer.subscriptions.create(
  { channel: "ConversationChannel", id: conversationId }, // Correct key is 'id', not 'conversation_id'
  {
    received(data) {
      const messagesElement = document.getElementById("messages");
      messagesElement.insertAdjacentHTML("beforeend", data);
      scrollToBottom(); // Ensure the view scrolls to the latest message
    }
  }
);

// Function to scroll to the bottom of the messages div
function scrollToBottom() {
  const messagesElement = document.getElementById("messages");
  messagesElement.scrollTop = messagesElement.scrollHeight;
}
  
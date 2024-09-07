//= require jquery
//= require rails-ujs
//= require_tree .

import { Turbo } from "@hotwired/turbo-rails"
import { createConsumer } from "@rails/actioncable"

Turbo.start()

const consumer = createConsumer()
const conversationId = document.getElementById('messages').dataset.conversationId

consumer.subscriptions.create(
  { channel: "ConversationChannel", id: conversationId },
  {
    received(data) {
      const messagesElement = document.getElementById("messages")
      messagesElement.insertAdjacentHTML("beforeend", data)
      scrollToBottom()
    }
  }
)

function scrollToBottom() {
  const messagesElement = document.getElementById("messages")
  messagesElement.scrollTop = messagesElement.scrollHeight
}

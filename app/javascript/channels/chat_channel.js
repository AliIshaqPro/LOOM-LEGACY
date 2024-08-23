import consumer from "./consumer"

document.addEventListener('turbo:load', () => {
  const roomElement = document.getElementById('chat-room-id');
  const roomId = roomElement.getAttribute('data-room-id');

  consumer.subscriptions.create({ channel: "ChatChannel", room: roomId }, {
    received(data) {
      const chatBox = document.getElementById('chat-box');
      chatBox.innerHTML += `<p><b>${data.user}:</b> ${data.content}</p>`;
    }
  });

  const chatForm = document.getElementById('chat-form');
  chatForm.addEventListener('submit', (event) => {
    event.preventDefault();

    const chatInput = document.getElementById('chat-input');
    const message = chatInput.value;
    chatInput.value = '';

    fetch('/chat_messages', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('[name=csrf-token]').content
      },
      body: JSON.stringify({ chat_message: { content: message, room: roomId, user_id: chatForm.dataset.userId } })
    });
  });
});


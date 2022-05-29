// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "channels"

let messages = document.getElementById("message-container");
const messageInput = document.getElementById("message_body");



messageInput.addEventListener("keydown", (e) => {
     if (e.key === 13) {
         document.getElementById("message-btn").click();
         messageInput.value = ""
     };
});

messages.scrollTop = messages.scrollHeight
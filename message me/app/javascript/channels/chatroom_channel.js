import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    document.querySelector("#message-container").insertAdjacentHTML("beforeend", data.mod_message);

    let messages = document.getElementById("message-container");

    messages.scrollTop = messages.scrollHeight;
    
  }
});

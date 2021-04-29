import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {
consumer.subscriptions.create({channel: "BoxChannel",
 box_id:1 },{
  connected() {
    console.log("Connected to box channel...")
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    console.log("Disconnected from the Chat Channel");// Called when the subscription has been terminated by the server
  },
  received: function(data) {
    var messages = $('#messages');
    messages.append(data['message']);
    messages.scrollTop($('#messages')[0].scrollHeight);
  },
});
});
  



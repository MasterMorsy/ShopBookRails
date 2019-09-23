import consumer from "./consumer"

consumer.subscriptions.create("BooksChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    document.getElementById("store-page").innerHTML = data.html
  }
});

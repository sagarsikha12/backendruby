// app/javascript/channels/notifications.js

import consumer from "./consumer";

consumer.subscriptions.create("NotificationsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the WebSocket for this channel
    const notificationsDropdown = document.getElementById("notifications-dropdown");

    // Create a new notification item and add it to the dropdown
    const notificationItem = document.createElement("a");
    notificationItem.className = "dropdown-item";
    notificationItem.href = "#"; // You can link to the specific campaign if needed
    notificationItem.innerText = data.message;

    notificationsDropdown.appendChild(notificationItem);
  }
});

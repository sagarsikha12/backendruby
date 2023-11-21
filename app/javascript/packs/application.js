// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core";
import "bootstrap"
import "trix"
import "@rails/actiontext"
import "channels"
import "../channels/notifications_channel.js"
import React from "react";
import ReactDOM from "react-dom";

import NavbarComponent from "../components/NavbarComponent";

// Register the component globally
window.NavbarComponent = NavbarComponent;
// ... your other JavaScript code ...

// If you're manually rendering the component (outside of react-rails)
// ReactDOM.render(<NavbarComponent />, document.getElementById('some-id'));







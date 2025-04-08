import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Flash controller connected");
    const alerts = document.querySelectorAll(".alert");
    alerts.forEach((alert) => {
      setTimeout(() => {
        alert.classList.remove("show"); // trigger fading animation
        setTimeout(() => alert.remove(), 300); // remove DOM element after animation
      }, 3000);
    });
  };
}

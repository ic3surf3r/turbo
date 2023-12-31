import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    const options = {
      enableTime: true,
      altInput: true,
      altFormat: "H:i F j, Y",
      dateFormat: "Y-m-d H:i",
      minDate: "today",
    }
    flatpickr(this.element, options)
  }
}

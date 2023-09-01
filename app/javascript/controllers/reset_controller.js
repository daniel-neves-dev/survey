import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reset"
export default class extends Controller {
  resetForm() {
    document.getElementById('modal').remove()
  }
}

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "toggleIcon"]

  initialize() {
    this.displayPassword = false
  }

  togglePasswordVisibility() {
    this.displayPassword = !this.displayPassword
    const newType = this.displayPassword ? "text" : "password"
    this.inputTarget.type = newType
    this.toggleIconTarget.classList.toggle("fa-eye-slash")
  }
}

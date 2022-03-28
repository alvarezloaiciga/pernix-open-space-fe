import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image", "input"]

  displayFilePicker() {
    this.inputTarget.click()
  }

  displayImagePreview() {
    const [file] = this.inputTarget.files
    if (file) {
      this.imageTarget.src = URL.createObjectURL(file)
    }
  }

  removeImagePreview() {
    this.imageTarget.src = ""
  }
}

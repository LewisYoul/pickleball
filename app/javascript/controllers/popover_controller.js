import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content"]

  connect() {
    // Handle clicks outside popover
    document.addEventListener('click', (event) => {
      console.log('this.element', this.element)
      if (!this.element.contains(event.target)) {
        this.contentTarget.classList.add('hidden')
      }
    })
  }

  toggle() {
    this.contentTarget.classList.toggle("hidden")
  }
}

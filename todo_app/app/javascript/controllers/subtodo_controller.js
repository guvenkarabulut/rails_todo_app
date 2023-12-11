import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggle() {
    event.preventDefault()
    event.stopPropagation()
    const id = document.getElementById('sub-todo-form')
    id.classList.toggle('d-none')
  }
}

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggleForm() {
    event.preventDefault()
    event.stopPropagation()
    const form = document.getElementById('form-for-toggle')
    form.classList.toggle('d-none')
  }
  toggleEdit() {
    event.preventDefault()
    event.stopPropagation()
    const edit = event.params["id"]
    const form = document.getElementById(edit)
    form.classList.toggle('d-none')

  }
}

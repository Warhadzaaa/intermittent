import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-task-status"
export default class extends Controller {
  static targets = ["task"]



  connect() {
    this.csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute("content")

  }

  accept(event) {
    event.preventDefault()
    const url = event.target.href

    fetch(url, {
      headers: { "Accept": "application/json", "X-CSRF-Token": this.csrfToken }
    })

    .then(response => response.json())
    .then((data) => {
      this.taskTarget.outerHTML = data.inserted_task
    })
  }

  decline(event) {
    event.preventDefault()
    const url = event.target.href

    fetch(url, {
      headers: { "Accept": "application/json", "X-CSRF-Token": this.csrfToken }
    })

    .then(response => response.json())
    .then((data) => {
      this.taskTarget.outerHTML = data.inserted_task
    })
  }


}

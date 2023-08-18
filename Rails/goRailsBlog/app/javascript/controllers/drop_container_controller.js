// app/javascript/controllers/drop_container_controller.js

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["dropContainer", "fileInput"]

  dragover(event) {
    event.preventDefault()
  }

  dragenter() {
    this.dropContainerTarget.classList.add("drag-active")
  }

  dragleave() {
    this.dropContainerTarget.classList.remove("drag-active")
  }

  drop(event) {
    event.preventDefault()
    this.dropContainerTarget.classList.remove("drag-active")
    this.fileInputTarget.files = event.dataTransfer.files
  }
}

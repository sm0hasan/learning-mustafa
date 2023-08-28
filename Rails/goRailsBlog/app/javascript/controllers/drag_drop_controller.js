import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "preview"]

  connect() {
    this.element.addEventListener('dragover', this.handleDragOver.bind(this))
    this.element.addEventListener('drop', this.handleDrop.bind(this))
  }
  
  disconnect() {
    this.element.removeEventListener('dragover', this.handleDragOver.bind(this))
    this.element.removeEventListener('drop', this.handleDrop.bind(this))
  }
  
  handleDragOver(event) {
    event.preventDefault()
    this.element.classList.add('is-dragover')
  }
  
  handleDrop(event) {
    event.preventDefault()
    this.element.classList.remove('is-dragover')

    const files = event.dataTransfer.files

    if (files.length) {
      this.inputTarget.files = files
      this._displayImage(files[0])
    }
  }

  _displayImage(file) {
    const reader = new FileReader()

    reader.onload = (event) => {
      this.previewTarget.src = event.target.result
    }

    reader.readAsDataURL(file)
  }

  _preventDefault(event) {
    event.preventDefault()
    event.stopPropagation()
  }
}

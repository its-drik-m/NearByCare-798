import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  confirm() {
    this.element.confirm();
  }
}

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["button", "toggleCards", "list"];

  // connect() {
  //   console.log(this.buttonTarget);
  //   console.log(this.toggleCardsTarget);
  //   console.log(this.listTarget);
  // }
}

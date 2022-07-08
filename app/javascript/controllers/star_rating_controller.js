import { Controller } from "@hotwired/stimulus";
import "jquery-bar-rating";
import $ from 'jquery';

export default class extends Controller {
  connect() {
      $(this.element).barrating({
        theme: 'css-stars'
      });
      }
}

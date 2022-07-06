import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels";
require("flatpickr/dist/flatpickr.css")
import { initFlatpickr } from "../plugins/flatpickr";
import twilioInit from "../plugins/twilio.js";

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers";
import "bootstrap";

document.addEventListener('turbolinks:load', ()=>{
  initFlatpickr();

  if (document.querySelector('.twilio-video')) {
    twilioInit();
  }
});

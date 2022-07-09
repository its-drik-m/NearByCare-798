import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
// require("flatpickr/dist/flatpickr.css")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "channels"
import "controllers"
import "bootstrap"

import { initFlatpickr } from "../plugins/flatpickr";
import twilioInit from "../plugins/twilio.js";
import { initStarRating } from '../plugins/init_star_rating';

document.addEventListener('turbolinks:load', ()=>{
  initFlatpickr();

  if (document.querySelector('.twilio-video')) {
    twilioInit();
  }
});

initStarRating();


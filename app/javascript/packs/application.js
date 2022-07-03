// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

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
// import twilioInit from "../plugins/twilio.js";

document.addEventListener('turbolinks:load', ()=>{
  // initFlatpickr();

  if (document.querySelector('.twilio-video')) {
    // twilioInit();
  }
});

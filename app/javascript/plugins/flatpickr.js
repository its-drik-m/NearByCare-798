import flatpickr from "flatpickr";

const initFlatpickr = () => {
  console.log("Flatpicker...")
  flatpickr(".datepicker", {
    enableTime: true
  });
}

export { initFlatpickr };

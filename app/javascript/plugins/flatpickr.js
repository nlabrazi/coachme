
import flatpickr from "flatpickr"
//import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
const initFlatPicker = () => {
  const bookingForm = document.getElementById('form-booking');

  if (bookingForm) {
  //const deals = JSON.parse(bookingForm.dataset.bookings);
  flatpickr(".flatpickr", {
    //plugins: [new rangePlugin({ input: "#range_end"})],
    minDate: "today",
    //inline: true,
    enableTime: true,
    dateFormat: "d-m-Y H:i",
    time_24hr: true,
    //"disable": bookings,
  });
};
};
export { initFlatPicker };

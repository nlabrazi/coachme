require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

//require("../custom/home")

import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initFlatPicker } from '../plugins/flatpickr';
document.addEventListener('turbolinks:load', () => {
  if (document.querySelector("#user_address")) initAutocomplete();
  if (document.querySelector("#map")) initMapbox();
  if (document.querySelector(".flatpickr")) initFlatPicker();
})

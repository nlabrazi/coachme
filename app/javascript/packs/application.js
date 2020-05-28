require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()
require("flatpickr/dist/themes/dark.css");

//require("../custom/home")

import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initFlatPicker } from '../plugins/flatpickr';
document.addEventListener('turbolinks:load', () => {
  initAutocomplete();
  initMapbox();
  initFlatPicker();
})


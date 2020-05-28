require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

//require("../custom/home")

import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initFlatPicker } from '../plugins/flatpickr';
initAutocomplete();
document.addEventListener('turbolinks:load', () => {
  console.log("turbolinks")
  initMapbox();
  initFlatPicker();
})

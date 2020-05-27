require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

//require("../custom/home")

import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();
document.addEventListener('turbolinks:load', () => {
  initMapbox();
})

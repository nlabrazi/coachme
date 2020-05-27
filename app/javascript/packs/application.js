require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

//require("../custom/home")

import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})

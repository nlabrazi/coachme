require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("flatpickr/dist/themes/dark.css")
const TurboLinks = require("turbolinks")
TurboLinks.start()


import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initFlatPicker } from '../plugins/flatpickr';
import { initRoomCable } from '../channels/room_channel'
document.addEventListener('turbolinks:load', () => {
  if (document.querySelector("#user_address")) initAutocomplete();
  if (document.querySelector("#map")) initMapbox();
  if (document.querySelector(".flatpickr")) initFlatPicker();
  initRoomCable();
})


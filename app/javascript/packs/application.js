import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

initUpdateNavbarOnScroll();

initMapbox();

initAutocomplete();

$(".alert" ).fadeOut(3000);

import { manageNumberOfRidersInput } from '../components/manage_number_of_riders_input';
manageNumberOfRidersInput();

import "bootstrap";
import "../plugins/flatpickr";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

$(".alert" ).fadeOut(3000);

import { manageNumberOfRidersInput } from '../components/manage_number_of_riders_input';
manageNumberOfRidersInput();

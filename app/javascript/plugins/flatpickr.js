import flatpickr from "flatpickr";
import "flatpickr/dist/themes/airbnb.css"; // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr("#range_start", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
});

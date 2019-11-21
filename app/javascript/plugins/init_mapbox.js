import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/diancpnsmclo/ck38rk23h07i81ctby9n00o9p'
  });
};

const addMarkersToMap = (map, markers) => {
 markers.forEach((marker) => {
  const popup = new mapboxgl.Popup().setHTML(marker.infowindow);
  const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '25px';
  element.style.height = '25px';
   new mapboxgl.Marker(element)
     .setLngLat([ marker.lng, marker.lat ])
     .setPopup(popup)
     .addTo(map);
 });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 50, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  if (mapElement) {
  const map = buildMap();
  const markers = JSON.parse(mapElement.dataset.markers);
   fitMapToMarkers(map, markers);
   addMarkersToMap(map, markers);
 }
};

export { initMapbox };

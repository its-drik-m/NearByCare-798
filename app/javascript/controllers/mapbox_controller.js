import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
import MapboxDirections from "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    console.log("connected")
    let directions = new MapboxDirections({
      accessToken: mapboxgl.accessToken,
      unit: "metric",
      profile: "mapbox/driving",
      controls: {instructions: false}
    });
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      center: [57.613891, -20.282669],
      zoom: 8
    })
    this.map.addControl(directions, "top-left");
    navigator.geolocation.getCurrentPosition(position => {
      const { latitude, longitude } = position.coords;
      // window.location.reload()
      if (this.map.loaded()) {
        directions.setOrigin([longitude, latitude]);
        directions.setDestination([this.markersValue[0].lng, this.markersValue[0].lat]);
        this.#addMarkersToMap();
      } else {
        this.map.on("load", () => {
          directions.setOrigin([longitude, latitude]);
          directions.setDestination([this.markersValue[0].lng, this.markersValue[0].lat]);
          this.#addMarkersToMap();
        })
      }
    })

    this.map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: {
      enableHighAccuracy: true
      },
      trackUserLocation: true,
      showUserHeading: true,
      showUserLocation: true,
    }));
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      console.log(marker)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    });
  }
}

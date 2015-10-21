/**
 * Google maps maker
 * 
 * General Latitude and Longitude from a address, city, state, postcode (zipcode)
 * 
 */
    function initialize() {
      if (GBrowserIsCompatible()) {
        geocoder = new GClientGeocoder();
      }
    }
    var geocoder = null;
    function getLatLon(address) {
      geocoder = new GClientGeocoder();
      if (geocoder) {
        geocoder.getLatLng(
          address,
          function(point) {
            if (!point) {
              alert(address + " not found");
            } else {
            	// set lon, lat
            	$("#latLon").val(point.toUrlValue(6),true);
            }
          }
        );
      }
    }
    
    
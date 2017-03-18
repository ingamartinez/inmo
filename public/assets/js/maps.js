var searchMap = null;
var searchMarkers = [];
var selectedShape = null;
var geocoder = null;
var infoWindow;

var lats_lng = [];

var data=[];

lats_lng[18] = new Array(19.24647, -99.10135); // MÃ©xico
lats_lng[34] = new Array(40.41678, -3.70379), // EspaÃ±a
lats_lng[51] = new Array(-12.04637, -77.04279), // PerÃº
lats_lng[54] = new Array(-34.60372, -58.38159), // Argentina
lats_lng[593] = new Array(-0.18065, -78.46784), // Ecuador
lats_lng[595] = new Array(-25.28220, -57.63510), // Paraguay
lats_lng[172] = new Array(12.13639, -86.25139), // Nicaragua
lats_lng[507] = new Array(8.98333, -79.51667), // PanamÃ¡
lats_lng[57] = new Array(4.59806, -74.07583)  // Colombia
lats_lng[01] = new Array(10.3910485, -75.47942569999998)  // Cartagena, Colombia


function map_onPlacesChanged(searchBox) {

    // google.maps.event.trigger(searchMap,'resize');

    var places = searchBox.getPlaces();
    var lastLocation=null;

    for (var i=0, place; place = places[i]; i++) {
        lastLocation = place.geometry.location;
    }
    if (lastLocation != null) {
        searchMap.setCenter(lastLocation);
    }

    searchMap.setZoom(16);

    jQuery('#dataPolygons_hidden').val(lastLocation.lat() + "," + lastLocation.lng() + "," + selectedShape.getRadius());
}




function map_initMap() {
    searchMap = new google.maps.Map(document.getElementById('map'), {
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        center: new google.maps.LatLng(lats_lng[01][0], lats_lng[01][1]),
        // center: new google.maps.LatLng(-33.92, 151.25),

        zoom: 14,
        scrollwheel: false
    });

    infoWindow = new google.maps.InfoWindow();
    var searchInput = document.getElementById('map-search-input');
    var searchBox = new google.maps.places.SearchBox(searchInput);

    google.maps.event.addListener(searchBox, 'places_changed', function() {
        map_onPlacesChanged(searchBox);
        map_initShapes();
    });


    /*
        AGREGAR MARCADOR CON UN CLICK
     */
    // google.maps.event.addListener(searchMap, 'click', function(e) {
    //     createMarker(e.latLng);
    //     // alert(e.latLng);
    // });
}

/**
 *
 * @param km
 */
function map_initShapes() {

    km = parseFloat(jQuery('#id_distancia').val());

    var populationOptions = {
        strokeColor: '#70b08e',
        fillColor: '#70b08e',
        fillOpacity: 0.5,
        strokeWeight: 3,
        clickable: true,
        editable: true,
        dragable: true,
        map: searchMap,
        center: searchMap.getCenter(),
        radius: (km * 1000)
    };

    if (selectedShape != null) {
        selectedShape.setMap(null);
    }

    selectedShape = new google.maps.Circle(populationOptions);
    searchMap.setZoom(16);

    google.maps.event.addListener(selectedShape, 'radius_changed', function() {
        jQuery('#dataPolygons_hidden').val(selectedShape.getCenter().lat() + "," + selectedShape.getCenter().lng() + "," + selectedShape.getRadius());
    });

    google.maps.event.addListener(selectedShape, 'center_changed', function() {
        jQuery('#dataPolygons_hidden').val(selectedShape.getCenter().lat() + "," + selectedShape.getCenter().lng() + "," + selectedShape.getRadius());
    });

    jQuery('#dataPolygons_hidden').val(selectedShape.getCenter().lat() + "," + selectedShape.getCenter().lng() + "," + selectedShape.getRadius());

}

function map_clearMarkers() {

    if (searchMarkers != null) {
        for(var i=0; i<searchMarkers.length; i++){
            searchMarkers[i].setMap(null);
        }
    }

    searchMarkers = null;
}

$('#detalles').on('click', function (e) {
    map_clearMarkers();

    $.ajax({
        type: 'GET',
        url: 'getMarkers',
        data:{dataPolygons_hidden:$('#dataPolygons_hidden').val()},
        success: function (data) {

            for (var eachMarker in data) {
                var pos=new google.maps.LatLng(data[eachMarker].lat,data[eachMarker].lng);
                var name=data[eachMarker].name;
                var address=data[eachMarker].address;
                createMarker(pos,name,address);
            }
        }
    });
});

function createMarker(latlng, name, address) {
    var html = "<b>" + name + "</b> <br/>" + address;
    var marker = new Marker({
        map: searchMap,
        position: latlng,
        animation: google.maps.Animation.DROP,
        //draggable: true,
        icon: {
            //path: SQUARE_PIN,
            fillColor: '#642BB1',
            fillOpacity: 5,
            strokeColor: '',
            strokeWeight: 0
        },
        //map_icon_label: '<span class="map-icon map-icon-insurance-agency"></span>'
        // map_icon_label: '<span class="fa fa-phone"></span>'
    });
    google.maps.event.addListener(marker, 'click', function() {
        infoWindow.setContent(html);
        infoWindow.open(map, marker);
    });

    /*
        ELIMINAR MARCADOR CON CLICK DERECHO
     */
    // google.maps.event.addListener(marker, 'rightclick', function() {
    //     marker.setMap(null);
    // });

    /*
        SETEAR LA CAMARA EN UN PUNTO
     */
    // searchMap.panTo(latlng);


    // markers.push(marker);
    if (searchMarkers != null) {
        searchMarkers.push(marker);
    }else{
        searchMarkers = new Array(marker);
    }
}

/**
 *
 */
function map_initEvents() {
    jQuery('#id_distancia').on("change", function() {
        map_initShapes();
        // alert(parseFloat(this.value));
    })
}

jQuery(document).ready(function() {
    map_initMap();
    map_initEvents();
    map_initShapes();
});
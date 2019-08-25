<%--
  Created by IntelliJ IDEA.
  User: saurav
  Date: 2019-08-25
  Time: 06:28
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>

<div class="container-fluid">

    <div class="card shadow mb-4">
        <div class="card-header py-3">

            <h3 class="m-0 font-weight-bold text-primary mt-3">Waste Management Truck Tracker</h3>
        </div>

        <div class="card-body">

            <div id="map-canvas" style="width:auto;height:590px"></div>

            <script>
                window.lat = 27.734762093571618;
                window.lng = 85.31291583720645;

                var map;
                var mark;
                var lineCoords = [];

                var initialize = function () {
                    map = new google.maps.Map(document.getElementById('map-canvas'), {
                        center: {lat: lat, lng: lng},
                        zoom: 18
                    });
                    mark = new google.maps.Marker({position: {lat: lat, lng: lng}, map: map});
                };

                window.initialize = initialize;

                var redraw = function (payload) {
                    lat = payload.message.lat;
                    lng = payload.message.lng;


                    map.setCenter({lat: lat, lng: lng, alt: 0});
                    mark.setPosition({lat: lat, lng: lng, alt: 0});

                    lineCoords.push(new google.maps.LatLng(lat, lng));

                    var lineCoordinatesPath = new google.maps.Polyline({
                        path: lineCoords,
                        geodesic: true,
                        strokeColor: '#2E10FF'
                    });

                    lineCoordinatesPath.setMap(map);
                };

                var pnChannel = "map3-channel";

                var pubnub = new PubNub({
                    publishKey: 'pub-c-cd3198ec-69b8-4f82-8ed9-705c3569536f',
                    subscribeKey: 'sub-c-4a7ec710-c67b-11e9-a23a-eeb3a5fbbe72'
                });

                pubnub.subscribe({channels: [pnChannel]});
                pubnub.addListener({message: redraw});

                setInterval(function () {
                    pubnub.publish({
                        channel: pnChannel,
                        message: {lat: window.lat + 0.00001, lng: window.lng + 0.0001}
                    });
                }, 1000);

            </script>
            <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyDvrvpFW3a55md9eunoga95ZHN0ACXTKho&callback=initialize"></script>
        </div>
    </div>
</div>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Kusal
  Date: 8/24/2019
  Time: 4:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Dustbin Info</title>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="style.css"/>
    <style>
    #map {
        height: 100%;
        margin-left: 1em;
        border: 2px solid black;
        margin-top: 1em;
        height: 650px;
        width: 1200px;
        margin-right: 15px;
    }

    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
    }

    #floating-panel {
        position: absolute;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto', 'sans-serif';
        line-height: 30px;
        padding-left: 10px;
    }

    #lat {
        margin-left: 1em;
        margin-top: 2em;
        height: 25px;
        width: 150px;
        font-size: 13px;
        padding: 0;
        padding-left: 0.5em;
        border: 3px solid #cccccc;
        border-radius: 5px;

    }

    #long {
        margin-top: 2em;
        height: 25px;
        width: 150px;
        font-size: 13px;
        padding: 0;
        padding-left: 0.5em;
        border: 3px solid #cccccc;
        border-radius: 5px;
    }
    </style>
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3 mapleft">
            <h2 class="heading">
                Dustbin Entry
            </h2>

            <div class="col-md-12 elements">
                <div class="col-md-4 form">
                    <form class="form form-horizontal registerform" id="userInfoForm"
                          action="${createLink(controller: 'dustbin', action: 'save')}" method="POST">
                        <g:render template="form" model="[dustbinInstance: dustbinInstance]"/>
                        <button type="submit" style="margin-left: 48px;">Save</button>
                    </form>
                </div>

            </div>
        </div>

        <div class="col-md-8 mapright">
            <h2 class="headingdustbin">
                Choose Dustbin Site
            </h2>

                <div id="map"></div>
                <script async defer
                        src="https://maps.google.com/maps/api/js?callback=initMap">
                </script>
            </div>

        </div>
    </div>
    <script>

        var map;
        var markers = [];

        function initMap() {
            var mapss = {lat: 27.7352136, lng: 85.3127951};

            map = new google.maps.Map(document.getElementById('map'), {
                zoom: 16.3,
                center: mapss,
                mapTypeId: 'roadmap'
            });

            map.addListener('click', function (event) {
                if (markers.length >= 1) {
                    deleteMarkers();
                }

                addMarker(event.latLng);
                console.log(event);
                document.getElementById('latitude').value = event.latLng.lat();
                document.getElementById('longitude').value = event.latLng.lng();
                var url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=" + event.latLng.lat() + "," + event.latLng.lng() + "&key=AIzaSyB6iT4xjjU7V9KV2a6aGrvU27OyUcvGz3A";
                // $.ajax({
                //     type: "GET",
                //     url: url,
                //     success: function (resp) {
                //         console.log(resp);
                //         var data = "";
                //         var x = resp.results[0].formatted_address.split(",")[0] === "Unnamed Road" ? resp.results[1].formatted_address.split(",")[0] : resp.results[0].formatted_address.split(",")[0];
                //         var i = 0;
                //         while (resp.results[i].formatted_address.split(",")[0] === "Unnamed Road") {
                //             i++;
                //         }
                //         document.getElementById('address').value = resp.results[i].formatted_address.split(",")[0];
                //     }
                // })
            });
        }

        function addMarker(location) {
            var marker = new google.maps.Marker({
                position: location,
                map: map
            });
            markers.push(marker);
        }

        function setMapOnAll(map) {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(map);
            }
        }

        function clearMarkers() {
            setMapOnAll(null);
        }

        function deleteMarkers() {
            clearMarkers();
            markers = [];
        }
</script>
</body>
</html>
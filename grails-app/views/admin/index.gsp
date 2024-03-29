<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/24/19
  Time: 9:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <asset:stylesheet src="style.css"/>
    <meta name="layout" content="main"/>
    <title></title>
    <style>
    #gmaps {
        height: 100%;
        width: 100%;
    }
    </style>
</head>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Overview</h1>
</div>

<div class="row cardrow">

    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Location Count</div>

                        <div class="h5 mb-0 font-weight-bold text-gray-800">${dustbinCount}</div>
                    </div>

                    <div class="col-auto">
                        <i class="fas fa-map fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Containers</div>

                        <div class="h5 mb-0 font-weight-bold text-gray-800">${dustbinCount}</div>
                    </div>

                    <div class="col-auto">
                        <i class="fas fa-dumpster fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Available Trucks</div>

                        <div class="row no-gutters align-items-center">
                            <div class="col-auto">
                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${busCount}</div>
                            </div>

                            <div class="col">
                                <div class="progress progress-sm mr-2">
                                    <div class="progress-bar bg-info" role="progressbar"
                                         style="width: ${busCount * 10}%"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-auto">
                        <i class="fas fa-truck-pickup fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-warning shadow h-100 py-2">

            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Notification</div>

                        <div class="h5 mb-0 font-weight-bold text-gray-800">${notificationCount}</div>
                    </div>

                    <div class="col-auto">
                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12"
         style="height: 600px !important; max-width: 97%;padding-left: 28px;background-color: #ffffff">
        <h6 class="m-0 font-weight-bold text-primary mt-4 mb-3">Dustbins Distribution</h6>
        <script type="text/javascript">

            var list = [];

            <g:each in="${dustBinsList}" var="dust">
            var lis = [];
            lis.push("${dust[0]}");
            lis.push(${dust[1]});
            lis.push(${dust[2]});
            list.push(lis);
            </g:each>

            function initialise() {
                var myOptions = {
                    zoom: 8
                    , mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var googleMap = new google.maps.Map(document.getElementById("gmaps"), myOptions);
                var bounds = new google.maps.LatLngBounds();
                var locations = list;
                for (var i = 0; i < locations.length; i++) {
                    var location = locations[i];
                    var position = new google.maps.LatLng(location[1], location[2]);
                    bounds.extend(position);
                    var marker = new google.maps.Marker({
                        animation: google.maps.Animation.DROP
                        , icon: "https://i.ibb.co/NSW7q9b/Webp-net-resizeimage.png"
                        , map: googleMap
                        , position: position
                        , size: 10
                        , title: location[0]
                    });
                    google.maps.event.addListener(marker, 'click', (
                        function (marker, i) {
                            return function () {
                                var infowindow = new google.maps.InfoWindow();
                                infowindow.setContent(locations[i][0]);
                                infowindow.open(googleMap, marker);
                            }
                        }
                    )(marker, i));
                }
                googleMap.fitBounds(bounds);
            }

            function loadScript() {
                var script = document.createElement("script");
                script.type = "text/javascript";
                script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyDvrvpFW3a55md9eunoga95ZHN0ACXTKho&callback=initialise"; // initialize method called using callback parameter
                document.body.appendChild(script);
            }

            window.onload = loadScript;
        </script>

        <div id="gmaps">
            <noscript><p>JavaScript is required to render the Google Map.</p></noscript>
        </div>
    </div>

</div>

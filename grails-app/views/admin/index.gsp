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
</head>

<body>
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
                        <div class="h5 mb-0 font-weight-bold text-gray-800">23</div>
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
                        <div class="h5 mb-0 font-weight-bold text-gray-800">45</div>
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
                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">4</div>
                            </div>
                            <div class="col">
                                <div class="progress progress-sm mr-2">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
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
                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Requests</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">2</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-11 mapbox clearfix">
        <h6 class="m-0 font-weight-bold text-primary mt-1 mb-3">Real Time Map Plotting</h6>
    <div class="mapouter"><div class="gmap_canvas"><iframe width="1000" height="300" id="gmap_canvas"
                                                           src="https://maps.google.com/maps?q=baneshwor&t=&z=15&ie=UTF8&iwloc=&output=embed"
                                                           frameborder="0" scrolling="no" marginheight="0"
                                                           marginwidth="0"></iframe>Google Maps Generator by <a
            href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter {
        position: relative;
        text-align: right;
        height: 300px;
        width: 1000px;
    }

    .gmap_canvas {
        overflow: hidden;
        background: none !important;
        height: 300px;
        width: 1000px;
    }</style></div>
    </div>

</div>
</body>
</html>
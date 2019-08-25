<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/25/19
  Time: 1:05 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>

<div class="container-fluid">

    <div class="card shadow mb-4">
        <div class="card-header py-3">

            <a class="btn btn-primary btn-icon-split mt-2"
               href="${createLink(controller: 'userInfo', action: 'trackLocation')}">
                <span class="icon text-white-20">
                    <i class="fas fa-user"></i>
                </span>
                <span class="text">Track User Current Location</span>
            </a>

            <h6 class="m-0 font-weight-bold text-primary mt-3">Users Location Details</h6>
        </div>

        <div class="card-body">
            <div class="table-responsive">
               <h2>Name :  ${userLocation.user.username[0]}</h2>
                <table cellspacing="0" class="table table-bordered" id="dataTable" width="100%">
                    <thead>
                    <tr>
                        <th>S.N</th>
                        <th>Address</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
                        <th>Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userLocation}" var="u" status="i">
                        <tr>
                            <td>${i + 1}</td>
                            <td>${u?.address}</td>
                            <td>${u?.latitude}</td>
                            <td>${u?.longitude}</td>
                            <td>${u?.date}</td>
                        </tr>
                    </g:each>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
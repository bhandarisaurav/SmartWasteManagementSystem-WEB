<%--
  Created by IntelliJ IDEA.
  User: Kusal
  Date: 8/24/2019
  Time: 4:39 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Dustbin Info</title>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="style.css"/>
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-11 popupregister">
            <h2 class="heading">
                Edit User
            </h2>

            <div class="col-md-12 elements">
                <div class="col-md-6 form">

                    <form class="form form-horizontal registerform" id="userInfoForm" action="${createLink(controller: 'dustbin',action: 'update')}"  method="POST">
                        <input type="hidden" name="id" value="${edit?.id}"/>

                        <div class="userbox">
                            <p class="usertext">
                                Location
                            </p>
                            <input type="text" name="location" placeholder="Enter Location" value="${edit?.location}"><br>
                        </div>


                        <div class="email">
                            <p class="passwordtext">
                                Distance
                            </p>
                            <input type="text" name="distance" placeholder="Enter Distance"  value="${edit?.distance}">
                        </div>

                        <div class="passwordconfirm">
                            <p class="passwordtext">
                                Capacity
                            </p>
                            <input type="text" name="capacity" placeholder="Capacity"  value="${edit?.capacity}">
                        </div>

                        <button type="submit">Update User</button>

                    </form>
                </div>



            </div>
        </div>
    </div>
</div>

%{--<g:form method="post" action="update" enctype="multipart/form-data">--}%
    %{--<div class="container">--}%
        %{--<g:hiddenField name="id" value="${edit.id}"/>--}%
        %{--<div class="row">--}%
            %{--<div class="col-md-4">--}%
                %{--<label for="location">Location</label>--}%
                %{--<g:textField class="form-control" id="location" name="location"  type="text"--}%
                             %{--value="${edit.location}"/>--}%
            %{--</div>--}%
            %{--<div class="col-md-4">--}%
                %{--<label for="distance">Distance</label>--}%
                %{--<g:textField class="form-control" id= 'distance' name="distance"  type="text" value="${edit.distance}"/>--}%
            %{--</div>--}%

            %{--<div class="col-md-4">--}%
                %{--<label for="capacity">Capacity</label>--}%
                %{--<g:textField class="form-control" id="capacity" name="capacity" type="text" value="${edit.capacity}"/>--}%
            %{--</div>--}%
        %{--</div>--}%
        %{--<g:submitButton class="btn btn-primary" name="update" value="Update" style="padding-right: 580px; padding-left: 500px"/>--}%
    %{--</div>--}%
%{--</g:form>--}%
</body>
</html>
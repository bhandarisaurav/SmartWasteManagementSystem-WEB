<%--
  Created by IntelliJ IDEA.
  User: Kusal
  Date: 8/24/2019
  Time: 4:39 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<g:form method="post" action="update" enctype="multipart/form-data">
    <div class="container">
        <g:hiddenField name="id" value="${edit.id}"/>
        <div class="row">
            <div class="col-md-4">
                <label for="location">Location</label>
                <g:textField class="form-control" id="location" name="location"  type="text"
                             value="${edit.location}"/>
            </div>
            <div class="col-md-4">
                <label for="distance">Distance</label>
                <g:textField class="form-control" id= 'distance' name="distance"  type="text" value="${edit.distance}"/>
            </div>

            <div class="col-md-4">
                <label for="capacity">Capacity</label>
                <g:textField class="form-control" id="capacity" name="capacity" type="text" value="${edit.capacity}"/>
            </div>
        </div>
        <g:submitButton class="btn btn-primary" name="update" value="Update" style="padding-right: 580px; padding-left: 500px"/>
    </div>
</g:form>
</body>
</html>
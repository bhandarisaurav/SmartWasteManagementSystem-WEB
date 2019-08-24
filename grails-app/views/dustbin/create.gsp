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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
<g:form method ="post" action="save" >
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <label for="location">Location</label>
            <g:textField class="form-control" id="location" name="location" required="" type="text" placeholder="Enter location"/>
        </div>
        <div class="col-md-4">
            <label for="distance">Distance</label>
            <g:textField class="form-control" name="distance" required="" type="text" placeholder="Enter distance"/>
        </div>

        <div class="col-md-4">
            <label for="capacity">Capacity</label>
            <g:textField class="form-control" id="capacity" name="capacity" required="" type="text" placeholder="Enter capacity"/>
        </div>
    </div>
    <g:submitButton class="btn btn-primary" name="save" value="Save"  style="padding-right: 580px; padding-left: 500px" />
</div>
</g:form>
</body>
</html>
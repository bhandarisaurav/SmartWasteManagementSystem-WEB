<%--
  Created by IntelliJ IDEA.
  User: Kusal
  Date: 8/24/2019
  Time: 4:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div class="container">
        <g:each in="${dustbin}" var="dust">
            <h2> ${dust.location}</h2>
            <h2> ${dust.distance}</h2>
            <h2> ${dust.capacity}</h2>
            <g:link action="edit" id="${dust.id}"><i class="fa fa-edit"></i>Edit</g:link>
            <g:link action="delete" id="${dust.id}" onclick="return confirm('Are u sure?')"><i class="fa fa-trash"></i>delete</g:link>

        </g:each>
</div>
</body>
</html>
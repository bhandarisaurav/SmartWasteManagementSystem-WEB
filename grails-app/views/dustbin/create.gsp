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
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-11 popupregister">
            <h2 class="heading">
                Dustbin Entry
            </h2>

            <div class="col-md-12 elements">
                <div class="col-md-6 form">
                    <form class="form form-horizontal registerform" id="userInfoForm"
                          action="${createLink(controller: 'dustbin', action: 'save')}" method="POST">
                        <g:render template="form" model="[dustbinInstance: dustbinInstance]"/>
                        <button type="submit">Create Dustbin</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
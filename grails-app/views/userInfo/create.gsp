<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/24/19
  Time: 4:19 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <asset:stylesheet src="style.css"/>
    <meta name="layout" content="main">
    <title>Register</title>
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-4 popupregister">
            <h2 class="heading">
                Smart Waste Management System  |  Register
            </h2>

            <div class="col-md-12 elements">
                <div class="col-md-3 form">
                    <form class="form form-horizontal registerform" id="userInfoForm"
                          action="${createLink(controller: 'userInfo', action: 'saveOrUpdate')}" method="POST">
                        <g:render template="form" model="[userInfo: userInfo]"/>
                        <button type="submit" style="margin-left: 75px;">Create User</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
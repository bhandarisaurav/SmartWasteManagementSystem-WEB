<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/24/19
  Time: 4:26 PM
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
        <div class="col-md-11 popupregister">
            <h2 class="heading">
                Edit User
            </h2>

            <div class="col-md-12 elements">
                <div class="col-md-6 form">

                    <form class="form form-horizontal registerform" id="userInfoForm" action="${createLink(controller: 'userInfo',action: 'saveOrUpdate')}"  method="POST">
                        <input type="hidden" name="userInfoID" value="${userInfo?.id}"/>

                        <g:render template="form" model="[userInfo: userInfo]"/>
                        <button type="submit">Update User</button>

                    </form>
                </div>

                <div class="col-md-6 image">
                    <asset:image class="imagelogin" src="image1.jpg"/>
                </div>

                %{--<a href="Login.html">--}%
                %{--<p class="infotext">--}%
                %{--Continue to Log In--}%
                %{--</p>--}%
                %{--</a>--}%

            </ div>
        </div>
    </div>
</div>
</body>
</html>
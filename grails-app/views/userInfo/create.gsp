<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/24/19
  Time: 4:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 popupregister">
            <h2 class="heading">
                Smart Waste Management System  |  Register
            </h2>

            <div class="col-md-12 elements">

                <div class="col-md-6 form">
                    <form class="form form-horizontal registerform" id="userInfoForm" action="${createLink(controller: 'userInfo',action: 'saveOrUpdate')}"  method="POST">

                        <g:render template="form" model="[userInfo: userInfo]"/>
                        <button type="submit">Create User</button>

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
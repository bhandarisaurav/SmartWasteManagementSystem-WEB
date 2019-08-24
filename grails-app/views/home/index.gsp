<html>
<head>
    <title>
        Smart Waste
    </title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    %{--<asset:link rel="icon"  href="img/favicon.png" type="image/png"/>--}%

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 popup">
            <h2 class="heading">
                Smart Waste Management System  |  Log In
            </h2>

            <div class="col-md-12 elements">

                <div class="col-md-6 image">
                    <asset:image src="image2.svg" class="imagelogin"/>
                </div>

                <div class="col-md-6 form">
                    ${flash.message}
                    <g:if test="${flash.message}">
                        ${flash.message}
                    </g:if>
                    <form id="register-form" action="${postUrl ?: '/login/authenticate'}" method="POST"
                          role="form" class="loginform" enctype="multipart/form-data">
                        <div class="userbox">
                            <p class="usertext">
                                Username
                            </p>
                            <input type="text" name="username" placeholder="Enter username"><br>
                        </div>

                        <div class="passwordbox">
                            <p class="passwordtext">
                                Password
                            </p>
                            <input type="password" name="password" placeholder="Enter password">
                        </div>

                        <button type="submit">Log in</button>

                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
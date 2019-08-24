<!doctype html>
<html lang="en" class="no-js">
<head>
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <title>Smart Waste Dashboard</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet"
            type="text/css"/>
<link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<asset:stylesheet src="style.min.css"/>
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="bootstrap.bundle.min.js"/>
<asset:javascript src="dataTables.bootstrap.min.js"/>
<asset:javascript src="jquery.dataTables.min.js"/>
<g:layoutHead/>
</head>

<body id="page-top">
<div id="wrapper">
    <!-- Preloader End -->

<g:render template="/layouts/admin_sidebar"/>
<g:render template="/layouts/headernavbar"/>
<g:layoutBody/>

<g:render template="/layouts/footer"/>

<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div aria-hidden="true" aria-labelledby="exampleModalLabel" class="modal fade" id="logoutModal" role="dialog"
     tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                    <span aria-hidden="true">×</span>
                </button>
            </div>

            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>

            <div class="modal-footer">
                <button class="btn btn-secondary" data-dismiss="modal" type="button">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>

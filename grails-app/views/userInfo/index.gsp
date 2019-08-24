<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/24/19
  Time: 4:09 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>

<body>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Content Row -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">

            <a class="btn btn-primary btn-icon-split mt-2" href="#">
                <span class="icon text-white-20">
                    <i class="fas fa-user"></i>
                </span>
                <span class="text">Add User</span>
            </a>

            <h6 class="m-0 font-weight-bold text-primary mt-3">Users List</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table cellspacing="0" class="table table-bordered" id="dataTable" width="100%">
                    <thead>
                    <tr>
                        <th>Username</th>
                        <th>E-Mail</th>
                        <th>Phone Number</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Saras Karanjit</td>
                        <td>saras.karanjit@deerwalk.edu.np</td>
                        <td>9843214080</td>
                        <td>
                            <a href="#">
                                <span class="fas fa-pencil-alt ml-2"></span>
                            </a>
                            <a href="#">
                                <span class="fas fa-trash ml-2"></span>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Saurav Bhandari</td>
                        <td>saurav.bhandari@deerwalk.edu.np</td>
                        <td>9843219090</td>
                        <td>
                            <a href="#">
                                <span class="fas fa-pencil-alt ml-2"></span>
                            </a>
                            <a href="#">
                                <span class="fas fa-trash ml-2"></span>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Raman Pandey</td>
                        <td>raman.pandey@deerwalk.edu.np</td>
                        <td>9843212830</td>
                        <td>
                            <a href="#">
                                <span class="fas fa-pencil-alt ml-2"></span>
                            </a>
                            <a href="#">
                                <span class="fas fa-trash ml-2"></span>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>Kusal Bista</td>
                        <td>kushal.bista@deerwalk.edu.np</td>
                        <td>9843212482</td>
                        <td>
                            <a href="#">
                                <span class="fas fa-pencil-alt ml-2"></span>
                            </a>
                            <a href="#">
                                <span class="fas fa-trash ml-2"></span>
                            </a>
                        </td>
                    </tr>


                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Content Row -->

</div>
</div>
</body>
</html>
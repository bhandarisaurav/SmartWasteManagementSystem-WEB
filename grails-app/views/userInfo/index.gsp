<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/24/19
  Time: 4:09 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <asset:stylesheet src="style.css"/>
    <meta name="layout" content="main">
    <title></title>
</head>

<body>

<div class="container-fluid">

    <div class="card shadow mb-4">
        <div class="card-header py-3">

            <a class="btn btn-primary btn-icon-split mt-2" href="${createLink(controller: 'userInfo',action: 'create')}">
                <span class="icon text-white-20">
                    <i class="fas fa-user"></i>
                </span>
                <span class="text">Add User</span>
            </a>

            <h6 class="m-0 font-weight-bold text-primary mt-3">Dustbin List</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table cellspacing="0" class="table table-bordered"  id="userInfo" style="width: 100%">
                    <thead>
                    <tr>
                        <th>S.N</th>
                        <th>Username</th>
                        <th>E-Mail</th>
                        <th>Phone Number</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>

</div>
</div>
<script>
    $(document).ready(function() {
        var table = $('#userInfo').DataTable( {
            "aLengthMenu": [
                [-1, 10, 25, 50, 100],
                ["All", 10, 25, 50, 100]
            ],
            "language": {
                "emptyTable":"No records found.",
                "oPaginate": {
                    "sPrevious": "Prev",
                    "sNext": "Next"
                }
            },
            "responsive": true,
            "ajax": {
                "url": "${createLink(controller: 'userInfo',action: 'dataTable')}",
                "type": "GET",
                "data": function ( d ){
//
                }
            },

            "columns": [
                { "data": "userInfoID" },
                { "data": "fullName" },
                { "data": "email" },
                { "data": "phoneNumber" },
            ],
            "columnDefs": [
                {
                    "targets": [ 0 ],
                    "visible": false

                },
                { width: '10%',"targets":4, "data":"userInfoID", "render": function ( data,type,full,meta ){
                        return "<div class='row container'>"+
                            "<form class='col-md-4 edit-form' method=\"POST\" action=\"${createLink( controller : "userInfo", action : "edit")}\">" +
                            "<input type=\"hidden\" name=\"userInfoID\" value="+data+" />" +
                            "<a href=\"#\" id=\"editlink\" onclick=\"this.parentNode.submit()\"><i class=\"fas fa-pencil-alt ml-2\" aria-hidden=\"true\"></i></a>" +
                            "</form>"+
                            "<form class='col-md-4 edit-form' method=\"DELETE\" action=\"${createLink( controller : "userInfo", action : "delete")}\">" +
                            "<input type=\"hidden\" name=\"userInfoID\" value="+data+" />" +
                            "<a href=\"#\" id=\"deletelink\" onclick=\"this.parentNode.submit()\"><i class=\"fas fa-trash-alt ml-2\" aria-hidden=\"true\"></i></a>"+
                            "</form>"+
                            "<form class='col-md-4 edit-form' method=\"POST\" action=\"${createLink( controller : "userInfo", action : "show")}\">" +
                            "<input type=\"hidden\" name=\"userInfoID\" value="+data+" />" +
                            "<a href=\"#\" id=\"deletelink\" onclick=\"this.parentNode.submit()\"><i class=\"fas fa-eye ml-2\" aria-hidden=\"true\"></i></a>"+
                            "</form>"+
                            "</div>"

                    }
                }
            ]
        });//data table
        $("input[type=search]").addClass('form-control');
        $("select[name=householdTable_length]").addClass('form-control');
    });
    function searchList() {
        $('#userTable').DataTable().ajax.reload();
    }
</script>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/24/19
  Time: 11:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="style.css"/>

    <title></title>
</head>

<body>
<div class="container-fluid">

    <div class="card shadow mb-4">
        <div class="card-header py-3">

            <a class="btn btn-primary btn-icon-split mt-2" href="${createLink(controller: 'dustbin',action: 'create')}">
                <span class="icon text-white-20">
                    <i class="fas fa-user"></i>
                </span>
                <span class="text">Add Dustbin</span>
            </a>

            <h6 class="m-0 font-weight-bold text-primary mt-3">Dustbin List</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table cellspacing="0" class="table table-bordered"  id="userInfo" style="width: 100%">
                    <thead>
                    <tr>
                        <th>S.N</th>
                        <th>Location</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
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
//            "sDom": "<'toolbar'>lt<'row DTTTFooter'<'col-sm-6'i><'col-sm-6'p>>",
            "language": {
                "emptyTable":"No records found.",
                "oPaginate": {
                    "sPrevious": "Prev",
                    "sNext": "Next"
                }
            },
            "responsive": true,
            "ajax": {
                "url": "${createLink(controller: 'dustbin',action: 'dataTable')}",
                "type": "GET",
                "data": function ( d ){
//                    var dateSelected=$("#dateCreatedFrom").val();
//                    d.dateSelected= dateSelected;
//                    d.search=$("#search").val();
                }
            },

            %{--customerID: results.id.toString(),--}%
            %{--username: results?.user?.username,--}%
            %{--fullName: results?.user?.fullName,--}%
            %{--firstName: results?.firstName,--}%
            %{--lastName: results?.lastName,--}%
            %{--email: results?.email,--}%
            %{--enabled: results?.isActive?'Yes':'No',--}%
            %{--contactNumber: "${results?.mobileNumber?(results?.mobileNumber+' ,'):''} ${results?.phoneNumber?:''}",--}%
            %{--locations:results?.locations--}%

            "columns": [
                { "data": "id" },
                { "data": "address" },
                { "data": "latitude" },
                { "data": "longitude" }
            ],
            "columnDefs": [
                {
                    "targets": [ 0 ],
                    "visible": false
                },
                { width: '10%',"targets":4, "data":"id", "render": function ( data,type,full,meta ){
                        return "<div class='row container'>"+
                            "<form class='col-md-4 edit-form' method=\"POST\" action=\"${createLink( controller : "dustbin", action : "edit")}\">" +
                            "<input type=\"hidden\" name=\"id\" value="+data+" />" +
                            "<a href=\"#\" id=\"editlink\" onclick=\"this.parentNode.submit()\"><i class=\"fas fa-pencil-alt ml-2\" aria-hidden=\"true\"></i></a>" +
                            "</form>"+
                            "<form class='col-md-4 edit-form' method=\"DELETE\" action=\"${createLink( controller : "dustbin", action : "delete")}\">" +
                            "<input type=\"hidden\" name=\"id\" value="+data+" />" +
                            "<a href=\"#\" id=\"deletelink\" onclick=\"this.parentNode.submit()\"><i class=\"fas fa-trash-alt ml-2\" aria-hidden=\"true\"></i></a>"+
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
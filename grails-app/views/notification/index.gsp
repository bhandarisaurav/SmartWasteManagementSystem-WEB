<%--
  Created by IntelliJ IDEA.
  User: ramanpandey
  Date: 8/25/19
  Time: 7:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
    <style>
        .unread{
            background: #a7c7ff;
        }
        .read{
            background: springgreen;
        }
    </style>
</head>

<body>

<div class="container-fluid">

    <div class="card shadow mb-4">
        <div class="card-header py-3">

            %{--<a class="btn btn-primary btn-icon-split mt-2"--}%
               %{--href="${createLink(controller: 'userInfo', action: 'trackLocation')}">--}%
                %{--<span class="icon text-white-20">--}%
                    %{--<i class="fas fa-user"></i>--}%
                %{--</span>--}%
                %{--<span class="text">Track User Current Location</span>--}%
            %{--</a>--}%

            <h6 class="m-0 font-weight-bold text-primary mt-3">Notifications</h6>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table cellspacing="0" class="table table-bordered" id="dataTable" width="100%">
                    <thead>
                    <tr>
                        <th>S.N</th>
                        <th>Message</th>
                        <th>Status</th>
                        <th>Date</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${notification}" var="u" status="i">

                        <tr class="${u.checked == false ? 'unread':'read'}">
                            <td>${i + 1}</td>
                            <td><a href="${createLink(controller: 'notification',action: 'read', params:[id:u?.id])}">${u?.message}</a></td>
                            <td>${u?.checked}</td>
                            <td>${u?.date}</td>
                          <g:if test="${!u.checked}">
                              <td><button>Mark as Read</button></td>
                            </g:if>
                            <td><button class="btn btn-large btn-info">Already Read</button></td>


                        </tr>
                    </g:each>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
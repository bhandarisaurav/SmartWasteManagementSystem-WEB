<%@ page import="smartwastemanagementsystem.Notification" %>
<!-- Content Wrapper -->
<div class="d-flex flex-column" id="content-wrapper">

    <!-- Main Content -->
    <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <!-- Sidebar Toggle (Topbar) -->
            <button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop">
                <i class="fa fa-bars"></i>
            </button>

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">

                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                <li class="nav-item dropdown no-arrow d-sm-none">
                    <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle" data-toggle="dropdown"
                       href="#" id="searchDropdown" role="button">
                        <i class="fas fa-search fa-fw"></i>
                    </a>
                    <!-- Dropdown - Messages -->
                    <div aria-labelledby="searchDropdown"
                         class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in">
                        <form class="form-inline mr-auto w-100 navbar-search">
                            <div class="input-group">
                                <input aria-describedby="basic-addon2" aria-label="Search"
                                       class="form-control bg-light border-0 small" placeholder="Search for..."
                                       type="text">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </li>
    <%def notification = Notification.list()
       def count = Notification.findAllByChecked(false).size()
    %>
                <!-- Nav Item - Alerts -->
                <li class="nav-item dropdown no-arrow mx-1">
                    <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle" data-toggle="dropdown"
                       href="#" id="alertsDropdown" role="button">
                        <i class="fas fa-bell fa-fw"></i>
                        <!-- Counter - Alerts -->
                        <span class="badge badge-danger badge-counter">${count}</span>
                    </a>
                    <!-- Dropdown - Alerts -->
                    <div aria-labelledby="alertsDropdown"
                         class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in">
                        <h6 class="dropdown-header">
                            Notification Center
                        </h6>

            <g:each in="${notification}" var="notify">
             <g:if test="${!notify.checked}">
                 <a class="dropdown-item d-flex align-items-center" href="#">
                     <div class="mr-3">
                         <div class="icon-circle bg-warning">
                             <i class="fas fa-comment-alt text-white"></i>
                         </div>
                     </div>
                     <div>
                         <div class="small text-gray-500">${notify.date.format("MM-DD-YY")}</div>
                         <span class="font-weight-bold">${notify.message}</span>
                     </div>
                 </a>
                 <a class="dropdown-item text-center small text-gray-500" href="${createLink(controller: 'notification',action: 'index')}">Show All Notifications</a>

             </g:if>


        </g:each>

        %{--<a class="dropdown-item d-flex align-items-center" href="#">--}%
                            %{--<div class="mr-3">--}%
                                %{--<div class="icon-circle bg-warning">--}%
                                    %{--<i class="fas fa-comment-alt text-white"></i>--}%
                                %{--</div>--}%
                            %{--</div>--}%
                            %{--<div>--}%
                                %{--<div class="small text-gray-500">August 24, 2019</div>--}%
                                %{--<span class="font-weight-bold">Container at Dhapasi is 86% full.</span>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                        %{--<a class="dropdown-item d-flex align-items-center" href="#">--}%
                            %{--<div class="mr-3">--}%
                                %{--<div class="icon-circle bg-warning">--}%
                                    %{--<i class="fas fa-comment-alt text-white"></i>--}%
                                %{--</div>--}%
                            %{--</div>--}%
                            %{--<div>--}%
                                %{--<div class="small text-gray-500">August 25, 2019</div>--}%
                                %{--Container at Gongabu is 92% full.--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    </div>
                </li>

                <div class="topbar-divider d-none d-sm-block"></div>

                <!-- Nav Item - User Information -->
                <li class="nav-item dropdown no-arrow">
                    <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle" data-toggle="dropdown"
                       href="#" id="userDropdown" role="button">
                        <span class="mr-2 d-none d-lg-inline text-gray-600 small"><sec:loggedInUserInfo field="username"/></span><!--
                <img class="img-profile rounded-circle" src="../img/download.png">-->
                    </a>
                    <!-- Dropdown - User Information -->
                    <div aria-labelledby="userDropdown"
                         class="dropdown-menu dropdown-menu-right shadow animated--grow-in">
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                            Contact
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" data-target="#logoutModal" data-toggle="modal" href="#">
                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            Logout
                        </a>
                    </div>
                </li>

            </ul>

        </nav>
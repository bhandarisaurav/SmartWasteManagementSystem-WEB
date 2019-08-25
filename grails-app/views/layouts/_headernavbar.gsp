<%@ page import="smartwastemanagementsystem.Notification" %>
<div class="d-flex flex-column" id="content-wrapper">

    <div id="content">

        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop">
                <i class="fa fa-bars"></i>
            </button>

            <ul class="navbar-nav ml-auto">

                <li class="nav-item dropdown no-arrow d-sm-none">
                    <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle"
                       data-toggle="dropdown"
                       href="#" id="searchDropdown" role="button">
                        <i class="fas fa-search fa-fw"></i>
                    </a>

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
                <% def notification = Notification.list()
                def count = Notification.findAllByChecked(false).size()
                %>
                <li class="nav-item dropdown no-arrow mx-1">
                    <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle"
                       data-toggle="dropdown"
                       href="#" id="alertsDropdown" role="button">
                        <i class="fas fa-bell fa-fw"></i>
                        <span class="badge badge-danger badge-counter">${count}</span>
                    </a>

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
                                <a class="dropdown-item text-center small text-gray-500"
                                   href="${createLink(controller: 'notification', action: 'index')}">Show All Notifications</a>

                            </g:if>

                        </g:each>

                    </div>
                </li>

                <div class="topbar-divider d-none d-sm-block"></div>

                <li class="nav-item dropdown no-arrow">
                    <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle"
                       data-toggle="dropdown"
                       href="#" id="userDropdown" role="button">
                        <span class="mr-2 d-none d-lg-inline text-gray-600 small"><sec:loggedInUserInfo
                                field="username"/></span>
                    </a>

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
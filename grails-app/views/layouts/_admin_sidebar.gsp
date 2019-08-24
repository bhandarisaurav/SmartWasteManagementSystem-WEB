<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/index">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-dumpster"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Smart Waste</div>
    </a>

    <hr class="sidebar-divider my-0">

    <li class="nav-item active">
        <a class="nav-link" href="/admin/index">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <hr class="sidebar-divider">

    <div class="sidebar-heading">
        Interface
    </div>

    <li class="nav-item">
        <a class="nav-link" href="${createLink(controller: "userInfo",action: "index")}">
            <i class="fas fa-fw fa-user"></i>
            <span>Users</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="${createLink(controller: "dustbin",action: "index")}">
            <i class="fas fa-fw fa-trash"></i>
            <span>Dustbin</span></a>
    </li>
    <hr class="sidebar-divider d-none d-md-block">

</ul>
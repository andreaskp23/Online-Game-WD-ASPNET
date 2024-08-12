<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeadmin.aspx.cs" Inherits="onlinegameadmin.homeadmin" Theme="Theme1"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Admin Page Online Game WD</title>

    <!-- Custom fonts for this template-->
    <link href="App_Themes/Theme1/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="App_Themes/Theme1/css/sb-admin-2.min.css" rel="stylesheet"/>

    <style>
        .transparant{
            background-color: rgba(0,0,0,0);
            border: 0px;
            color: white;
            font-size: 0.85rem;
            font-weight:700;
        }
        .tableborder{
            margin: 10px;
            border: 1px solid rgb(242, 242, 242);
            border-radius: 30px;
        }
    </style>
</head>
<body class="page-top">
    <form id="form1" runat="server">
        <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Online Game Admin</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Member Table -->
            <li class="nav-item ">
                <a class="nav-link" href="">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <asp:Button ID="Button1" CssClass="span transparant" runat="server" Text="Member Table" OnClientClick="return false;" />
                </a>
            </li>
            <!-- Transaction Table -->
            <li class="nav-item ">
                <a class="nav-link" href="">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <asp:Button ID="Button4" CssClass="span transparant" runat="server" Text="Transaction Table" OnClientClick="return false;" />
                </a>
            </li>
            <!-- Nav Item - Tambah Saldo-->
            <li class="nav-item">
                <a class="nav-link" href="">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <asp:Button ID="Button2" CssClass="span transparant" runat="server" Text="Isi Saldo" OnClick="Button2_Click" />
                </a>
            </li>

           <li class="nav-item">
                <a class="nav-link" href="">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <asp:Button ID="Button3" CssClass="span transparant" runat="server" Text="Logout" OnClick="Button3_Click" />
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block" />

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <asp:Button class="rounded-circle border-0" id="sidebarToggle" runat="server" Text="" OnClientClick="return false;"/>
            </div>
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                    <asp:Label ID="labeladmin" runat="server" Text="Label"></asp:Label></span>
                                <img class="img-profile rounded-circle"
                                    src="App_Themes/Theme1/img/undraw_profile.svg" />
                            </a>
                        </li>
                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <!-- /.container-fluid -->
                <div class="tableborder">
                    <div id="memdiv">
                        <asp:GridView ID="gvMember" runat="server" AutoGenerateColumns="false" class="table table-striped table-bordered" style="width:100%">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="ID Member" />
                                <asp:BoundField DataField="nama_member" HeaderText="Nama Member" />
                                <asp:BoundField DataField="email" HeaderText="Email" />
                                <asp:BoundField DataField="cash" HeaderText="Cash" />
                                <asp:BoundField DataField="coin" HeaderText="Coin" />
                            </Columns>
                    </asp:GridView>
                    </div>
                    <div id="trandiv">
                        <asp:GridView ID="gvtransaction" runat="server" AutoGenerateColumns="false" class="table table-striped table-bordered" style="width:100%">
                            <Columns>
                                <asp:BoundField DataField="transaction_id" HeaderText="ID Transaksi" />
                                <asp:BoundField DataField="member_id" HeaderText="ID Member" />
                                <asp:BoundField DataField="jumlah" HeaderText="Jumlah" />
                                <asp:BoundField DataField="tanggal_transaksi" HeaderText="Tanggal" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            
            <br />

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    </form>
     <!-- Bootstrap core JavaScript-->
    <script src="App_Themes/Theme1/vendor/jquery/jquery.min.js"></script>
    <script src="App_Themes/Theme1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="App_Themes/Theme1/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="App_Themes/Theme1/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="App_Themes/Theme1/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="App_Themes/Theme1/js/demo/chart-area-demo.js"></script>
    <script src="App_Themes/Theme1/js/demo/chart-pie-demo.js"></script>
    <script>
        let memberbtn = document.getElementById("Button1");
        let tranbtn = document.getElementById("Button4");
        let membercontent = document.getElementById("memdiv");
        let trancontent = document.getElementById("trandiv");
        memberbtn.addEventListener("click", function () {
            membercontent.style.display = "block";
            trancontent.style.display = "none";
        });
        tranbtn.addEventListener("click", function () {
            membercontent.style.display = "none";
            trancontent.style.display = "block";
        });
    </script>
</body>
</html>

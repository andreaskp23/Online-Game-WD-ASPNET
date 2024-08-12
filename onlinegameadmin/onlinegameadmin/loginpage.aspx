<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="onlinegameadmin.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Login Admin</title>

    <!-- Custom fonts for this template-->
    <link href="App_Themes/Theme1/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="App_Themes/Theme1/css/sb-admin-2.min.css" rel="stylesheet" />
    <style>
        .background-login{
            background-color:rgb(128, 128, 128);
        }
        .tempattengah{
            margin-top:150px;
        }
    </style>
</head>
<body class="background-login">
    <form id="form1" runat="server">
        <div class="container">
            <!-- Outer Row -->
            <div class="row justify-content-center tempattengah">
                <div class="col-xl-10 col-lg-12 col-md-9">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Welcome Back</h1>
                                            <h1 class="h4 text-gray-900 mb-4">Admin!</h1>
                                        </div>
                                        <div class="user">
                                            <div class="form-group">
                                                <br /><br />
                                                <asp:TextBox ID="exampleInputEmail" CssClass="form-control form-control-user" aria-describedby="emailHelp" placeholder="Scan the card to login" runat="server" OnTextChanged="idLogin_TextChanged"></asp:TextBox>
                                                <br /><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

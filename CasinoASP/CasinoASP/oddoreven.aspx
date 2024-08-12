<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="oddoreven.aspx.cs" Inherits="CasinoASP.oddoreven"  Theme="Theme1" Async="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <!-- basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
      <!-- site metas -->
      <title>Odd or Even</title>
      <meta name="keywords" content="" /> 
      <meta name="description" content="" />
      <meta name="author" content="" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/bootstrap.min.css" />
      <!-- style css -->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/style.css" />
      <!-- Responsive-->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/responsive.css" />

      <!-- Messagebox-->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/messagebox.css" />

      <!-- Btn-->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/btn.css" />

      <!-- fevicon -->
      <link rel="icon" href="App_Themes/Theme1/Theme1/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/jquery.mCustomScrollbar.min.css" />
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen" />


       <style>
          .transparent-button {
            background-color: transparent;
            border: none;
          }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="wrapper">
         <div id="content">
            <!-- header -->
            <header>
               <!-- header inner -->
               <div class="head_top">
                  <div class="header">
                     <div class="container-fluid">
                        <div class="row">
                           <div class="col-md-3 logo_section">
                              <div class="full">
                                 <div class="center-desk">
                                    <div class="logo">
                                       <a href="Home.aspx"><img src="App_Themes/Theme1/Theme1/images/logo.png" alt="#" /></a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-9">
                              <div class="right_header_info">
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </header>
            <!-- end header inner -->
            <!-- end header -->

             <!-- Game-->
            <section class="slider_section">
                <div class="banner_main">
                <img src="App_Themes/Theme1/Theme1/images/oddoreven.png" alt="#"/>
                <div class="container-fluid padding3">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Game Component-->
                            <asp:Button ID="odd" runat="server" CssClass="Odd" Text="ODD" OnClick="odd_Click" />
                            <asp:Button ID="even" runat="server" CssClass="Even" Text="EVEN" OnClick="even_Click" />
                            <div class="Perhatian">
                                <h1>
                                    <asp:Label ID="Label1" runat="server" Text="Peringatan"></asp:Label>
                                </h1>
                            </div>

                            <div class="oddorevencoin">
                               <h1>
                                   <asp:Label ID="taruhan" runat="server" Text="1"></asp:Label>
                               </h1>
                            </div>

                            <div class="bet-layout">
                               <asp:Button ID="btn1" runat="server" Text="1 Coin" CssClass="bet-btn coin1" OnClick="btn1_Click" />
                               <asp:Button ID="btn20" runat="server" Text="3 Coin" CssClass="bet-btn coin3" OnClick="btn20_Click" />
                                <asp:Button ID="btn10" runat="server" Text="10 Coin" CssClass="bet-btn coin5" OnClick="btn10_Click" />
                                <asp:Button ID="btn50" runat="server" Text="50 Coin" CssClass="bet-btn coin10" OnClick="btn50_Click" />
                            </div>

                            <div class="random-layout">
                                <h1 class="number1">
                                    <asp:Label ID="angka1" runat="server" Text="1"></asp:Label>
                                </h1>
                                <h1 class="number2">
                                    <asp:Label ID="angka2" runat="server" Text="2"></asp:Label>
                                </h1>
                                <h1 class="number3">
                                    <asp:Label ID="angka3" runat="server" Text="3"></asp:Label>
                                </h1>
                            </div>
                        <!-- Game Component End-->
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- end Game-->
        <!--  footer -->
        <footer>
            <div class="footer">
               <div class="container">
                  <div class="row">
                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="row">
                           <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                              <div class="address">
                                 <h3>Links</h3>
                                 <ul class="Menu_footer">
                                    <li class="active"> <a href="#">Home</a> </li>
                                    <li><a href="#">About</a> </li>
                                    <li><a href="#">Game</a> </li>              
                                 </ul>
                                  <br /><br />
                              </div>
                           </div>
                           <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                              <div class="address">
                                 <h3>Contact us</h3>
                                 <ul class="Links_footer">
                                     <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </footer>
         <!-- end footer -->
      </div>
      </div>
    </form>

          <!-- Javascript files-->
      <script src="App_Themes/Theme1/Theme1/js/jquery.min.js"></script>
      <script src="App_Themes/Theme1/Theme1/js/popper.min.js"></script>
      <script src="App_Themes/Theme1/Theme1/js/bootstrap.bundle.min.js"></script>
      <script src="App_Themes/Theme1/Theme1/js/jquery-3.0.0.min.js"></script>
      <!-- Load Animation -->
      <script src="../js/custom.js"></script>
      <script>
          $(document).ready(function () {
              $(".fancybox").fancybox({
                  openEffect: "none",
                  closeEffect: "none"
              });

              $(".zoom").hover(function () {

                  $(this).addClass('transition');
              }, function () {

                  $(this).removeClass('transition');
              });
          });
      </script>
     <!-- Javascript files-->
     <script src="App_Themes/Theme1/Theme1/js/luckySpin.js"></script>
</body>
</html>

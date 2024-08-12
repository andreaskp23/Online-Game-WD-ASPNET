<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="luckyspin.aspx.cs" Inherits="CasinoASP.luckyspin" Theme="Theme1" Async="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <!-- basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
      <!-- site metas -->
      <title>Home</title>
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/bootstrap.min.css" />
      <!-- style css -->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/style.css" />
      <!-- Responsive-->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/responsive.css" />

      <!-- Btn-->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/btn.css" />

      <!-- fevicon -->
      <link rel="icon" href="App_Themes/Theme1/Theme1/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="App_Themes/Theme1/Theme1/css/jquery.mCustomScrollbar.min.css" />
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen" />
            <!--Google Font>-->
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
      <link href="https://fonts.googleapis.com/css2?family=Goblin+One&display=swap" rel="stylesheet" />

       <style>
           .transparent-button {
            background-color: transparent;
            border: none;
          }
          .agakatas{
                background-color: transparent;
                border: none;
                position:absolute;
                top:0px;
                left:0px;
                z-index:100;
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
               <img src="App_Themes/Theme1/Theme1/images/luckyslot_machine2.jpg" alt="#"/>
               <div class="container-fluid padding3">
                  <div class="row">
                     <div class="col-md-12">
                         <!-- Game Component -->
                        <div class="spinBtn" id="play" style="background-color: white;">
                            <h2 style="text-align:center; margin-top:17px">
                                Spin (
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                )                            
                            </h2>
                            <asp:Button ID="Button1" runat="server" Text="" CssClass="agakatas" Height="60px" Width="290px" OnClick="Button1_Click4"/>
                        </div>
                        <div class="luckyslot-peringatan">
                            <asp:Label ID="peringatan" runat="server" Text="Peringatan" style="color: red; font-weight: 500;"></asp:Label>
                        </div>
                        <div class="luckyspin-layout">
                           <div class="lucky-number1" style="margin-left: -10px; margin-top:-20px">
                               <asp:TextBox ID="angka1" runat="server" Text="1" Font-Size="120px" style="color: black; text-align: center" BackColor="Transparent" Width="124px" BorderColor="Transparent"></asp:TextBox>
                           </div>
                           <div class="lucky-number2" style="margin-left: 188px; margin-top:-20px"">
                               <asp:TextBox ID="angka2" runat="server" Text="1" Font-Size="120px" style="color: black; text-align: center" BackColor="Transparent" Width="124px" BorderColor="Transparent"></asp:TextBox>
                           </div>
                           <div class="lucky-number3" style="margin-left: 372px; margin-top:-20px"">
                               <asp:TextBox ID="angka3" runat="server" Text="1" Font-Size="120px" style="color: black; text-align: center" BackColor="Transparent" Width="124px" BorderColor="Transparent" OnTextChanged="angka3_TextChanged" CausesValidation="False"></asp:TextBox>
                           </div>
                        </div>
                         <!-- Game Component End -->
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- end Game-->
         <!-- Message Box -->               
         <!-- end Message Box -->

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

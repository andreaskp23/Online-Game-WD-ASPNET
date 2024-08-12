<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="convert.aspx.cs" Inherits="CasinoASP.convert" Theme="Theme1"%>

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
      <title>Convert</title>
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

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
         <!-- end loader -->
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
                        </div>
                     </div>
                  </div>
               </div>
            </header>
            <!-- end header inner -->
            <!-- end header -->
        
        <!-- Convert-->
        <div id="contact" class="reqeste">
            <!-- Cash to coin-->
            <div class="container cashtocoinpage" style="margin-top: 100px;" id="cashtocoinpage">
               <div class="row">
                  <div class="col-md-12">
                     <div class="titlepage">
                        <h2>Cash to Coin</h2>
                        <span></span>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-6 offset-md-3">
                     <div class="form_main">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="form_control" >
                                   Your Coin is: <asp:Label ID="coinlabel1" runat="server" Text="100"></asp:Label>
                                </label>
                             </div>
                           <div class="col-md-12">
                              <label class="form_control" >
                                   Your Cash is: <asp:Label ID="cashlabel1" runat="server" Text="10000"></asp:Label>
                              </label>
                           </div>
                           <div class="col-md-12">
                               <asp:TextBox ID="cointext1" runat="server" CssClass="form_control" placeholder="How may coin that you want? 1 Coin is 5000 Cash"></asp:TextBox>
                           </div>
                           <div class="col-md-12">
                                <label class="form_control" >
                                Total Price: <asp:Label ID="totalprice1" runat="server" Text=""></asp:Label> Cash
                                </label>
                            </div>
                            <div class="col-md-12" style="color: white; font-size: 20px; text-align: center;" >
                                <p>
                                    <asp:Label ID="peringatan1" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:Button ID="Button1" runat="server" Text="Convert!" CssClass="send_btn" OnClick="Button1_Click" />
                    </div>
                  </div>
               </div>
            </div>

            <!-- Coin to cash -->
            <div class="container cointocashpage" style="margin-top: 100px;" id="cointocashpage">
                <div class="row">
                   <div class="col-md-12">
                      <div class="titlepage">
                         <h2>Coin to Cash</h2>
                         <span></span>
                      </div>
                   </div>
                </div>
                <div class="row">
                   <div class="col-md-6 offset-md-3">
                      <div class="form_main">
                         <div class="row">
                            <div class="col-md-12">
                               <label class="form_control" >
                                  Your Coin is: <asp:Label ID="coinlabel2" runat="server" Text="100"></asp:Label>
                               </label>
                            </div>
                            <div class="col-md-12">
                                <label class="form_control" >
                                   Your Cash is: <asp:Label ID="cashlabel2" runat="server" Text="100000"></asp:Label>
                                </label>
                             </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="cointext2" runat="server" CssClass="form_control" placeholder="How may cash that you want? 1 Coin is 4900 Cash"></asp:TextBox>
                            </div>
                            <div class="col-md-12">
                                 <label class="form_control" >
                                 Total Cash that you will get: <asp:Label ID="totalprice2" runat="server" Text="10000"></asp:Label> Cash
                                 </label>
                             </div>
                             <div class="col-md-12" style="color: white; font-size: 20px; text-align: center;" >
                                <p>
                                    <asp:Label ID="peringatan2" runat="server" Text=""></asp:Label>
                                </p>
                             </div>
                         </div>
                     </div>
                     <div class="col-md-12">
                         <asp:Button ID="Button2" runat="server" Text="Convert!" CssClass="send_btn" OnClick="Button2_Click" />
                     </div>
                   </div>
                </div>
             </div>

             <div class="col-md-12">
                 <asp:Button ID="cointocashbutton" runat="server" CssClass="send_btn" Text="Coin to Cash?" OnClientClick="return false;"/>
            </div>
            <div class="col-md-12">
                <asp:Button ID="cashtocoinbutton" runat="server" CssClass="send_btn" Text="Cash to Coin?" OnClientClick="return false;"/>
            </div>
         </div>

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

      <!-- sidebar and load -->
      <script src="App_Themes/Theme1/Theme1/js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script src="App_Themes/Theme1/Theme1/js/custom.js"></script>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#sidebar").mCustomScrollbar({
                  theme: "minimal"
              });

              $('#dismiss, .overlay').on('click', function () {
                  $('#sidebar').removeClass('active');
                  $('.overlay').removeClass('active');
              });

              $('#sidebarCollapse').on('click', function () {
                  $('#sidebar').addClass('active');
                  $('.overlay').addClass('active');
                  $('.collapse.in').toggleClass('in');
                  $('a[aria-expanded=true]').attr('aria-expanded', 'false');
              });
          });
      </script>
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
    <script src="App_Themes/Theme1/Theme1/js/convert.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CasinoASP.Home" Theme="Theme1"%>

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

          .fontlogout{
              color: white;
              font-weight: 600;
          }
        </style>
   </head>

   <body class="main-layout">
      <form id="form2" runat="server">
      <!-- loader  -->
      <div class="wrapper">
         <!-- end loader -->
         <div class="sidebar">
            <!-- Sidebar  -->
            <nav id="sidebar">
               <div id="dismiss">
                  <i class="fa fa-arrow-left"></i>
               </div>
               <ul class="list-unstyled components">
                  <li class="active">
                     <a href="Home.aspx">Home</a>
                  </li>
                  <li>
                     <a href="#about">About</a>
                  </li>
                  <li>
                     <a href="#game">Game</a>
                  </li>
                  <li>
                     <a href="#">Username: <asp:Label ID="usernameLabel" runat="server" Text="Guest"></asp:Label></a>
                  </li>
                  <li>
                     <a href="#">User ID: <asp:Label ID="idLabel" runat="server" Text="Guest"></asp:Label></a>
                  </li>
                  <li>
                     <a href="#">Email: <asp:Label ID="emailLabel" runat="server" Text="Guest"></asp:Label></a>
                  </li>
                  <li>
                     <a href="#">Cash: <asp:Label ID="cashLabel" runat="server" Text="0"></asp:Label></a>
                  </li>
                  <li>
                     <a href="#">Coin: <asp:Label ID="coinLabel" runat="server" Text="0"></asp:Label></a>
                   </li>
                  <li style="margin-top: 25vh;">
                     <img src="App_Themes/Theme1/Theme1/images/Holoshop.png" alt="" />
                  </li>
               </ul>
            </nav>
         </div>
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
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-9">
                              <div class="right_header_info">
                                 <ul>
                                    <asp:Button ID="button3" runat="server" Text="Logout" OnClick="logoutbtn" CssClass="menu_icond fontlogout" CausesValidation="false"/>
                                    <li>
                                       <button type="button" id="sidebarCollapse">
                                            <img src="App_Themes/Theme1/Theme1/images/menu_icon.png" alt="#" />
                                       </button>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </header>
            <!-- end header inner -->
            <!-- end header -->
            <section class="slider_section">
               <div class="banner_main">
                  <img src="App_Themes/Theme1/Theme1/images/bg_main.jpg" alt="#"/>
                  <div class="container-fluid padding3">
                     <div class="row">
                        <div class="col-md-12">
                           <div class="text-bg">
                              <a href="#game">Play now</a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
         <!-- Categories -->
         <!-- casino -->
         <div id="game" class="casino">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="titlepage">
                        <h2>Our Casino Games</h2>
                        <span></span>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-4 padding_bottom">
                     <div class="game_box">
                        <figure><img src="App_Themes/Theme1/Theme1/images/game1.jpg" alt="#"/></figure>
                     </div>
                     <div class="game">
                        <a href="luckyspin.aspx" class="btnGame">
                           <h3 class="btnGameTxt">Lucky Spin</h3>
                        </a>
                     </div>
                  </div>
                  <div class="col-md-4 padding_bottom">
                     <div class="game_box">
                        <figure><img src="App_Themes/Theme1/Theme1/images/game3.jpg" alt="#"/></figure>
                     </div>
                     <div class="game">
                        <a href="oddoreven.aspx" class="btnGame">
                           <h3 class="btnGameTxt">Odd or Even</h3>
                        </a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="game_box">
                        <figure><img src="App_Themes/Theme1/Theme1/images/game6.jpg" alt="#"/></figure>
                     </div>
                     <div class="game">
                        <a href="keno.aspx" class="btnGame">
                           <h3 class="btnGameTxt">Mini Keno</h3>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end casino -->
         <!-- licens -->
         <div class="licens">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="titlepage">
                        <h2>Our Casino Games</h2>
                        <span></span>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <div id="licens" class="carousel slide licens_Carousel " data-ride="carousel">
                        <ol class="carousel-indicators">
                           <li data-target="#licens" data-slide-to="0" class="active"></li>
                           <li data-target="#licens" data-slide-to="1"></li>
                           <li data-target="#licens" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                           <div class="carousel-item active">
                              <div class="container">
                                 <div class="carousel-caption ">
                                    <div class="row d_flex">
                                       <div  class="col-md-6">
                                          <div class="test_box">
                                             <div class="jons">
                                                <h4>Convert Cash</h4>
                                             </div>
                                             <p>We provide converting coins into cash and vice versa without having to use third party applications so you can immediately use our services at cheaper prices and admin fees. We do this to support user comfort in playing on our website.</p>
                                             <a class="read_more" href="convert.aspx">Convert</a>
                                          </div>
                                       </div>
                                       <div  class="col-md-6">
                                          <div class="test_box">
                                             <div class="jons">
                                                <figure><img src="App_Themes/Theme1/Theme1/images/jons_img1.png" alt="#"/></figure>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="carousel-item">
                              <div class="container">
                                 <div class="carousel-caption">
                                    <div class="row d_flex">
                                       <div  class="col-md-6">
                                          <div class="test_box">
                                             <div class="jons">
                                                <h4>Experienced</h4>
                                             </div>
                                             <p>As one of the oldest casinos in history, of course we really know how to provide maximum comfort for our customers. We continue to improve our services to continue to support customers by providing useful features.</p>
                                             <a class="read_more" href="#about">About Us</a>
                                          </div>
                                       </div>
                                       <div  class="col-md-6">
                                          <div class="test_box">
                                             <div class="jons">
                                                <figure><img src="App_Themes/Theme1/Theme1/images/experience.png" alt="#"/></figure>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="carousel-item">
                              <div class="container">
                                 <div class="carousel-caption">
                                    <div class="row d_flex">
                                       <div  class="col-md-6">
                                          <div class="test_box">
                                             <div class="jons">
                                                <h4>Price</h4>
                                             </div>
                                             <p>We ensure that the prices we provide are the best prices. We do this to ensure that all groups can use our services. Because our focus is to provide the best service to customers regardless of race, ethnicity and their wallet.</p>
                                             <a class="read_more" href="#game">Let's Play</a>
                                          </div>
                                       </div>
                                       <div  class="col-md-6">
                                          <div class="test_box">
                                             <div class="jons">
                                                <figure><img src="App_Themes/Theme1/Theme1/images/price.png" alt="#"/></figure>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <a class="carousel-control-prev" href="#licens" role="button" data-slide="prev">
                        <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                        </a>
                        <a class="carousel-control-next" href="#licens" role="button" data-slide="next">
                        <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                        </a>
                     </div>
                     <p class="lorem">Some of these things are the reasons why Online Game WD is the best online gaming site. There are many advantages to WD Online Games compared to other websites, such as guarantees that if you win you won't get a prize, you won't be able to log in, etc. WD Online Games is also at the forefront in applying technology to our services such as using a card to log in which can open up the possibility of using the world's first internet (IoT) based Casino Machine.</p>
                  </div>

                  <div class="two_box" id="about">
                     <div class="row d_flex">
                        <div class="col-md-4">
                           <div class="many_box_img">
                              <figure><img src="App_Themes/Theme1/Theme1/images/logo.jpg" alt="#"/></figure>
                           </div>
                        </div>
                        <div class="col-md-8">
                           <div class="many_box">
                              <p>We are WD Online Games, a casino company that has been established since 16 BC. Our first casino was in the Ancient Egyptian Empire (now modern Egypt). After that we expanded to various places such as Spain and Europe. Thanks to good prospects, we were able to survive the great depression (1929 - 1939). In 2008, we converted all of our casino outlets online to keep up with technological developments.<br />
                                 We continue to make revisions so that we can keep up with the times by continuing to monitor the games provided from time to time. Currently we provide three main games, namely Lucky Slot, Odd or Even and Keno. Please remember that there is a possibility that the game may change over time.
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end lLicens -->

         <!-- Message Box -->  
        <div class="messageform">
            <div class="registerPage">
               <div class="row">
                  <div class="col-md-12">
                     <div class="titlepage">
                        <h2>Login</h2>
                        <span></span>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-6 offset-md-3">
                     <div class="form_main">
                        <div class="row">
                           <img src="App_Themes/Theme1/Theme1/images/cardscan.jpg" alt="" style="border: 1px solid black; border-radius: 10px; margin-bottom: 5px;" />
                           <p style="color: white; text-align: center; margin-bottom: 10px;">Scan the card into the scanner to Login</p>
                           <div class="col-md-12">
                              <asp:TextBox class="form_control" ID="idLogin" placeholder="ID" runat="server" OnTextChanged="idLogin_TextChanged"></asp:TextBox>
                           </div>
                           <div class="col-md-12">
                              <asp:Label ID="loginPeringatan" class="form_control" runat="server" Text=""></asp:Label>
                           </div>
                            <div class="col-md-12">
                               <asp:Button ID="Button5" class="send_btn" runat="server" Text="Login" OnClick="Button5_Click" CausesValidation="false"/>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>

            <div class="registerPage">
               <div class="row">
                  <div class="col-md-12">
                     <div class="titlepage">
                        <h2>Register</h2>
                        <span></span>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-6 offset-md-3">
                     <div id="cochang" class="form_main">
                        <div class="row">
                           <div class="col-md-12">
                               <asp:TextBox class="form_control" ID="nameRegister" placeholder="Name" runat="server"></asp:TextBox>
                           </div>
                           <div class="col-md-12">
                               <asp:RequiredFieldValidator ID="namerequired" runat="server" ErrorMessage="Name cannot be NULL!!" ControlToValidate="nameRegister" Display="Dynamic" ForeColor="Yellow"></asp:RequiredFieldValidator>
                           </div>
                           <div class="col-md-12">
                               <asp:TextBox class="form_control" ID="emailRegister" placeholder="Email" runat="server"></asp:TextBox>
                           </div>
                           <div class="col-md-12">
                               <asp:RequiredFieldValidator ID="emailrequired" runat="server" ErrorMessage="Email cannot be NULL!!" ControlToValidate="emailRegister" Display="Dynamic" ForeColor="Yellow"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Input the right Email!" ControlToValidate="emailRegister" Display="Dynamic" ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                           </div>
                           <div class="col-md-12">
                               <asp:TextBox class="form_control" ID="idRegister" placeholder="ID" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                           </div>
                           <div class="col-md-12">
                               <asp:RequiredFieldValidator ID="idrequired" runat="server" ErrorMessage="UID cannot be NULL!!" ControlToValidate="idRegister" Display="Dynamic" ForeColor="Yellow"></asp:RequiredFieldValidator>
                           </div>
                            <div class="col-md-12">
                                <asp:Label ID="peringatan" class="form_control" runat="server" Text="" ></asp:Label>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <asp:Button ID="submitRegister" class="send_btn" runat="server" Text="Send" OnClick="submitRegister_Click" />
                     </div>
                  </div>
               </div>
            </div>
                <div style="position: fixed; top: 0px; left: 0px;
                 z-index: 2000; width: 100%; background-color: rgba(0, 0, 0, 0.5); height: 100vh;" id="iklanpage">
                    <div style="width: 20%; margin-left: 40%; margin-right: 40%; margin-top: 150px;">
                        <asp:Button ID="iklanclose" OnClientClick="return false;" runat="server" Text="X" />
                        <img src="App_Themes/Theme1/Theme1/images/iklan.jpeg" alt="iklan" style="border: 5px solid white;"/>
                    </div>
                </div>
        </div>
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
                                    <li class="active"> <a href="index.html">Home</a> </li>
                                    <li><a href="#about">About</a> </li>
                                    <li><a href="#game">Game</a> </li>           
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
     <script src="App_Themes/Theme1/Theme1/js/messagebox.js"></script>
      <script src="App_Themes/Theme1/Theme1/js/luckySpin.js"></script>
   </body>
</html>





<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="keno.aspx.cs" Inherits="CasinoASP.keno" Theme="Theme1" Async="true"%>

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
      <title>Keno</title>
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
       <!--Google Font>-->
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
      <link href="https://fonts.googleapis.com/css2?family=Pixelify+Sans:wght@400..700&display=swap" rel="stylesheet" />


    <style>
         .transparent{
            background-color: rgba(0, 0, 0, 0);
            width: 40px;
            font-size: 30px;
            border: 0px solid rgba(0, 0, 0, 0);
            margin-left: 5px;
            margin-right: 5px;
         }

         .kenoBtn{
             font-size:20px;
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
                   <img src="App_Themes/Theme1/Theme1/images/kenomachine.jpg" alt="#"/>
                   <div class="container-fluid padding3">
                      <div class="row">
                         <div class="col-md-12">
                             <!-- Game Component -->
                             <asp:Button ID="kenosubmit" runat="server" Text="Submit" CssClass="kenoBtn" OnClick="kenosubmit_Click" />

                            <!-- Angka dari user -->
                            <div class="keno-layout">
                                <h1 id="keno1">1</h1>
                                <h1 id="keno2">2</h1>
                                <h1 id="keno3">3</h1>
                                <h1 id="keno4">4</h1>
                                <h1 id="keno5">5</h1>
                                <h1 id="keno6">6</h1>
                                <h1 id="keno7">7</h1>
                                <h1 id="keno8">8</h1>
                                <h1 id="keno9">9</h1>
                                <h1 id="keno10">10</h1>
                                <h1 id="keno11">11</h1>
                                <h1 id="keno12">12</h1>
                                <h1 id="keno13">13</h1>
                                <h1 id="keno14">14</h1>
                                <h1 id="keno15">15</h1>
                                <h1 id="keno16">16</h1>
                                <h1 id="keno17">17</h1>
                                <h1 id="keno18">18</h1>
                                <h1 id="keno19">19</h1>
                                <h1 id="keno20">20</h1>
                                <h1 id="keno21">21</h1>
                                <h1 id="keno22">22</h1>
                                <h1 id="keno23">23</h1>
                                <h1 id="keno24">24</h1>
                                <h1 id="keno25">25</h1>
                                <h1 id="keno26">26</h1>
                                <h1 id="keno27">27</h1>
                                <h1 id="keno28">28</h1>
                                <h1 id="keno29">29</h1>
                                <h1 id="keno30">30</h1>
                                <h1 id="keno31">31</h1>
                                <h1 id="keno32">32</h1>
                                <h1 id="keno33">33</h1>
                                <h1 id="keno34">34</h1>
                                <h1 id="keno35">35</h1>
                            </div>
                            <div class="player-number-layout">
                                <div class="form">
                                <asp:TextBox ID="angkaselector1" runat="server" CssClass="player-number"></asp:TextBox>
                                <asp:TextBox ID="angkaselector2" runat="server" CssClass="player-number"></asp:TextBox>
                                <asp:TextBox ID="angkaselector3" runat="server" CssClass="player-number"></asp:TextBox>
                                <asp:TextBox ID="angkaselector4" runat="server" CssClass="player-number"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Angka dari admin -->
                            <div class="bot-number-layout">
                                <h1>Dealer's number is:</h1>
                                <div class="bot-number">
                                    <asp:TextBox ID="dealernumber1" runat="server" CssClass="transparent" value="20"></asp:TextBox>
                                    <asp:TextBox ID="dealernumber2" runat="server" CssClass="transparent" value="9"></asp:TextBox>
                                    <asp:TextBox ID="dealernumber3" runat="server" CssClass="transparent" value="2"></asp:TextBox>
                                    <asp:TextBox ID="dealernumber4" runat="server" CssClass="transparent" value="11"></asp:TextBox>
                                </div>
                                <h1 class="result-keno">Result:</h1>
                                <h1>
                                    <asp:Label ID="resultlabel" runat="server" Text="Label"></asp:Label>
                                </h1><br />
                                <h1>Your coin:</h1>
                                <h1 id="usercoin">
                                    <asp:Label ID="usercoinlabel" runat="server" Text=""></asp:Label>
                                </h1>
                            </div>
                             <!-- Game Component End -->
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
     <script src="App_Themes/Theme1/Theme1/js/keno.js"></script>
</body>
</html>

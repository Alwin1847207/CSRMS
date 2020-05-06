<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/Project_Master.master" AutoEventWireup="true" CodeFile="Home_Project.aspx.cs" Inherits="Home_Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <header class="text-center" name="home">
  <div class="intro-text">
    <h1>Welcome to <strong>CSRMS</strong></h1>
    <p>College Student Record Management System</p>
    <a href="#works-section" class="btn btn-default btn-lg page-scroll">LOGIN</a> </div>
</header>

<!-- Services Section -->
<div id="services-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Our Services</h2>
      <hr>
      <div class="clearfix"></div>
      <p>Main services of the website are</p>
    </div>
    <div class="space"></div>
    <div class="row">
      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-desktop"></i>
        <h4>Live Attendance Recording</h4>
        <p>The teachers on each hour update the attendance for each students..</p>
      </div>
      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-gears"></i>
        <h4>College Notifications And Events</h4>
        <p>College Notifications can be eaisly accessed and known..</p>
      </div>
      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-rocket"></i>
        <h4>Chatting</h4>
        <p>Send your qurries to teachers, hod, and so on.</p>
      </div>
      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-line-chart"></i>
        <h4>Student Report</h4>
        <p>The live report of students can be generated eaisly.</p>
      </div>
    </div>
  </div>
</div>
<!-- Portfolio Section -->
<div id="works-section">
  <div class="container"> <!-- Container -->
    <div class="section-title text-center center">
      <h2>Login</h2>
      <hr>
      <div class="clearfix"></div>
      <p>Login To Access The Services. </p>
        <p>&nbsp;</p>
        <ul class="cat">
            <table class="nav-justified">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ul>
    </div>
    <div class="row">
      <div class="portfolio-items">
        <div class="col-sm-6 col-md-3 col-lg-3 web">
          <div class="portfolio-item">
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3 app">
          <div class="portfolio-item">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- About Section -->
<div id="about-section">
  <div class="container">
    <div class="section-title text-center center">
      <h2>About Us</h2>
      <hr>
      <div class="clearfix"></div>
      <p>Know more about the website.</p>
    </div>
    <div class="row">
      <div class="col-md-6"> <img src="img/about.jpg" class="img-responsive"> </div>
      <div class="col-md-6">
        <div class="about-text">
          <h4>Who We Are</h4>
          <p>we are third year BCA students from Don Bosco Arts and Science College, Affiliated to Kannur University, doing this project as their accademic project.</p>
          <h4>What We Do</h4>
          <p>We intent to create a website that could help students to access their details in a college eaisly. this website data are mostly uploded and managed by the teacher and admin. thus we could provide live updates.</p>
          <h4>Why Choose Us</h4>
          <p>We are non profit team, we plan this project as our accademic project. it is for improving our coding ablities. thus it is a right option to support the youth sprit..!</p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Achievements Section -->
<div id="achievements" class="section dark-bg">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-3">
        <div class="achievement-box"> <span class="count">210</span>
          <h4>Happy Teachers</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-3">
        <div class="achievement-box"> <span class="count">1,000</span>
          <h4>Registered Students</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-3">
        <div class="achievement-box"> <span class="count">590</span>
          <h4>Qurries Recieved</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-3">
        <div class="achievement-box"> <span class="count">14</span>
          <h4>Working Hours</h4>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Team Section -->
<div id="team-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Meet the Team</h2>
      <hr>
      <p>Meet the team who developed the project.</p>
    </div>
    <div id="row">
      <div class="col-md-3 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/01.jpg" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Alwin Joseph</h3>
            <p>Founder / CEO</p>
            <p>The core head of the project.</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/02.jpg" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Aparna George</h3>
            <p>Web Designer</p>
            <p>Web Designer designs the web pages.</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/03.jpg" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Agnes Francis</h3>
            <p>Creative Director</p>
            <p>Creative Director directs the creative part of the website.</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/04.jpg" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Robin Roy</h3>
            <p>Project Manager</p>
            <p>He is the one who manages the development of the project.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Contact Section -->
<div id="contact-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Contact Us</h2>
      <hr>
      <p>Feel free to contact us for any kind of information</p>
    </div>
    <div class="col-md-8 col-md-offset-2">
      <div class="col-md-4"> <i class="fa fa-map-marker"></i>
        <p>Department of BCA</p>
          <p>Don Bosco Arts And Science College, Angadikadavu</p>
      </div>
      <div class="col-md-4"> <i class="fa fa-envelope-o"></i>
        <p>CSRMS@company.com</p>
      </div>
      <div class="col-md-4"> <i class="fa fa-phone"></i>
        <p> +91 944 775 5834</p>
          <p> +91 949 726 8784</p>
      </div>
      <hr>
      <div class="clearfix"></div>
    </div>
    <div class="col-md-8 col-md-offset-2">
      <h3>Leave us a message</h3>
      <form name="sentMessage">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" id="name" class="form-control" placeholder="Name" >
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="email" id="email" class="form-control" placeholder="Email">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        </div>
        <div class="form-group">
          <textarea name="message" id="message" class="form-control" rows="4" placeholder="Message" ></textarea>
          <p class="help-block text-danger"></p>
        </div>
        <div id="success"></div>
        <button type="submit" class="btn btn-default">Send Message</button>
      </form>
    </div>
  </div>
</div>
</div>
<div id="social-section">
  <div class="container">
    <div class="social">
      <ul>
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a href="#"><i class="fa fa-github"></i></a></li>
        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
      </ul>
    </div>
  </div>
</div>
<div id="footer">
  <div class="container">
    <div class="fnav">
      <p>Copyright &copy; CSRMS. Designed by <a href="Home_Project.aspx" rel="nofollow">Alwin Joseph</a></p>
    </div>
  </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/jquery.counterup.js"></script> 
<script type="text/javascript" src="js/waypoints.js"></script> 
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script> 
<script type="text/javascript" src="js/jquery.isotope.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<%--<script type="text/javascript" src="js/contact_me.js"></script> --%>

<!-- Javascripts
    ================================================== --> 
<script type="text/javascript" src="js/main.js"></script>


    <%--<table class="auto-style1">
        <tr>
            <td class="auto-style2">home of the project</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                
                
                <%--<asp:Panel ID="Panel2" runat="server" BackColor="#CCFFCC" BorderStyle="Inset" BorderWidth="3" Width="454px">
<marquee direction="down"  onmouseover="this.stop()" onmouseout="this.start()" scrolldelay="100" style="height: 127px; width: 457px;">
      <asp:Literal ID="lt2" runat="server"></asp:Literal>
</marquee>
</asp:Panel>--%>
</td>
            <td>&nbsp;</td>
        </tr>
    </table>--%>
</asp:Content>


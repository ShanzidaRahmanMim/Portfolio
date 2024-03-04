<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MyPortfolio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title></title>
    <link rel="stylesheet" href="css_js/style.css"/>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.1.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet"/>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
</head>
<body>
    <form id="form1" runat="server">
       <header>
        <a href="#" class="logo">My <span>Portfolio</span></a>
        <div class="bx bx-menu" id="menu-icon"></div>
        <ul class="navlist">
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#education">Education</a></li>
            <li><a href="#project">Projects</a></li>
            <li>
                <asp:HyperLink ID="HyperLink1"  NavigateUrl="Admin/Login.aspx" runat="server">Login</asp:HyperLink>
                <!--<a href="#achievements">Login</a>-->
            </li>
            <!-- <li><a href="#">Photograogy</a></li> -->
        </ul>
        <div class="top-btn">
            <a href="#contact" class="h-btn">Contact me</a>
        </div>
    </header>
    <section class="hero" id="home">
        <div class="main-content" data-aos="fade-in">
            <h4>Hi,There!</h4>
            <h1>I'm <span>Shanzida Rahman Mim</span></h1>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aperiam nesciunt laudantium fuga! Nisi veritatis, ea dolorem odio maiores sunt hic velit iste repudiandae at exercitationem quae et! Libero, laborum nostrum!</p>
            <div class="social">
                <a href="#"><img src="images/facebook.png" alt="image"></a>
                <a href="#"><img src="images/instagram.png" alt="image"></a>
                <a href="#"><img src="images/linkedin.png" alt="image"></a>
                <a href="#"><img src="images/github.png" alt="image"></a>
                <!-- <a href="#"><i class="ri-github-fill"></i></a> -->
            </div>
            <div class="main-btn">
                <a href="images/cv.pdf" download class="btn">Download CV</a>
            </div>
        </div>
        <div class="pic">
            <img src="images/mim.png" alt="image">
        </div>

    </section>
    <!-- data-aos="zoom-in-down" -->
    <section class="about" id="about">
       
        <div class="about-img">
        
            <img src="images/last.jpg" alt="image"/>
        </div>
        <div class="about-text" >
            <h2>I am a <span>student</span><br/> & I am studying at <span>KUET</span></h2>
            <div class="exp">
             <p class="dept"  >  
                Department: <span id="departmentParagraph" runat="server">Computer Science and Engineering</span></p>
            
            <p class="dept" >
                Batch: <span id="batchParagraph" runat="server">2020</span></p>
           
            <p class="dept"  >
               Address:<span id="addressParagraph" runat="server">Kushtia,Khulna,Bangladesh</span></p>
            
            <p class="dept" >
                Email: <span id="emailParagraph" runat="server">shanzidamim33@gmail.com</span></p>
            
            <p class="dept" >
                Phone: <span id="phoneParagraph" runat="server">01301560000</span></p>
            </div>
        </div>
    </section>
    <section class="education" id="education">
        <div class="center-text" >
        <h2>My <span>Education</span></h2>
        </div> 
        <div class="edu-content" >
            <div class="box">
                <img src="images/calendar.png" alt="image"/>
                <h3>HSC</h3>
                <p>
                    Institute :<span>Kushtia Govt. College</span> <br/>
                    GPA : <span>5.00</span> <br/>
                    Passing year :<span>2020</span> 
                </p>
            </div>
            <div class="box">
                <img src="images/calendar.png" alt="image"/>
                <h3>SSC</h3>
                <p>
                    Institute : :<span>Kushtia Govt. Girls' High School</span> <br/>
                    GPA ::<span>5.00 </span><br/>
                    Passing year ::<span> 2018</span>
                </p>
            </div>
            <div class="box">
                <img src="images/calendar.png" alt="image"/>
                <h3>HSC</h3>
                <p>
                    Institute ::<span> Kushtia Govt. College</span> <br/>
                    GPA : :<span>5.00</span> <br/>
                    Passing year ::<span> 2020</span>
                </p>
            </div>
        
            <div id="contentPlaceholder1"  runat="server">

             </div>
           </div> 
     
       </section>
      <%--<section class="project" id="project">
       <div class="center-text" >
           <h2>My <span>Projects</span></h2>
       </div> 
           <div class="project-content">
               <div class="row">
                   <img src="images/port-1.jpg" alt=""/>
                   <div class="main-row">
                       <div class="row-text">
                           <h5>Website Design</h5>
                       </div>
                       <div class="row-icon">
                           <i class="ri-github-fill"></i>
                       </div>
                   </div>
                   <h4>Website Development</h4>
               </div>
               <div class="row">
                   <img src="images/port-2.jpg" alt=""/>
                   <div class="main-row">
                       <div class="row-text">
                           <h5>Website Design</h5>
                       </div>
                       <div class="row-icon">
                           <i class="ri-github-fill"></i>
                       </div>
                   </div>
                   <h4>App Development</h4>
               </div>
               <div class="row">
                   <img src="images/port-3.jpg" alt=""/>
                   <div class="main-row">
                       <div class="row-text">
                           <h5>Website Design</h5>
                       </div>
                       <div class="row-icon">
                           <i class="ri-github-fill"></i>
                       </div>
                   </div>
                   <h4>Database handling</h4>
               </div>
               <div class="row">
                   <img src="images/port-4.jpg" alt=""/>
                   <div class="main-row">
                       <div class="row-text">
                           <h5>Website Design</h5>
                       </div>
                       <div class="row-icon">
                           <i class="ri-github-fill"></i>
                       </div>
                   </div>
                   <h4>Website Development</h4>
               </div>
               <div class="row">
                   <img src="images/port-5.jpg" alt=""/>
                   <div class="main-row">
                       <div class="row-text">
                           <h5>Website Design</h5>
                       </div>
                       <div class="row-icon">
                           <i class="ri-github-fill"></i>
                       </div>
                   </div>
                   <h4>Website Development</h4>
               </div>
               <div class="row">
                   <img src="images/port-6.jpg" alt=""/>
                   <div class="main-row">
                       <div class="row-text">
                           <h5>Website Design</h5>
                       </div>
                       <div class="row-icon">
                           <i class="ri-github-fill"></i>
                       </div>
                   </div>
                   <h4>Website Development</h4>
               </div>
           </div>
          
   </section>--%>
         <section class="project" id="project">
             <div class="center-text" >
                    <h2>My <span>Projects</span></h2>
             </div> 
        <div class="experience-details-container">

            <asp:Panel ID="projectsContainer" runat="server"></asp:Panel>
            
          
        </div>
             </section>
    <section class="contact" id="contact">
        <div class="center-text">
            <h2>Contact <span>Me</span></h2>
        </div>
        <div class="contact-form">
            <form>
                <div>
                     <asp:TextBox ID="nameeId" runat="server" placeholder="Your name" required></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="emailId" runat="server" placeholder="Email Address" required></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="phoneId" runat="server" placeholder="Phone no" ></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="textId" placeholder="Write your message here" runat="server" TextMode="MultiLine" Rows="10" Columns="20"></asp:TextBox>

                </div>
                <div>
                    <asp:Button ID="Button1"  TextMode="MultiLine" CssClass="send-btn" runat="server" Text="Send" OnClientClick="sendMsg" OnClick="Button1_Click" />

                </div>
                <!--<input type="text" placeholder="Your name" id="nameId" required/>
                <input type="email" placeholder="Email Adress" id="emailId" required />
                 <input type="number" placeholder="Phone no" id="phoneId" required />
                <textarea cols="30" rows="10" id="textId" placeholder="Write message here" required></textarea>
                <input type="submit" name="" value="Send message" class="send-btn" onclick="sendMsg()"/>-->
                
            </form>
        </div >
     
        <p id="msg" class="msg">message sent successfully!</p>
        <p id="empty" class="empty">fields can't be empty!</p>
       
    </section>
    <div class="footer">
        <div class="copyright">
            <p>Shanzida Rahman Mim &copy; All Rights Reserved.</p>
           
        </div>
        <a href="#home" class="scroll-top">
            <i class="ri-arrow-up-s-fill"></i>
        </a>
    </div>
    <script src="css_js/script.js"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init(
        {
            offset:300,
            duration:1400,
        }
      );
    </script>
    </form>
</body>
</html>

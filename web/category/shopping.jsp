<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
     import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <!-- This code is only meant for previewing your Reflow design. -->
    <head>
        <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.3.min.js"></script>
    <link rel="stylesheet" href="boilerplate.css" />
    <link rel="stylesheet" href="Page 1.css" />
    <meta name="viewport" content="initial-scale = 1.0,maximum-scale = 1.0" />
    <script>var __adobewebfontsappname__ = "reflow"</script>
    <script src="http://use.edgefonts.net/podkova:n4,n7:all;voces:n4:all.js"></script>
     <style>
      #text1:hover{
        background-image:url('img/����.gif');
        background-repeat:no-repeat;
        background-position: top right;
        }
      #text2:hover{
        background-image:url('img/����.gif');
        background-repeat:no-repeat;
        background-position: top right;
        }
      #text3:hover{
        background-image:url('img/����.gif');
        background-repeat:no-repeat;
        background-position: top right;
        }
      #text4:hover{
        background-image:url('img/����.gif');
        background-repeat:no-repeat;
        background-position: top right;
        }
     #text5:hover{
        background-image:url('img/����.gif');
        background-repeat:no-repeat;
        background-position: top right;
        }
     #box2{
       font-size:20px;
       font-family:cursive;
       padding-top:70px;
       padding-bottom:20px;
       text-weight:15;
       }
     .home_search{
       border:0;
       padding:0;
       opacity:0.4;
       height:56px;
       width:650px;
       font-size:25px;}

     </style>
    </head>
    <body>

    <div id="primaryContainer" class="primaryContainer clearfix">
         <p id="text">
        <span id="textspan">H</span>SS
        </p>
        <a href="Page 1.html"><img id="image" src="img/home.jpg" class="image" /></a>
        <div id="box" class="clearfix">
          <div id="box3" class="clearfix">
           <input type="text" class="home_search" placeholder="Search..">
          <img id="image7" src="img/search.png" class="image" />
          </div>
        </div>
        <div id="click1">
         <img id="image8" src="img/more.png" class="image" />
        </div>
        <p id="text1">
        <br /><span id="textspan"><a href="category/shopping.html">&nbsp; &nbsp; �м� ���θ�</span>
        </p>
        <img id="image1" src="img/a1.jpg" class="image" />
        <p id="text2">
        <br /><a href="category/airline.jsp">&nbsp; &nbsp; ����&nbsp;<span id="textspan1">�װ���</span>
        </p>
        <img id="image2" src="img/a2.jpg" class="image" />
        <p id="text3">
        <br /><a href="category/game.jsp">&nbsp;&nbsp;      ���� ����Ʈ
        </p>
        <img id="image3" src="img/a1.jpg" class="image" />
        <p id="text4">
        <br /><a href="category/search.jsp">&nbsp; &nbsp; <span id="textspan2">&nbsp;�˻� ����Ʈ</span>
        </p>
        <img id="image4" src="img/a2.jpg" class="image" />
        <p id="text5">
        <br /><a href="category/social.jsp">&nbsp;&nbsp;&nbsp;&nbsp;   �Ҽ� Ŀ�ӽ�</a>
        </p>
        <img id="image5" src="img/a1.jpg" class="image" /><br>
          <input type="text"  id="search" 
          placeholder="Search.." >
         <img id="image_search" src="img/search_.PNG" class="image">
        <div id="box1" class="clearfix">
        </div>
        <img id="image6" src="img/f.png" class="image" />
        <div id="box2" class="clearfix">
         <div id="content">
         
           <%
        // ���� �α��ε� ���̵� ���ٸ� (= session�� ����� id�� ���ٸ�)
        if(session.getAttribute("id") == null && session.getAttribute("pw") == null ) {
            %>
             <p>Login</p>
          
            <br /> <form action="logincheck.jsp" method="post">
            <br />
            <br /> ID <input name="input_id" type="text">
            <br />
            <br /> PW <input name="input_pw" type="password">
             <button> �α��� </button>
            <br /> </form>
           
            <%
        } 
        // ���� �α��ε� ���̵� �ִٸ� (= session�� ����� id�� �ִٸ�)
        else {
            out.print(session.getAttribute("id") + " �� ȯ���մϴ�");
            %>
           
            <br /> <form action="logout.jsp" method="post">
            <br />
            <br /> <button> �α׾ƿ� </button>
            <br />
            <br /> </form>
            <br />
            <%
        }
    %>
          
          
          
         <div>

         <a href="SignUp.jsp">Sign Up</a> / <a href="Page_1.jsp">Guest Login</a></div>
         
        </div>
        </div>
    </div>
    <script type="text/javascript" src="base.js"></script>
     
    
    
    </body>
</html>
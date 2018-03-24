
<html>

<head>
  
  <title>Login Form</title>
  
  
      <link rel="stylesheet" href="css/style.css">

   
</head>
<body style="background-image:url(logback.jpg)">





  <div class="form" >
      
      <ul class="tab-group">
        <li ><a href="signup.jsp">Admin</a></li>
        <li ><a style="background: green;color: #ffffff;" >Member</a></li>
      </ul>
      
     
        
        <div id="login">   
          <h1>Welcome</h1>
          
          <form action="dologin.jsp" method="post">
          
            <div class="field-wrap">
            <input name="e" type="text" required autocomplete="on" placeholder="User ID*">
          </div>
          
          <div class="field-wrap">
            <input name="p" type="password"required autocomplete="off" placeholder="Password*">
          </div>
                             
          <button class="button"/>Log In</button>

		  <br><br>
		  <center><a href="member.jsp"><p fontcolor="white">Click here to register...</p></a></center>
          
          </form>

        </div>
        
      </div>
      
</div> 




</body>

</html>

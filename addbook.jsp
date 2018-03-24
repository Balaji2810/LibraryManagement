
<html>

<head>
  
  <title>Sign-Up</title>
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body style="background:rgba(255,255,255,0.8)">








  <div class="form" >
      
      
      
      
        <div id="signup">   
          <h1>Add Books</h1>
          
          <form action="bookreg.jsp" method="post">
          
          <div >
            <div >
              <input type="text" name="id" required autocomplete="off" placeholder="Book ID*" style="width:100%">
            </div>
        
            <br>
          </div>

          <div class="field-wrap">
            <input type="text"required autocomplete="off" name="name" placeholder="Book Name*">
          </div>
          
          <div class="field-wrap">
            <input type="text" required autocomplete="off" name="author" placeholder="Author*">
          </div>
		  
		  <div >
              <input type="text" name="count" required autocomplete="off" placeholder="Count*" style="width:100%">
            </div>
          <br>
          <button type="submit" class="button"/>ADD</button>
          
          </form>
        </div>
     
</div> 




</body>

</html>

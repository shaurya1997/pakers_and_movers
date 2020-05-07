    <!DOCTYPE html>
<html lang="en">
    
<head>
        <title>Pakers And Movers</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/matrix-login.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<style>
    .shaurya
    {
        position:absolute;
        left:370px;
        top:195px;
         background-image: url('img_girl.jpg');
    }
    </style>
                
    <script> 
   
        function Toggle() { 
            var temp = document.getElementById("name"); 
            if (temp.type === "password") { 
                temp.type = "text"; 
            } 
            else { 
                temp.type = "password"; 
            } 
        } 
</script> 
    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="check_master_admin.jsp" method="POST">
				 <div class="control-group normal_text"> <h3><img src="" alt="Logo" /></h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"> </i></span><input type="email" placeholder="User email" name="email" required/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" placeholder="Password"  name="password" id="name" required/>   
                          
                        </div>
                    </div>
                </div>
                                 <div class="shaurya">
                                                    <input type="checkbox" onclick="Toggle()"> 
                                                    
                                                       </div>
                                  <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_db"><i class="icon-home"></i></span><input type="number" placeholder="Branch Code" name="code" required/>
                        </div>
                    </div>
                </div>
                                              <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_db"><i class="icon-home"></i></span><input type="text" placeholder="Master admin/admin" name="code" required/>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Lost password?</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-success" value="Login"/></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical">
				<p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>
				
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right"><a class="btn btn-info"/>Reecover</a></span>
                </div>
            </form>
        </div>
        
        <script src="js/jquery.min.js"></script>  
        <script src="js/matrix.login.js"></script> 
    </body>

</html>

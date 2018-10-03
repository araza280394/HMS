<html> 

<title>UserRegistration</title> 
<head><link rel="stylesheet" href="Design.css"> </head>
<h1 align="center">Please Sign Up</h1>

<body align="center" bgcolor="#E9967A">  
<form action="servlet/Register" method="post">  
  
First Name:<input type="text" name="FirstName"/><br/><br/>  
Last Name:<input type="text" name="LastName"/><br/><br/>  
Username:<input type="text" name="username"/><br/><br/> 
Password:<input type="password" name="password"/><br/><br/>   

Usertype :<input type="radio" name="usertype" value="1"> Admin
		  <input type="radio" name="usertype" value="2"> Doctor
		  <input type="radio" name="usertype" value="3"> Patient <br> <br>	
		
  
<br/><br/>  
<input type="submit" value="Sign Up"/>  <br>

<a href="LoginPage.jsp"><--Home</a>
  
</form>  
</body>  
</html> 



<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head><link rel="stylesheet" href="Design.css"> </head>


<body>
<div class="container register-form">
            <div class="form">
                <div class="note">
                    <p>Register Here.</p>
                </div>

                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" name="FirstName" class="form-control" placeholder="First Name*" value=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" name="LastName" class="form-control" placeholder="Last Name*" value=""/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" name="username" class="form-control" placeholder="Username*" value=""/>
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control" placeholder="Password" value=""/>
                            </div>
                            <div class="form-group">
                                <input type="radio" name="usertype" class="form-control" placeholder="" value="1"/>Admin
                                <input type="radio" name="usertype" class="form-control" placeholder="" value="2"/>Doctor
                                <input type="radio" name="usertype" class="form-control" placeholder="" value="3"/>Patient
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btnSubmit">Submit</button>
                </div>
            </div>
        </div>
        
    </body>
    
</html>    
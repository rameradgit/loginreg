<html>
<head>
<meta charset="ISO-8859-1">
<title>:: New Login ::</title>
</head>
<body>
<script>
function validateform(){
var name=document.myform.name.value;
var password=document.myform.password.value;

if (name==null || name==""){
  alert("Name can't be blank");
  return false;
}

if (document.myform.name.value=="admin" && document.myform.password.value=="admin"){
window.location.replace("http://democicd-732752620.us-east-1.elb.amazonaws.com/login/home.jsp");
return true;
}else{
document.getElementById("error").innerHTML = "Wrong username or password entry."
return false;
}
}
</script>
</br> </br> </br>
  <div align="center">
  <h1>
<form name="myform" method="post" action="http://democicd-732752620.us-east-1.elb.amazonaws.com/login/home.jsp" onsubmit="return validateform()" >
Name: <input type="text" name="name"><br/>
Password: <input type="password" name="password"><br/>
<div id="error"></div>
<input type="submit" value="register">
</form>
</h1>
</div>
</body>
</html>

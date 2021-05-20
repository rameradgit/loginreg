<html>
<head>
<style>
body {
  background-image: url('visuel2.png');
}
</style>
<meta charset="ISO-8859-1">
<title>:: New Login Screen::</title>
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
  EXPLEO GROUP CI/CD/CT DEMO
<form name="myform" method="post" action="http://democicd-732752620.us-east-1.elb.amazonaws.com/login/home.jsp" onsubmit="return validateform()" >
UserName: <input type="text" name="name"><br/> </br> </br>
Password: <input type="password" name="password"><br/> </br> </br>
<div id="error"></div> </br> </br>
<input type="submit" value="register">
</form>
</h1>
</div>
</body>
</html>

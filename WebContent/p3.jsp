<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  href="c1.css"/> 

<script>
function myFunction() {
  var dat1 = document.getElementById('fnameid').value;
                var date1 = new Date(dat1)//converts string to date object
                //alert(date1);
               alert("Day of the week is "+date1.getDay())
			   
}
</script>

</head>

<body>


<h2  style="text-align:center;color:red">Date-Time Calculator</h2>

<div id="div1" class="center">

<h3 style="color:white">Enter date in the form of MM/DD/YYYY only</h3>

  <label for="fname">Enter Date 1</label><br/>
  <input type="text" id="fnameid" name="fname" value="" ><br/><br/>
 <input type="button" value="Get Day" onclick="myFunction()"><br/><br/>
  

</div>





</body>

</html>
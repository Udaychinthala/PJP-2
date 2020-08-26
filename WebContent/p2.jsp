<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  href="c1.css"/> 

<script>
function myFunction(wt) {
  var dat1 = document.getElementById('fnameid').value;
                var date1 = new Date(dat1)//converts string to date object
                
                var ndays = document.getElementById('ndays').value;
				var nweeks = document.getElementById('nweeks').value;
				var nmonths = document.getElementById('nmonths').value;
				
				var finalvalue = parseInt(ndays)+parseInt(nweeks)*7+parseInt(nmonths)*30;
               

			   //var date2 = new Date(dat2)
                
var result = new Date();
if(wt==0){
result.setDate(date1.getDate() - finalvalue);
}else{
  result.setDate(date1.getDate() + finalvalue);
     }          
		alert("Result : : "+result);	   
			   
}
</script>

</head>

<body>


<h2  style="text-align:center;color:red">Date-Time Calculator</h2>

<div id="div1" class="center">

<h3 style="color:white">Enter date in the form of MM/DD/YYYY only</h3>

  <label for="fname">Enter Date 1</label><br/>
  <input type="text" id="fnameid" name="fname" value="" ><br/><br/>
  
  <label for="lname">Enter n Days</label><br/>
  <input type="text" id="ndays" name="lname" value="" ><br/><br/>
  
  <label for="lname">Enter n Weeks</label><br/>
  <input type="text" id="nweeks" name="lname" value="" ><br/><br/>
  
  <label for="lname">Enter n Months</label><br/>
  <input type="text" id="nmonths" name="lname" value="" ><br/><br/>
  
  
  
  <input type="button" value="Subtract Dates" onclick="myFunction(0)"><br/><br/>
  <input type="button" value="Add Dates" onclick="myFunction(1)">


</div>





</body>
</html>
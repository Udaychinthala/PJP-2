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
                //alert(date1);
                var dat2 = document.getElementById('lnameid').value;
                var date2 = new Date(dat2)
                //alert(date2);

                //var oneDay = 24 * 60 * 60 * 1000; // hours*minutes*seconds*milliseconds
               // var diffDays = Math.abs((date1.getTime() - date2.getTime()) / (oneDay));
               // alert(diffDays);
			   
			   if(wt==0){
			   var diff = new Date(date2.getTime() - date1.getTime());
			   }else{
			   var diff = new Date(date2.getTime() + date1.getTime());
			   }
// diff is: Thu Jul 05 1973 04:00:00 GMT+0300 (EEST)

var x=(diff.getUTCFullYear() - 1970); // Gives difference as year
// 3

var y=(diff.getUTCMonth()); // Gives month count of difference
// 6

var z=(diff.getUTCDate() - 1); //days
alert("Result :: "+y+"/"+z+"/"+x);
}
</script>

</head>

<body>


<h2  style="text-align:center;color:red">Date-Time Calculator</h2>

<div id="div1" class="center">

<h3 style="color:white">Enter date in the form of MM/DD/YYYY only</h3>

  <label for="fname">Enter Date 1</label><br/>
  <input type="text" id="fnameid" name="fname" value="" ><br/><br/>
  <label for="lname">Enter Date 2</label><br/>
  <input type="text" id="lnameid" name="lname" value="" ><br/><br/>
  <input type="button" value="Subtract Dates" onclick="myFunction(0)"><br/><br/>
  <input type="button" value="Add Dates" onclick="myFunction(1)">


</div>





</body>
</html>
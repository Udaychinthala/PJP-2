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
               alert("Week number of the date is "+date1.getWeek())
			   
}



Date.prototype.getWeek = function (dowOffset) {
/*getWeek() was developed by Nick Baicoianu at MeanFreePath: http://www.meanfreepath.com */

    dowOffset = typeof(dowOffset) == 'int' ? dowOffset : 0; //default dowOffset to zero
    var newYear = new Date(this.getFullYear(),0,1);
    var day = newYear.getDay() - dowOffset; //the day of week the year begins on
    day = (day >= 0 ? day : day + 7);
    var daynum = Math.floor((this.getTime() - newYear.getTime() - 
    (this.getTimezoneOffset()-newYear.getTimezoneOffset())*60000)/86400000) + 1;
    var weeknum;
    //if the year starts before the middle of a week
    if(day < 4) {
        weeknum = Math.floor((daynum+day-1)/7) + 1;
        if(weeknum > 52) {
            nYear = new Date(this.getFullYear() + 1,0,1);
            nday = nYear.getDay() - dowOffset;
            nday = nday >= 0 ? nday : nday + 7;
            /*if the next year starts before the middle of
              the week, it is week #1 of that year*/
            weeknum = nday < 4 ? 1 : 53;
        }
    }
    else {
        weeknum = Math.floor((daynum+day-1)/7);
    }
    return weeknum;
};
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
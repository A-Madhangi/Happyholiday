<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
#myHeader {
  background-color: #F43CEE;
  color: black;
  padding: 40px;
  text-align: center;
} 
.button {
  background-color:#F43CEE;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

</style>

</head>
<body>
<div align="center">
<form action="/happyholiday/BookingController" method="post">
<h1 id="myHeader">HAPPY HOLIDAYS</h1>

<label>FROM</label><input type="text" name="fromPlace" id="text" placeholder="fromLocation" style="margin-left:120px;"><br/><br/>
<label>TO</label><input type="text" name="toPlace" id="text" placeholder="toplace"style="margin-left:140px;"><br/><br/>
<label>NO OF PERSONS</label> <input type="text" name="noOfPersons" id="text" placeholder="noOfPersons"style="margin-left:40px;"><br/><br/>




<input type="submit" class="button" value="CHECKFARE">

 </form>
 </div>

</body>
</html>


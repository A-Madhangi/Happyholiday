<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="form.css">
<title>Insert title here</title>

<style>
 #header {
  background-color: #F43CEE;
  color: black;
  padding: 40px;
  text-align: center;
}
#body
{
  padding: 250px;
}
#footer {
  background-color: #F43CEE;
  color: black;
  padding: 20px;
  text-align: left;
}
</style>
</head>
<body>
<h1 id="header">HAPPY HOLIDAY</h1>
<div id="body">
<c:if test="${!empty custlist}"> 
  <table>
  <tr>
  	
   <th width="180" align="center">BUS FEE</th>
   <th width="180"  align="center">FOOD FEE</th>
   <th width="180" align="center">STAY FEE</th>
   <th width="180" align="center">TOTAL FARE</th>
   <th width="140" align="center"></th>
   <th width="90" align="center"></th>
   <th width="90" align="center"></th>
   </tr>
   <c:forEach items="${requestScope.custlist }" var="product">
    <tr>


    <td align="center">${product.bus_fee}</td>
    <td align="center">${product.food_fee}</td>
    <td align="center">${product.stay_fee}</td>
    <td align="center">${product.totalFare}</td>
    </tr>
 	</c:forEach>
  </table>
  </c:if>
</div>

<h6 id="footer">Copyrights@Madhangi_A</h6>
  

</body>
</html>

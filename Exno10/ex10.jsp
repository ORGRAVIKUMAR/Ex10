<%-- 
    Document   : ex10
    Created on : 2 Apr, 2023, 7:21:08 PM
    Author     : Ravikumar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="ex10.country"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: aqua">
        <% 
            country obj1=new country("USA","Washington D.C.","USD","32200000");
            country obj2=new country("Canada","Ottawa","CAD","3800000");
            country obj3=new country("Mexico","Mexico City","MXN","13000000");
            ArrayList<country> table=new ArrayList<country>();
            table.add(obj1);
            table.add(obj2);
            table.add(obj3);
            String str="name-capital-currency-population";
            pageContext.setAttribute("Str1", str);
            pageContext.setAttribute("world",table);
         %>  
    <center> <h1 style="color:blue">Top three Country Information in decoration </h1></center>
    <br>
    <center><table border='1'>
            <tr>
               <th>Name</th>
               <th>Capital</th>
               <th>Currency</th>
                <th>Population</th>
            </tr>
            <c:forEach items="${pageScope.world}" var="worlds">   
                <tr>
                    <td style="background-color:red"><c:out value="${worlds.getName()}"></c:out></td>
                    <td style="background-color:red"><c:out value="${worlds.getCapital()}"></c:out></td>
                    <td style="text-align: center;background-color:red"><c:out value="${worlds.getCurrency()}"></c:out></td>                      
                    <td style="text-align: center;background-color: red"><c:out value="${worlds.getPopulation()}"></c:out></td>
                </tr>
            </c:forEach>
        </table></center>
    </body>
</html>

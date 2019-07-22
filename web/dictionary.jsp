<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ducp1605
  Date: 22/07/2019
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
   HashMap<String,String>  dictionary = new HashMap<String, String>();
%>

<%
    dictionary.put("scorpion","Bo cap");
    dictionary.put("smoke","Khoi");
    dictionary.put("rain","Mua");
    dictionary.put("reptile","than lan");

    String search = request.getParameter("search");


    String result = dictionary.get(search);
    if(result != null){
        out.println("Word: " + search + "</br>");
        out.println("Result: " + result);
    } else{
        out.print("Not found");
    }
%>
</body>
</html>

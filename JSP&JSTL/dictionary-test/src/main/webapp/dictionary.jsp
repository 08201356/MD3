<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/09/2023
  Time: 10:51 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("Stationary","Văn phòng phẩm");
    dic.put("Book","Sách");
    dic.put("Notebook", "Vở");
    dic.put("Pen", "Bút bi");
    dic.put("Pencil", "Bút chì");
    dic.put("Ruler", "Thước kẻ");
    dic.put("Eraser", "Tẩy");
    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>

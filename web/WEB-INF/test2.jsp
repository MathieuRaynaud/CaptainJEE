<%--
  Created by IntelliJ IDEA.
  User: Laurent
  Date: 06/01/2018
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>Yoyoyo ici la 2e servlet qui vous parle</h3>
    <p>

        <%
            String attribut = (String) request.getAttribute("test");
            out.println( attribut );
        %>
    <p>
        Récupération du bean :
        <%
            com.sdzee.beans.Coyote notreBean = (com.sdzee.beans.Coyote) request.getAttribute("coyote");
            out.println( notreBean.getPrenom() );
            out.println( notreBean.getNom() );
        %>
    </p>
    </p>
</body>
</html>

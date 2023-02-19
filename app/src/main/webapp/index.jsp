<%@ page
        language="java"
        contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<style>
h1 {text-align: center;}
p {text-align: center;}
div {text-align: center;}
</style>
</head>
<body>

<h1>Code to Cloud Lab</h1>
<p>This is Code to Cloud Lab Vulnerable Application.</p>
<div>Sample exploitable application.
<s:a id="%{id}">your input id: ${id}
</s:a>
</div>
</body>
</html>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Page</title>
<s:head/>
</head>
<body>

<s:form action="registerSave">
	<s:textfield name="username" label="Username" size="20" />
	<s:password name="password" label="Password" size="20" />
	<s:submit value="Register" />
</s:form>

</body>
</html>
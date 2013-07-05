<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="getText('global.register_page')"/></title>
<s:head/>
</head>
<body>

<s:form action="registerSave">
	<s:textfield name="username" key="global.username" size="20" />
	<s:password name="password" key="global.password" size="20" />
	<s:submit key="global.register" />
</s:form>

</body>
</html>
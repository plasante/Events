<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All people</title>
</head>
<body>

<s:iterator value="people">
	<form action="DeletePerson.action">
		<input type="hidden" name="id" value='<s:property value="id"/>' />
		<input type="submit" value="-" title="Delete" />
	</form>
	<s:property value="name" />
	<br>
</s:iterator>

</body>
</html>
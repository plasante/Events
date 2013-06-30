<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete a person</title>
</head>
<body>

<s:form>
	Are you sure you wish to delete this person?<br />
	<s:property value="name" />
	<s:hidden name="id" />
	<input type="hidden" value="true" name="isPostBack" />
	<s:submit value="Delete" />
</s:form>

<s:a action="Listing">Cancel</s:a>

</body>
</html>
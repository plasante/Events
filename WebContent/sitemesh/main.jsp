<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="requestURI" value="${pageContext.request.requestURI}" />
<c:set var="isAdmin"  value="${fn:contains(requestURI, '/admin/')}"  />
<c:set var="isEvents" value="${fn:contains(requestURI, '/events/')}" />
<c:set var="isPeople" value="${fn:contains(requestURI, '/people/')}" />
<c:set var="isCities" value="${fn:contains(requestURI, '/cities/')}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>My Events - <decorator:title /></title>
<link rel="stylesheet" type="text/css" href="${contextPath}/assets/styles.css" />
</head>
<body>

<div class="header">
  <h1>My Events</h1>
</div>

<div class="tabs">
  <a ${isAdmin  ? 'class="s"' : ''} href='${contextPath}/admin/admin.action'   ><s:text name="global.admin"/></a>
  <a ${isEvents ? 'class="s"' : ''} href='${contextPath}/events/Listing.action'>Events</a>
  <a ${isPeople ? 'class="s"' : ''} href='${contextPath}/people/Listing.action'>People</a>
  <a ${isCities ? 'class="s"' : ''} href='${contextPath}/cities/Listing.action'>Cities</a>
</div>
<div class="tabs-under-bg"></div>
<div class="tabs-under">
  <c:if test="${isAdmin}">
  	<a href="register.action">Register</a>
  	|<a href="login.action">Login</a>
  </c:if>
  <c:if test="${isEvents}">
    <a href="Listing.action">List of Events</a>
    |<a href="NewEvent.action">New Event</a>
    |<a href="register.action">Register</a>
  </c:if>
  <c:if test="${isPeople}">
    <a href="Listing.action">List of People</a>
    |<a href="NewPerson.action">New Person</a>
  </c:if>
  <c:if test="${isCities}">
    <a href="Listing.action">List of Cities</a>
    |<a href="New.action">New City</a>
    |<a href="New2.action">New City2</a>
  </c:if>
  &nbsp;
</div>

<div class="bodyhead">
  <h2><decorator:title /></h2>
</div>
<div class="body">
<decorator:body />
</div>

</body>
</html>
<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ui"%>

<html>
    <head>
        <c:url value="/fonts/font-awesome-4.3.0/css/font-awesome.min.css" var="href"/><link rel="stylesheet" href="${href}">
        <c:url value="/css/bootstrap.min.css" var="href"/><link rel="stylesheet" href="${href}">
        <c:url value="/css/bootstrap-theme.css" var="href"/><link rel="stylesheet" href="${href}">
        <c:url value="/css/bootstrap_state.css" var="href"/><link rel="stylesheet" href="${href}">
        <c:url value="/css/netradio1.css" var="href"/><link rel="stylesheet" href="${href}">
        <c:url value="/css/jquery-ui.css" var="href"/><link rel="stylesheet" href="${href}">
        <c:url value="/css/mystyle.css" var="href"/><link rel="stylesheet" href="${href}">
        <c:url value="/css/jquery.jqplot.min.css" var="href"/><link rel="stylesheet" href="${href}">

        <c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/bootstrap.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/jquery.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/jquery-ui.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/modals.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/flow.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/netradio.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/jquery.jqplot.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.json2.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.highlighter.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.dateAxisRenderer.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.logAxisRenderer.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.canvasTextRenderer.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.canvasAxisTickRenderer.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.canvasAxisLabelRenderer.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.pointLabels.min.js" var="href"/><script src="${href}"></script>
        <c:url value="/js/plugins/jqplot.cursor.min.js" var="href"/><script src="${href}"></script>

    </head>

    <body>
        <jsp:doBody />
    </body>
</html>
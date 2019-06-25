<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%--导入jstl标签--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>

<%-- 设置页面全局变量 --%>
<c:set var="_author" value="豐隆" />
<c:set var="_title" value="${_author}管理后台" />
<c:set var="_description" value="${_author}管理后台" />

<c:set var="domain" value="http://127.0.0.1:80" />
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="basePath" value="${domain}${ctx}" />

<c:set var="cdnDomain" value="${domain}" />
<c:set var="cdnPath" value="${domain}${ctx}/static" />

<c:set var="htmlPath" value="${cdnPath}/html" />
<c:set var="jsPath" value="${cdnPath}/js" />
<c:set var="cssPath" value="${cdnPath}/css" />
<c:set var="imgPath" value="${cdnPath}/images" />
<c:set var="cmmPath" value="${cdnPath}/common" />
<c:set var="fontPath" value="${cdnPath}/fonts" />

<c:set var="adminPath" value="${basePath}/admin" />

<c:set var="staticPath" value="${basePath}/index" />


<%--&lt;%&ndash; 设置JS全局变量&ndash;%&gt;--%>
<%--<script type="text/javascript">--%>
    <%--var Global = {};--%>
    <%--//   动态请求--%>
    <%--Global.domain = "${domain}";--%>
    <%--Global.ctx = "${pageContext.request.contextPath}";--%>
    <%--Global.basePath = "${basePath}";--%>
    <%--//静态请求--%>
    <%--Global.cdnDomain = "${cdnDomain}";--%>
    <%--Global.cdnPath = "${cdnPath}";--%>
    <%--Global.jsPath = "${jsPath}";--%>
    <%--Global.cssPath = "${cssPath}";--%>
    <%--Global.imgPath = "${imgPath}";--%>
<%--</script>--%>
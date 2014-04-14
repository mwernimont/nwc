<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="/WEB-INF/base.jsp"%>

<div id="main_page" class="page_body_content">
	<div id="full_dashboard" class="row dashboard navigation_toggle_a">
		<div id="dashboard_nav" class="dashboard_nav col-xs-12 col-md-3">
            <div class="panel panel-default navigation_panel">
                <div class="panel-heading navigation_panel_heading">
                    <ul class="nav nav-pills">
                        <li class="navigation_panel_item">
                            <a data-toggle="collapse" href="#menuCollapse"><i class="fa fa-bars fa-fw"></i> Menu</a>
                        </li>
                    </ul>
                </div>
                <div id="menuCollapse" class="panel-body navigation_panel_body" style="font-size: 12px;">
                    <ul class="nav nav-pills">
                        <c:forEach var="workflow" items="${workflows}" varStatus="status">
                            <li class="navigation_panel_item">
                                <a href="${context}${workflow.URI}" style="white-space: nowrap; padding: 10px;">${workflow.name}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
		</div>
		<div id="dashboard_container" class="nwc-container col-xs-12 col-md-9">
			<!-- Dynamically build the dashboard depending on the workflow list -->
            <div class="tile_container">
                <c:forEach var="workflow" items="${workflows}" varStatus="status">
                    <div class="col-xs-12 col-sm-6">
                        <div class="panel panel-default" style="margin: 10px;">
                            <div class="panel-heading" style="text-align: center;">
                                <a href="${context}${workflow.URI}">
                                    ${workflow.name}
                                </a>
                            </div>
                            <div class="panel-body">
                                <a href="${context}${workflow.URI}">
                                    <img src="${context}${workflow.image}" style="max-width: 60%; margin-left: auto; margin-right: auto;" class="img-responsive" />
                                </a>
                            </div>
                            <div class="panel-footer">
                                ${workflow.description}
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
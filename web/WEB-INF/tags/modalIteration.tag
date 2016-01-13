<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ui"%>

<%@ attribute name="id" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="title" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="action" required="true" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="product" required="false" rtexprvalue="true" type="com.scrumers.entity.Product" %>
<%@ attribute name="name_id" required="false" rtexprvalue="true" type="java.lang.String" %>
<%@ attribute name="descr_id" required="false" rtexprvalue="true" type="java.lang.String" %>


<div class="modal-window modal" id="${id}" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content" >

        <div class="modal-body size2">

            <div class="modal-title">
                ${title}
                <a data-dismiss="modal" class="float_r not" >
                    <i class="icon fa fa-times fa-fw pull-right"></i>
                </a>
            </div>
            

            <div class="modal-container size2">
                <c:url value="${action}" var="href" />
                <form:form  action="${href}" metod="POST" modelAttribute="iterationModel">

                    <form:hidden id="i_id" path="id"/>
                    <ui:input4 path="name" id="${name_id}" label="iteration.name" labeWidth="4"  place="iteration.name" title="iteration.name"/>
                    <ui:textarea2 path="descr" id="${descr_id}" label="description" labeWidth="4"  place="iteration.descr" title="iteration.descr"/>
                    <ui:date path1="dateStart" path2="dateEnd" sname="sdate" ename="edate" label="iteration.date" />

                    <div class="row">
                        <div class="modal_footer">
                            <input type="submit" class="but" value="<fmt:message key="save"/>" > 
                        </div>
                    </div>
                </form:form>
            </div>

        </div>
    </div>
</div>
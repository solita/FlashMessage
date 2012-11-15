<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:if test="${not empty sessionScope.infoMessage}">
  <div class="global-info">
    <fmt:message key="${sessionScope.infoMessage}" >
        <c:forEach items="${sessionScope.infoMessageArgs}" var="arg">
            <fmt:param value="${arg}" />
        </c:forEach>
    </fmt:message>
    </div>
  <c:set scope="session" var="infoMessage" />
  <c:set scope="session" var="infoMessageArgs" />
</c:if>
<c:if test="${not empty sessionScope.errorMessage}">
  <div class="global-error">
    <fmt:message key="${sessionScope.errorMessage}" >
        <c:forEach items="${sessionScope.errorMessageArgs}" var="arg">
            <fmt:param value="${arg}" />
        </c:forEach>
    </fmt:message>
  </div>
  <c:set scope="session" var="errorMessage" />
  <c:set scope="session" var="errorMessageArgs" />
</c:if>

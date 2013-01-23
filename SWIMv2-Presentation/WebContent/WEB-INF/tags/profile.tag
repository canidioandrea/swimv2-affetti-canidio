<%@ attribute name="user" required="true" type="it.polimi.swim.entities.Person"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty requestScope.log}">
	<h3>${requestScope.log}</h3>
</c:if>
<ul>
<li>${user.name}</li>
<li>${user.surname}</li>
<li>${user.email}</li>
<li>${user.phonenumber}</li>
<li>${user.city}</li>
<li>${user.birthday}</li>
</ul>

<c:set var="pending" value=""></c:set>
<ul>
	<c:forEach var="ability" items="${requestScope.userAbilities}">
	<c:if test="${ability.key.pending == true}">
		<c:set var="pending" value="(?)"></c:set>
	</c:if>
		<li>${ability.key.name} ${pending}: <span class="stars">${ability.value}</span></li>
	</c:forEach>
</ul>
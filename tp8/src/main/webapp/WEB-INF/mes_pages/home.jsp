<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
	<body>
		<h2>Page d'accueil Collaborateur</h2>
	
		Bienvenue <security:authentication property="principal.username"/> !
		<br/><br/>
		
		<a href="http://localhost:8080/ddc/listerDdc">Lister mes demandes de cong�s</a>
		<br/>
		<a href="http://localhost:8080/ddc/creerDdc">Cr�er une demande de cong�</a>
		<br/>
		<a href="http://localhost:8080/ddc/logout">Se d�connecter</a>
		
		<br/><br/>
		<security:authorize ifAnyGranted="ROLE_DIRECTION">
			Message pour Direction
		</security:authorize>
		
		<br/><br/>
		<a href="http://localhost:8080/ddc/direction">Reserve au role=Direction</a>
		
	</body>
</html>

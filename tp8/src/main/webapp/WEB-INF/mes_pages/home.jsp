<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
	<body>
		<h2>Page d'accueil Collaborateur</h2>
	
		Bienvenue <security:authentication property="principal.username"/> !
		<br/><br/>
		
		<a href="http://localhost:8080/ddc/listerDdc">Lister mes demandes de congés</a>
		<br/>
		<a href="http://localhost:8080/ddc/creerDdc">Créer une demande de congé</a>
		<br/>
		<a href="http://localhost:8080/ddc/logout">Se déconnecter</a>
		
		<br/><br/>
		<security:authorize ifAnyGranted="ROLE_DIRECTION">
			Message pour Direction
		</security:authorize>
		
		<br/><br/>
		<a href="http://localhost:8080/ddc/direction">Reserve au role=Direction</a>
		
	</body>
</html>

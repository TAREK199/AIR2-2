<%@page contentType="text/html"%>
<%@include file="/WEB-INF/mes_pages/include.jsp" %>

<html>
	<body>
		<h2>D�tail de la demande de cong�s num�ro ${demandeConge.numero}</h2>
		
		<a href="http://localhost:8080/ddc/listerDdc">Retour</a>

		<br/>
		<br/>
		<!-- acc�s au mod�le en JSTL -->
		Date de debut : <c:out value="${demandeConge.periode.dateDebut}"/>
		<br/>
		<!-- ou directement... -->
		Nombre de jours : ${demandeConge.periode.nbJours}
		<br/>
		Collaborateur : ${demandeConge.collaborateur.prenom} ${demandeConge.collaborateur.nom}
	</body>
</html>

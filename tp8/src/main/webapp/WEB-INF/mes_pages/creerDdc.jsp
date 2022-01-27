<%@page contentType="text/html"%>
<%@include file="/WEB-INF/mes_pages/include.jsp" %>

<html>
	<body>
		<h2>Créer une demande de congés</h2>
		
		<a href="http://localhost:8080/ddc/home">Retour</a>

		<br/><br/>
		Nous sommes le ${now}.
		<br/><br/>
		
		<form:errors path="demandeConge.*"/>
		<br/><br/>
		
		<form:form modelAttribute="demandeConge">
			Type de congé : <form:select path="type" items="${typeDdc}"/> <br/>
			
			<br/>
			
			<table>
				<tr>
					<td width="200">
						<b>Période :</b>
					</td>
					<td width="200">
						Date début : <form:input path="periode.dateDebut"/>
					</td>
					<td width="200">
						Nombre de jours : <form:input path="periode.nbJours"/>
					</td>
				</tr>
			</table>
			<br/> 
			<table>
				<tr>
					<td width="200">
						<b>Collaborateur :</b>
					</td>
					<td width="200">
						Prénom : <form:input path="collaborateur.prenom"/>
					</td>
					<td width="200">
						Nom : <form:input path="collaborateur.nom"/>
					</td>
				</tr>
			</table>
			
			<br/>
						
			<input type="submit" value="Valider" />
			
		</form:form>

	</body>
</html>

<%@page contentType="text/html"%>
<%@include file="/WEB-INF/mes_pages/include.jsp" %>

<html>
	<body>
		<h2>Creer une demande de cong�s</h2>
		
		<a href="http://localhost:8080/ddc/home">Retour</a>

		<br/><br/>
		Nous sommes le ${now}.
		<br/><br/>
		
		<form:errors path="demandeConge.*"/>
		<br/><br/>
		
		<form:form modelAttribute="demandeConge">
			Type de cong� : <form:select path="type" items="${typeDdc}"/> <br/>
			
			<br/>
			
			<table>
				<tr>
					<td width="200">
						<b>P�riode :</b>
					</td>
					<td width="200">
						Date d�but : <form:input path="periode.dateDebut"/>
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
						Pr�nom : <form:input path="collaborateur.prenom"/>
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

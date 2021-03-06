<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="dto.LigneCommandeManager" %> 


	<%@include file="/web/jsp/fragments/head.jspf" %>
	<body onload="">
		<header>
			<%@include file="/web/jsp/fragments/sideNav.jspf" %>
			<%@include file="/web/jsp/fragments/topMenuBar.jspf" %>			  
    	</header>
		<main class="side">
			<table class="striped table-commande table-full-screen">
		        <thead>
		          <tr>
		              <th data-field="commande">Commande</th>
		              <th data-field="etat">Etat</th>
		              <th data-field="employe">Employe</th>
		          </tr>
		        </thead>
		        <tbody>
					<%
		        	if(request.getAttribute("commandes") != null){

						List<LigneCommandeManager> commandes = (List<LigneCommandeManager>)request.getAttribute("commandes");
						for(LigneCommandeManager commande : commandes){
					%>
					<tr>
						<td><%=commande.getIdentifiant()%></td>
						<td><%=commande.getEtat()%></td>
						<td><%=commande.getNomEmploye()%></td>
					</tr>
					<%}
					}%>					
				</tbody>
		    </table>	
			
		</main>
		<footer class="side">
			<%@include file="/web/jsp/fragments/scripts.jspf" %>			
		</footer>
	</body>
</html>
<!doctype html>
<html>
    <head>
        <title>Creation d'un nouveau Role</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link href="style.css" rel="stylesheet" type="text/css" /> 

    </head>
	
	
   <body>
   <p><h1>Nouveau Role cree :</h1></p><BR/>
	<form action="index.php?uc=creerRole&action=confirmCreatRole" method="post">
	<?php 
			$lesRoles = $pdo->getLesRoles();
			?>
		<table>
		<tbody>
			<tr><td>Nom</td><td><input name="libele" size=20></td></tr>
			

				
		</tbody>
		</table>
		
                <br/>
		<input type="submit" value="Valider">
	</form>
 
	
	</body>
</html>
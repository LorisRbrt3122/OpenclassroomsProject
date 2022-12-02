<!doctype html>
<html>
    <head>
        <title>modif Role</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link href="style.css" rel="stylesheet" type="text/css" /> 

    </head>
	
	
   <body>
   <p><h1>modif Role:</h1></p><BR/>
	<form action="index.php?uc=modifRole&action=confirmModifRole" method="post">
	<?php
	?>
		<table>
		<tbody>
			<tr><td>Nom</td><td><input name="libele" value="<?php echo $role['libele']?>" size=20></td></tr>

			<input type=hidden name="numRole" value="<?php echo $role['numRole'] ?>" size=20>
		</tbody>
		</table>
		
                <br/>
		<input type="submit" value="Valider">
	</form>
 
	
	</body>
</html>
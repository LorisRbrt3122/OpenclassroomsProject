
<!doctype html>
<html>

<head>
	<title>Liste Roles</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="design.css" />
        
</head>
<body>
    <form action="index.php?uc=creerRole&action=creationRole" method="post">
        <p><H1>Liste des roles</H1><br>

        <table border=3 cellspacing=1 >
            <tr>
            <td>num :</td>
            <td>Role :</td>
            </tr> 
        <?php
		
        foreach( $lesRoles as $unRole)
        {
            $num = $unRole['numRole'];
            $nom = $unRole['libele'];
            ?>
            <tr>
                <td width=150><?php echo $num ?></a></td>
                <td width=150><?php echo $nom ?></a></td>
                <?php 

                ?>
				<td width=30><a href=index.php?uc=modifRole&action=modifRole&num=<?php echo $num ?>><img src="images/modifier.gif" title="Modif"></a></td>
                <td width=30><a href=index.php?uc=suppRole&action=suppRole&num=<?php echo $num ?>><img src="images/supp.png" title="Suppr"></a></td>
            </tr>
            <?php 
        }
        ?>
        </table>
        </br>

        <input type="submit" value="créer un nouveau Role">
    </form>
</body>
</html>

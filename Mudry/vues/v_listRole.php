
<!doctype html>
<html>

<head>
	<title>Liste ROLES</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="design.css" />
        
</head>
<body>

        <p><H1>Liste des Roles</H1><br>

        <table border=3 cellspacing=1 >
            <tr>
            <td>Nom :</td>
            </tr> 
        <?php
		
        foreach( $Role as $Rrole)
        {
            $libele = $Rrole['libele'];
            ?>
            <tr>
                <td width=150><?php echo $libele ?></a></td>
                <?php 

                ?>
            </tr>
            <?php 
        }
        ?>
        </table>
        </br>

   
</body>
</html>

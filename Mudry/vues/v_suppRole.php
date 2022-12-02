<!doctype html>
<html>

<head>
    <title>Supression d'un Role</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="style.css" rel="stylesheet" type="text/css" />

</head>


<body>
    <p>
    <h1>Rôle à supprimer :</h1>
    </p><BR />
    <form action="index.php?uc=suppRole&action=confirmSuppRole&num=<?php echo $numRole ?>" method="post">

        <table>
            <tbody>
                <tr>
                    <td>Nom</td>
                    <td><input name="libele" size=20 value="<?= $role['libele'] ?>"></td>
                    
                </tr>
            </tbody>
        </table>

        <br />
        <input type="submit" value="Valider">
    </form>


</body>

</html>
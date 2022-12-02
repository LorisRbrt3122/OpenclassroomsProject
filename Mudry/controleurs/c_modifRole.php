<?php
	$action=$_REQUEST['action'];
	switch($action)
	{
		case 'modifRole':
		{
			$num = $_REQUEST['num'];
			$role = $pdo->getRole($num);
			include("vues/v_modifRole.php");
			break;
		}
		case 'confirmModifRole':
		{
            $num=$_REQUEST['numRole'];
			$nom = $_REQUEST['libele'];
			$pdo->modifRole($num,$nom);
			
			//soit ce code :
            $lesRoles = $pdo->getLesRoles();
			include("vues/v_roles.php");	
			
			// ou ce code :
			//header('Location: index.php');	
			break;
		}
	}
?>
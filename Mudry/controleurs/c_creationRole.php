<?php
	$action=$_REQUEST['action'];
	switch($action)
	{
		case 'creationRole':
		{
			include("vues/v_creationRole.php");
			break;
		}
		case 'confirmCreatRole':
		{
			
			$libele = $_REQUEST['libele'];
			$pdo->creerRole($libele);
			
			//soit ce code :
			$lesRoles = $pdo->getLesRoles();
			include("vues/v_roles.php");	
			
			// ou ce code :
			//header('Location: index.php');	
			break;
		}
	}
?>
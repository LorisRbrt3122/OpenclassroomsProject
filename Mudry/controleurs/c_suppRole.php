<?php
	$action=$_REQUEST['action'];
	switch($action)
	{
		case 'suppRole':
		{
			$numRole = $_REQUEST['num'];
			$role = $pdo->getRole($numRole);
			include("vues/v_suppRole.php");
			break;
		}
		case 'confirmSuppRole':
		{
            $num=$_REQUEST['num'];
			$pdo->suppRole($num);
			
			//soit ce code :
            $lesRoles = $pdo->getLesRoles();
			include("vues/v_roles.php");	
			
			// ou ce code :
			//header('Location: index.php');	
			break;
		}
	}
?>
<?php
require_once("modele/class.pdoMudry.inc.php");

if(!isset($_REQUEST['uc']))
     $uc = 'accueil';
else
	$uc = $_REQUEST['uc'];

$pdo = PdoMudry::getPdoMudry();	 
var_dump($pdo);
switch($uc)
{
		case 'accueil': {
			include("controleurs/c_voirRoles.php");
			break;
	}
		case 'creerRole' :
			{include("controleurs/c_creationRole.php");break;}
		case 'modifRole' :
			{include("controleurs/c_modifRole.php");break;}
		case 'suppRole' :
			{include("controleurs/c_suppRole.php");break;}
	}

?>


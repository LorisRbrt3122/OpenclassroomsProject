<?php
/** 
 * Classe d'accès aux données. 
 
 * Utilise les services de la classe PDO
 * pour l'application Mudry
 * Les attributs sont tous statiques,
 * les 4 premiers pour la connexion
 * $monPdo de type PDO 
 * $monPdoMudry qui contiendra l'unique instance de la classe
 *
 */

class PdoMudry
{   		
      	private static $serveur='mysql:host=localhost';
      	private static $bdd='dbname=mudry';   		
      	private static $user='root' ;    		
      	private static $mdp='root-sio2' ;	
		private static $monPdo;
		private static $monPdoMudry = null;
/**
 * Constructeur privé, crée l'instance de PDO qui sera sollicitée
 * pour toutes les méthodes de la classe
 */				
	private function __construct()
	{
    		PdoMudry::$monPdo = new PDO(PdoMudry::$serveur.';'.PdoMudry::$bdd, PdoMudry::$user, PdoMudry::$mdp); 
			PdoMudry::$monPdo->query("SET CHARACTER SET utf8");
	}
	public function _destruct(){
		PdoMudry::$monPdo = null;
	}
/**
 * Fonction statique qui crée l'unique instance de la classe
 *
 
 * Appel : $instancePdoMudry = PdoMudry::getPdoMudry();
 * @return l'unique objet de la classe PdoMudry
 */
	public  static function getPdoMudry()
	{
		if(PdoMudry::$monPdoMudry == null)
		{
			PdoMudry::$monPdoMudry= new PdoMudry();
		}
		return PdoMudry::$monPdoMudry;  
	}
/**
 * Retourne tous les clients sous forme d'un tableau associatif
 *
 * @return le tableau associatif des clients
*/
	public function getLesRoles()
	{
		$req = "select * from role";
		$res = PdoMudry::$monPdo->query($req);
		$lesLignes = $res->fetchAll();
		return $lesLignes;
	}

	public function getRole($num)
	{
		$req = "select * from role WHERE numRole=$num";
		$res = PdoMudry::$monPdo->query($req);
		$lesLignes = $res->fetch();
		return $lesLignes;
	}

/**
 * Créer un client 
 *
 * Créer un client à partir des arguments validés passés en paramètre
*/
	public function creerRole($libele)
	{
		$res = PdoMudry::$monPdo->prepare('INSERT INTO role (
			libele) VALUES(  
			:libele)');
	
		$res->bindValue('libele', $libele, PDO::PARAM_STR);   
		$res->execute();
	}
	public function modifRole($numRole,$libele)
	{
		$res = PdoMudry::$monPdo->prepare('UPDATE role SET libele=:libele WHERE numRole= :numRole');
			
		$res->bindValue('libele', $libele, PDO::PARAM_STR);   	
		$res->bindValue('numRole', $numRole, PDO::PARAM_STR);

		$res->execute();
	}
	public function suppRole($numRole)
	{
		$res = PdoMudry::$monPdo->prepare('delete role WHERE numRole= :numRole');
		$res->bindValue('numRole',$numRole, PDO::PARAM_STR);
		$res->execute(); 
	}
}

<?php  
//************************************************ clase conexion 
class Conexion // definición de la clase padre
{
//************************************************ propiedades del objeto	
	
	protected $DB_SERVIDOR = 'localhost';
	protected $DB_USUARIO  = 'root';	
	protected $DB_PASSWORD = 'root';
	protected $DB_NOMBRE= 'publioficial';
	
//*************************metodo conectar******************************	
	public function conecta()
	{
		 $db = mysql_connect($this->DB_SERVIDOR, $this->DB_USUARIO, $this->DB_PASSWORD);
		  mysql_select_db($this->DB_NOMBRE, $db);
		 return $db;
	}	
}

?>

<?php 
    require_once('conexion.php');
	
	$conexion=new Conexion();
	
    header("Content-Type: text/html;charset=utf-8");   
	
	$db = $conexion->conecta(); 
    mysql_query("SET CHARACTER SET utf8 ");
    
    $etiqueta="{$_GET['etiqueta']}";	     	
	
	mysql_query("INSERT INTO etiquetas_temp(etiqueta) VALUE ('$etiqueta')",$db);
			
	$resultado = mysql_query("SELECT id_etiqueta, etiqueta FROM etiquetas_temp", $db); 
    echo '<table cellpadding="2" cellspacing="0" width="50%" 
	       style=" font-family:arial;	
	       font-size:11px;left:0px; top:20px; border:1px solid #c4c4c4; text-align:left; margin-buttom:20px;" >'; 
	echo '<tr><th width="50%" style="background:#6DA8C6; color:#fff; border:1px solid #fff;">Etiqueta</th>	          
		  </tr>'; 
	while ($fila = mysql_fetch_row($resultado)){ 
       echo '<tr><td>'.$fila[1].'</td>	             
	   <td><a class="eliminar" href="javascript:void(0);" data-id="'.$fila[0].'" onclick="javascript:eliminar_etiqueta('.$fila[0].')" >Borrar</a></td></tr>'; 
	}
	echo '</table>'			
?>

<?php 
    require_once('conexion.php');
	
	$conexion=new Conexion();
	
    header("Content-Type: text/html;charset=utf-8");   
	
	$db = $conexion->conecta(); 
    mysql_query("SET CHARACTER SET utf8 ");
    
    $concepto="{$_GET['concepto']}";
	$unidades="{$_GET['unidades']}";
	$monto="{$_GET['monto']}";
	$dependencia_s="{$_GET['dependencia_s']}";
	$campa="{$_GET['campa']}";     	
	
	mysql_query("INSERT INTO detalle_factura_temp(concepto,unidades,monto_concepto,dependencia_s, campa_factura) VALUE ('$concepto', '$unidades', '$monto',(select id_dependencia from dependencia where dependencia='".$dependencia_s."'),(select id_campa from campa where nombre='".$campa."') and  depen=(select id_dependencia from dependencia where dependencia='".$dependencia_s."'))",$db);
			
	$resultado = mysql_query("SELECT id_detalle, concepto, unidades, monto_concepto, dependencia, nombre FROM detalle_factura_temp, dependencia, campa where dependencia.id_dependencia=detalle_factura_temp.dependencia_s and campa.id_campa=detalle_factura_temp.campa_factura", $db); 
	
	echo '<table cellpadding="2" cellspacing="0" width="80%" 
	       style=" font-family:arial;	
	       font-size:11px;left:0px; top:20px; border:1px solid #c4c4c4; text-align:left; margin-buttom:20px;" >'; 
	echo '<tr><th width="30%" style="background:#6DA8C6; color:#fff; border:1px solid #fff;">Subconcepto de la factura</th>
	          <th width="10%" style="background:#6DA8C6; color:#fff; border:1px solid #fff;">Unidades del subconcepto</th>
			  <th width="10%" style="background:#6DA8C6; color:#fff; border:1px solid #fff;">Monto del subconcepto</th>
			  <th width="25%" style="background:#6DA8C6; color:#fff; border:1px solid #fff;">Dependencia solicitante</th>
			  <th width="25%" style="background:#6DA8C6; color:#fff; border:1px solid #fff;">Campaña</th>
		  </tr>'; 
		  
	while ($fila = mysql_fetch_row($resultado)){ 
       echo '<tr><td>'.$fila[1].'</td>
	   			 <td>'.$fila[2].'</td>
				 <td>$'.number_format($fila[3]).'</td>
				 <td>'.$fila[4].'</td>
				 <td>'.$fila[5].'</td>
	   <td><a class="eliminar_nuevo_detalle" href="javascript:void(0);" data-id="'.$fila[0].'" onclick="javascript:eliminar_nuevo_detalle_factura('.$fila[0].')" >Borrar</a></td></tr>'; 
	}
	 
	$resultado = mysql_query("SELECT SUM(unidades) as suma_unidades, sum(monto_concepto*unidades) as suma_montos FROM detalle_factura_temp", $db); 
		 
	while ($fila = mysql_fetch_row($resultado)){ 
       echo '<tr><td style="color:#000; border:1px solid #c4c4c4; background:#6DA8C6;">Totales</td>
	             <td style="color:#868686; border:1px solid #c4c4c4;">'.$fila[0].'</td>
				 <td style="color:#868686; border:1px solid #c4c4c4;">$'.number_format($fila[1]).'</td></tr>';
	}
	
	 
	echo '</table>';
?>

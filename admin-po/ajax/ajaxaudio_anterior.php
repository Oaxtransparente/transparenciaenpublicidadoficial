<!--<script type="text/javascript" src="scripts/jquery.min.js" ></script>
<script type="text/javascript" src="js/jquery.alerts.js"></script>
<link rel="stylesheet" href="js/jquery.alerts.css" type="text/css" />!-->
<?php
//echo "hola";
require_once('conexion.php');
$conexion=new Conexion();
$db = $conexion->conecta(); 
mysql_query("SET CHARACTER SET utf8 ");

//session_start();
//$usuario=$_SESSION['usuario'];

	//$valid_formats = array("jpg", "png", "gif", "bmp");
	if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST")
		{
			$audio = $_POST['audio'];
			$descripcion_audio= $_POST['descripcion_audio'];
			//$size = $_FILES['photoimg']['size'];	
								
			//$posicion = strpos('src', $video);
									
			//if ($posicion == true) {																		
					//preg_match_all('/(src)=("[^"]*")/i',$video, $resultado);																														
					//$video = $resultado[0][0]; //explode ("'",$resultado[0][0]);
					//$tam=strlen($video);
					//$video = substr($video, 5, $tam);	
														
					//$tam=strpos($video, '"');
					//$video = substr($video, 0, $tam);
					//$video=explode ('"',$video);																				
			//}								
						
			
			$audios="<table> <tr>";
			$audios_borrar="<table> <tr>";
						
			/*if(strlen($name))
				{
					//list($txt, $ext) = explode(".", $name);
					if(in_array($ext,$valid_formats))
					{
					if($size<(1024*1024))
						{
							$actual_image_name = time().substr(str_replace(" ", "_", $txt), 5).".".$ext;
							$tmp = $_FILES['photoimg']['tmp_name'];
							if(copy($tmp, $path.$actual_image_name))
								{	*/																
									
									mysql_query("insert into audios_campa_temp (campa,audio,descripcion_audio) values (0,'$audio','$descripcion_audio')", $db);
						
									$sql="select id_audio, audio from audios_campa_temp";									
									$Rec = mysql_query($sql, $db);
									$total = mysql_num_rows($Rec);					
									$Reg = mysql_fetch_assoc($Rec);	 
									$i=1;
									do{																												
																		
																		
/*$videos = $videos.'<object width="130" height="128">
<param name="movie" value="'.$video.'"></param>
<param name="wmode" value="transparent"></param>
<embed src="'.$video.'" type="application/x-shockwave-flash" wmode="transparent" width="130" height="128">
</embed>
</object>';*/

//$videos = $videos.$Reg['video'];

/*$videos = $videos.'<object width="130" height="128"><param name="movie" value="www.youtube.com/v/_ds4YTkRTYM&hl=es&fs=1&ap=%2526fmt%3D22"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="www.youtube.com/v/_ds4YTkRTYM&hl=es&fs=1&ap=%2526fmt%3D22" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="130" height="128"></embed></object';*/

//$videos = $videos.'<iframe width="420" height="315" src="'.$video.'" frameborder="0" allowfullscreen></iframe>';

//$audios=$audios.'<iframe width="120" height="120" src="'.$Reg['audio'].'" frameborder="0" allowfullscreen></iframe>';

$audios=$audios.'<td><iframe width="120" height="120" src="'.$Reg['audio'].'" frameborder="0" allowfullscreen></iframe> </td>';

$audios_borrar=$audios_borrar.'<td><a style="margin-right:95px;" class="eliminar_audio" href="javascript:void(0);" data-id="'.$Reg['id_audio'].'">Borrar</a></td>';	
                            
										
										if($i%9==0){
											$audios = $audios."<br>";
										}
										
										$i++;
									}while ($Reg = mysql_fetch_assoc($Rec) );
															
									$audios=$audios."</tr> </table>";	
									$audios_borrar=$audios_borrar."</td> </table>";
									$audios=$audios.$audios_borrar;
									
									echo $audios;													
								/*}
							else
								echo "Fallo proceso";
						}
						else
						echo "Tamaño de imagen max 1 MB";					
						}
						else
						echo "Formato de archivo invalido..";	
				}
				
			else
				echo "Por favor seleccione una imagen..!";*/
				
			exit;
									
		}
?>
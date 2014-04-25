<?php 
class Modelo_listado extends CI_Model{

	function __construct(){
		parent::__construct();
	}
	
// get person by id
function lista_campas(){	 						
		$query = $this->db->query("select id_campa, nombre, dependencia.dependencia as dependencia_solicitante, anio, descripcion_clasificacion, tipo_campa.tipo as tipo, 
SUM(detalle_factura.monto_concepto*unidades) as total_campa
 from campa, clasificacion_campa, tipo_campa, dependencia, detalle_factura, factura where clasificacion_campa=id_clasificacion_campa and  
campa.tipo=tipo_campa.id_tipo and
depen=id_dependencia and id_campa=campa_factura and factura.id_factura=detalle_factura.factura GROUP BY id_campa");      			
		return $query;							
}

function clasificaciones_campas(){	 						
		$query = $this->db->query("select campa_factura, medios.clasificacion from detalle_factura, factura, medios where id_factura=factura and medio_id=id_medio");      			
		return $query;							
}

function dependencias_contratantes_campas(){	 						
		$query = $this->db->query("select DISTINCT dependencia, campa_factura from dependencia, factura, detalle_factura where 
id_dependencia=dependencia_contratante and id_factura=factura");      			
		return $query;							
}

function lista_campas_depen_contratante($id_dependencia,$anio){	 						
		$query = $this->db->query("select id_campa, nombre, anio, tipo_campa.tipo, sum(monto_concepto*unidades) as monto_campa 
from campa, tipo_campa, dependencia, factura, detalle_factura where campa.tipo=tipo_campa.id_tipo 
and dependencia_contratante=id_dependencia and factura=id_factura 
and campa_factura=id_campa and dependencia_contratante=".$id_dependencia." and fecha>='".$anio."-01-01' and fecha<='".$anio."-12-31' GROUP BY id_campa");      			
		return $query;							
}

function lista_campas_depen_solicitante($id_dependencia,$anio){	 						
		$query = $this->db->query("select id_campa, nombre, anio, tipo_campa.tipo, sum(monto_concepto*unidades) as monto_campa 
from campa, tipo_campa, dependencia, factura, detalle_factura where campa.tipo=tipo_campa.id_tipo 
and factura=id_factura and dependencia_s=id_dependencia
and campa_factura=id_campa and dependencia_s=".$id_dependencia." 
and fecha>='".$anio."-01-01' and fecha<='".$anio."-12-31' GROUP BY id_campa");      			
		return $query;							
}

function lista_campas_depen_busqueda($id_dependencia){	 						
		$query = $this->db->query("select id_campa, nombre, anio, tipo_campa.tipo, sum(monto_concepto*unidades) as monto_campa 
from campa, tipo_campa, dependencia, factura, detalle_factura where campa.tipo=tipo_campa.id_tipo 
and factura=id_factura and dependencia_s=id_dependencia
and campa_factura=id_campa and dependencia_s=".$id_dependencia." 
GROUP BY id_campa");      			
		return $query;							
}

function lista_contratos($id_medio){	 						
		$query = $this->db->query("select num_contrato,objeto_contrato, fecha_celebracion,monto_contrato,sum(monto_total) as monto_gastado  from contratos, factura where contrato=id_contrato and medio=".$id_medio." group by id_contrato");      			
		return $query;							
}

function lista_dependencias_contratantes(){	 						
		$query = $this->db->query("select id_dependencia,dependencia,sum(monto_total) as monto, fecha, EXTRACT(YEAR FROM fecha) as anio from dependencia, factura 
where id_dependencia=dependencia_contratante GROUP BY id_dependencia, anio");      			
		return $query;							
}

function lista_dependencias_solicitantes(){	 						
		$query = $this->db->query("select id_dependencia, dependencia,sum(monto_concepto*unidades) as monto, fecha, EXTRACT(YEAR FROM fecha) as anio from dependencia, factura, detalle_factura where id_factura=factura and dependencia_s=id_dependencia GROUP BY id_dependencia, anio");      			
		return $query;							
}

function lista_medios(){	 						
		$query = $this->db->query("select id_medio, nombre_comercial, descripcion_clasificacion, EXTRACT(YEAR FROM fecha_celebracion) as anio, cobertura.cobertura, SUM(monto_contrato) as contratado from contratos, medios, clasificacion, cobertura where medio=id_medio and clasificacion=id_clasificacion and medios.cobertura=id_cobertura GROUP BY medio;");      			
		return $query;							
}


}
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/* Heredamos de la clase CI_Controller */
class Videos extends CI_Controller {

  function __construct()
  {	
	parent::__construct();
	$this->load->helper('url');
	$this->load->model('modelo');
	$this->load->library('grocery_crud');
	$this->load->library(array('session'));
	
	if($this->session->userdata('perfil') == FALSE || $this->session->userdata('perfil') != 'administrador')
    {
       redirect(base_url().'index.php/login');
    }	    
	
    /*$this->load->database();
    $this->load->library('grocery_crud');
    $this->load->helper('url');	
	$this->load->model('modeloejemplo');	
	$this->load->library('pagination'); //Cargamos la librería de paginación	
    $this->load->library('table');//-->haremos uso de tablas*/
		
  }

  	function index()
  	{    
    //redirect('/principal');			
  	}   
  
    function principal($id){
	  try{	
		$crud = new grocery_CRUD();
		$crud->set_theme('flexigrid');
		$crud->set_table('videos_campa');
		$crud->set_subject('videos_campa');		
		$crud->set_language('spanish');
		$crud->fields(
		'campa',			
		   'video'
		);
		
		$crud->required_fields(
		'campa',			
		   'video');
		
		$crud->set_subject('video');
		
		$crud->display_as('campa','Campaña');
		
		$crud->unset_add();
		$crud->unset_export();
		$crud->unset_print();
		//$crud->unset_back_to_list();
		
		$crud->where('campa',$id);
			 
		//$crud->set_field_upload('archivo','../photos');		
		//$crud->callback_column('archivo',array($this,'obtener_imagen'));			
		 //$crud->callback_after_upload(array($this,'obtener_imagen_upload'));
			
		//$crud->set_relation('id_campa', 'campa', 'nombre');
		
		$crud->set_relation('campa', 'campa', 'nombre');
		
		$crud->callback_column('video',array($this,'obtener_video'));
		
		//$crud->set_field_upload('banner','archivos/banners');
		
		//$crud->callback_column('banner',array($this,'obtener_imagen'));
		
		//$crud->callback_after_upload(array($this,'obtener_imagen_upload'));									
		
		$output = $crud->render();
				
		$data['opcion'] = 'campa';
		$data['nombre_usuario'] = $this->modelo->nombre_usuario($this->session->userdata('id_usuario'));
		$data['logo'] = $this->modelo->logo();
		$data['url_logo'] = $this->modelo->url_logo();
		$data['logo_opcional'] = $this->modelo->logo_opcional();
		$data['url_logo_opcional'] = $this->modelo->url_logo_opcional();  
	  	$this->load->view('cabecera', $data);
		$data['opcion_campa'] = 'videos_campa';
		
		$nombre_campa="";
		$campas=	$this->modelo->obtener_nombre_campa($id);		
		foreach($campas->result() as $fila) { $nombre_campa=$fila->nombre; }
		$data['nombre_campa'] = $nombre_campa;
		
	    $this->load->view('opciones_campa', $data);				
		$data['nuevo_video'] = '';
		$data['id'] = $id;
		$this->load->view('opciones_banner_imagen_otros', $data);
		$this->load->view('campa', $output);
		
		$this->load->view('regresar');
		
		$this->load->view('pie');						
		
		}catch(Exception $e){
		  show_error($e->getMessage().' --- '.$e->getTraceAsString());
    	}
	
  }
  
  function obtener_video($primary_key , $row)
  {
    return '<iframe width="200" height="120" src="'.$row->video.'" frameborder="0" allowfullscreen></iframe>';
  }          
  
  function agregar($id){
	  /*try{	
		$crud = new grocery_CRUD();
		$crud->set_theme('flexigrid');
		$crud->set_table('videos_campa');
		$crud->set_subject('videos_campa');		
		$crud->set_language('spanish');
		$crud->fields(
		'campa',			
		   'video'
		);*/
		
		//$crud->unset_add();
		//$crud->unset_export();
		//$crud->unset_print();
		//$crud->unset_back_to_list();			 						
		
		//$crud->set_relation('campa', 'campa', 'nombre');				
		
		//$output = $crud->render();
		
		$this->modelo->borrar_videos_temp();
		
		$data['opcion'] = 'campa';
		$data['nombre_usuario'] = $this->modelo->nombre_usuario($this->session->userdata('id_usuario'));
		$data['logo'] = $this->modelo->logo();
		$data['url_logo'] = $this->modelo->url_logo();
		$data['logo_opcional'] = $this->modelo->logo_opcional();
		$data['url_logo_opcional'] = $this->modelo->url_logo_opcional();			  
	  	$this->load->view('cabecera', $data);
		
		//$data['opcion_campa'] = 'nuevo_video';
	    //$this->load->view('opciones_campa', $data);
			
		$campas = $this->modelo->obtener_nombre_campa($id);	
	    $data['campas'] = $campas;
		$data['id'] = $id;
		$this->load->view('nuevovideo', $data);
		
		$this->load->view('pie');	
		//$data['nuevo_video'] = '';
		//$this->load->view('opciones_banner_imagen_otros', $data);		
		
		/*}catch(Exception $e){
		  show_error($e->getMessage().' --- '.$e->getTraceAsString());
    	}*/	
  }  
  
  function guardar(){
	  $campa = $this->input->post('campas');
	  $campa = $this->modelo->obtener_id_campa($campa);
	  
	  $this->modelo->guardar_nuevos_videos($campa);
	  
	  $this->modelo->borrar_videos_temp();
	  
	  redirect('videos/principal/'.$campa); 
	  	  
  } 
  
}
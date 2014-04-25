<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/* Heredamos de la clase CI_Controller */
class Reportes extends CI_Controller {

  function __construct()
  {
	
    parent::__construct();
	$this->load->helper('url');
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
    redirect('reportes/imprimir');			
  }
  
  function imprimir(){
	  $data['opcion'] = 'reportes';	  
	  $this->load->view('cabecera', $data);	 
	  $this->load->view('pie');	 
  }
  
}
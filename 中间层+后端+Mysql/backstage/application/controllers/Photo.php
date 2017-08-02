<?php defined('BASEPATH') OR exit('No direct script access allowed');  
	class Photo extends CI_Controller {
		public function __construct(){
			parent::__construct();
			$this->load->model('photo_model');
		}
		// public function add(){
		// 	header('Access-Control-Allow-Origin:*');
		// 	for ($i=1; $i <59 ; $i++) { 
		// 		$name="图".$i;
		// 		$src="../../static/img/img".$i.".jpg";
		// 		$srcc="../../static/imgs/img".$i.".jpg";
		// 		$result=$this->photo_model->add_a($i,$name,$src,$srcc);
		// 	}
		// 	echo "true"; 
		// }
		public function photo_all(){
			header('Access-Control-Allow-Origin:*');
		    $result=$this->photo_model->photo_all();
		    if($result){
		    	echo json_encode($result);
		    }else{
		    	echo 0;
		    } 
		}

		public function find_photo(){
			header('Access-Control-Allow-Origin:*');
			$p_id=$this->input->get('p_id');
		    $result=$this->photo_model->find_photo($p_id);
		    if($result){
		    	// var_dump($result);
		    	echo $result->p_src;
		    }else{
		    	echo 0;
		    } 
		}
		

	}
?>
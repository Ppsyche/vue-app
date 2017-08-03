<?php defined('BASEPATH') OR exit('No direct script access allowed');  
	class Movie extends CI_Controller {
		public function __construct(){
			parent::__construct();
			$this->load->model('movie_model');
		}
		public function find_movie(){
			header('Access-Control-Allow-Origin:*');
		    $m_id=$this->input->post('m_id');
		    $m_name=$this->input->post('m_name');
		    $m_summary=$this->input->post('m_summary');
		    $m_rating=$this->input->post('m_rating');
		    $result=$this->movie_model->find_movie($m_id);
		    if($result){
		    	echo 1;
		    }else{
		    	$result=$this->movie_model->add_movie($m_id,$m_name,$m_summary,$m_rating);
		    	if($result){
		    		echo 2;
		    	}else{
		    		echo 3;
		    	}
		    } 
		}
		public function collect_movie(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $m_id=$this->input->get('m_id');
		    $result=$this->movie_model->collect_movie($u_id,$m_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}
		public function nocollect_movie(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $m_id=$this->input->get('m_id');
		    $result=$this->movie_model->nocollect_movie($u_id,$m_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}

		public function is_collect_movie(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $m_id=$this->input->get('m_id');
		    $result=$this->movie_model->is_collect_movie($u_id,$m_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}

		public function collect_movie_all(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $result=$this->movie_model->collect_movie_all($u_id);
		    if($result){
		    	echo json_encode($result);
		    }else{
		    	echo -1;
		    } 
		}

	}
?>
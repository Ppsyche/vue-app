<?php defined('BASEPATH') OR exit('No direct script access allowed');  
	class Book extends CI_Controller {
		public function __construct(){
			parent::__construct();
			$this->load->model('book_model');
		}
		public function find_book(){
			header('Access-Control-Allow-Origin:*');
		    $b_id=$this->input->post('b_id');
		    $b_name=$this->input->post('b_name');
		    $b_summary=$this->input->post('b_summary');
		    $result=$this->book_model->find_book($b_id);
		    if($result){
		    	echo 1;
		    }else{
		    	$result=$this->book_model->add_book($b_id,$b_name,$b_summary);
		    	if($result){
		    		echo 2;
		    	}else{
		    		echo 3;
		    	}
		    } 
		}
		public function collect_book(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $b_id=$this->input->get('b_id');
		    $result=$this->book_model->collect_book($u_id,$b_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}
		public function nocollect_book(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $b_id=$this->input->get('b_id');
		    $result=$this->book_model->nocollect_book($u_id,$b_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}

		public function is_collect_book(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $b_id=$this->input->get('b_id');
		    $result=$this->book_model->is_collect_book($u_id,$b_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}

	}
?>
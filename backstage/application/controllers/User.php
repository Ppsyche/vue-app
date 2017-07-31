<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class User extends CI_Controller {
		public function __construct(){
			parent::__construct();
			$this->load->model('user_model');
		}
		public function insert_user(){
			header('Access-Control-Allow-Origin:*');
			$name=$this->input->get('name');
		    $tel=$this->input->get('tel');
		    $psd=$this->input->get('psd');
		    $result=$this->user_model->repetition_user($tel);
		    if($result){
		    	echo 6;//电话号码重复
		    }else{
		    	$result=$this->user_model->insert_user($name,$tel,$psd);
		    	if($result){
		    	    echo 7;//成功
		    	}
		    	else{
		    	    echo 8;//失败
		    	}
		    } 
		}
		public function login_user(){
			header('Access-Control-Allow-Origin:*');
		    $tel=$this->input->get('tel');
		    $psd=$this->input->get('psd');
		    $result=$this->user_model->login_userr($tel,$psd);
		    if($result){
		    	// var_dump($result);
		    	$id=$result->user_id;
		    	echo $id;
		    }else{
		    	echo 3;
		    } 
		}
	}
?>
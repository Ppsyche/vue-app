<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class User extends CI_Controller {
		public function __construct(){
			parent::__construct();
			$this->load->model('user_model');
		}
		public function insert_user(){
			header('Access-Control-Allow-Origin:*');
			$name=$this->input->post('name');
		    $tel=$this->input->post('tel');
		    $psd=$this->input->post('psd');
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
		    $result=$this->user_model->login_user($tel,$psd);
		    if($result){
		    	// var_dump($result);
		    	$id=$result->user_id;
		    	echo $id;
		    }else{
		    	echo -1;
		    } 
		}
		public function user_by_id(){
			header('Access-Control-Allow-Origin:*');
		    $id=$this->input->get('id');
		    $result=$this->user_model->user_by_id($id);
		    if($result){
		    	// var_dump($result);//vat_dump对JSON.parse产生影响(╥╯^╰╥)
		    	echo json_encode($result);
		    }else{
		    	echo -1;
		    } 
		}
		public function change_name(){
			header('Access-Control-Allow-Origin:*');
		    $id=$this->input->post('id');
		    $name=$this->input->post('name');
		    $result=$this->user_model->change_name($id,$name);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 2;
		    } 
		}
		public function change_sex(){
			header('Access-Control-Allow-Origin:*');
		    $id=$this->input->get('id');
		    $sex=$this->input->get('sex');
		    $result=$this->user_model->change_sex($id,$sex);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 2;
		    } 
		}
		public function change_email(){
			header('Access-Control-Allow-Origin:*');
		    $id=$this->input->get('id');
		    $email=$this->input->get('email');
		    $result=$this->user_model->change_email($id,$email);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 2;
		    } 
		}
	}
?>
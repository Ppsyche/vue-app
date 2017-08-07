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
		
		public function collect_photo(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $p_id=$this->input->get('p_id');
		    $result=$this->photo_model->collect_photo($u_id,$p_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}

		public function nocollect_photo(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $p_id=$this->input->get('p_id');
		    $result=$this->photo_model->nocollect_photo($u_id,$p_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}

		public function is_collect_photo(){
			header('Access-Control-Allow-Origin:*');
		    $u_id=$this->input->get('u_id');
		    $p_id=$this->input->get('p_id');
		    $result=$this->photo_model->is_collect_photo($u_id,$p_id);
		    if($result){
		    	echo 1;
		    }else{
		    	echo 0;
		    } 
		}

		public function next_photo(){
			header('Access-Control-Allow-Origin:*');
			$p_id=$this->input->get('p_id');
		    $result=$this->photo_model->next_photo($p_id);
		    if($result){
		    	// var_dump($result);
		    	echo $result->p_id;
		    }else{
		    	echo 0;
		    } 
		}

		// public function next_collect_photo(){
		// 	header('Access-Control-Allow-Origin:*');
		// 	$p_id=$this->input->get('p_id');
		//     $result=$this->photo_model->next_collect_photo($p_id);
		//     if($result){
		//     	// var_dump($result);
		//     	echo $result->p_id;
		//     }else{
		//     	echo 0;
		//     } 
		// }

		public function prev_photo(){
			header('Access-Control-Allow-Origin:*');
			$p_id=$this->input->get('p_id');
		    $result=$this->photo_model->prev_photo($p_id);
		    if($result){
		    	// var_dump($result);
		    	echo $result->p_id;
		    }else{
		    	echo 0;
		    } 
		}
		
		// public function prev_collect_photo(){
		// 	header('Access-Control-Allow-Origin:*');
		// 	$p_id=$this->input->get('p_id');
		//     $result=$this->photo_model->prev_collect_photo($p_id);
		//     if($result){
		//     	// var_dump($result);
		//     	echo $result->p_id;
		//     }else{
		//     	echo 0;
		//     } 
		// }

		public function collect_photo_all(){
			header('Access-Control-Allow-Origin:*');
			$u_id=$this->input->get('u_id');
		    $result=$this->photo_model->collect_photo_group($u_id);
		    if($result){
		    	$aresult=$result;
		    	for ($i=0; $i<count($aresult); $i++) { 
		    		$result=$this->photo_model->collect_photo_time($aresult[$i]->time,$u_id);
		    		// var_dump($result);
		    		$arr[$i]["time"]=$aresult[$i]->time;
		    		$arr[$i]["photo"]=$result;
		    		// $arr[$i]={"time":$aresult[0]->time,"photo":$result}
		    	}
		    	echo json_encode($arr);
		    }else{
		    	echo 0;
		    } 
		}

	}
?>
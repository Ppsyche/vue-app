<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Photo_model extends CI_Model{
		// public function add($id,$name,$src,$srcc){
		// 	$sql="insert into t_photo(p_id,p_name,p_src,p_srcc) values($id,'$name','$src','$srcc')";
		// 	$query=$this->db->query($sql);
		// 	return $query;
		// }
		public function photo_all(){
		    $sql="select * from t_photo";
		    $query=$this->db->query($sql);
		    $result=$query->result();
		    return $result;
		}

		public function find_photo($p_id){
		    $sql="select p_src from t_photo where p_id=$p_id";
		    $query=$this->db->query($sql);
		    $result=$query->row();
		    return $result;
		}
	}
?>
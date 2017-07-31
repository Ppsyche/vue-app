<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class User_model extends CI_Model{
		public function repetition_user($tel){
		    $sql="select * from t_user where tel=$tel";
		    $query=$this->db->query($sql);
		    $result=$query->result();
		    return $result;
		}
		public function insert_user($name,$tel,$psd){
		    $sql="insert into t_user(name,tel,password) values('$name','$tel','$psd')";
		    $query=$this->db->query($sql);
		    return $query;
		}
		public function login_user($tel,$psd){
			$sql="select * from t_user where tel=$tel and password=$psd";
		    $query=$this->db->query($sql);
		    $result=$query->row();
		    return $result;
		}
	}
?>
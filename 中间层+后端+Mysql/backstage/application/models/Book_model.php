<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Book_model extends CI_Model{
		public function find_book($b_id){
			$sql="select * from t_book where b_id=$b_id";
		    $query=$this->db->query($sql);
		    $result=$query->result();
		    return $result;
		}
		public function add_book($b_id,$b_name,$b_summary){
			$sql="insert into t_book(b_id,b_name,b_summary) values('$b_id','$b_name','$b_summary')";
			$query=$this->db->query($sql);
			return $query;
		}
		public function collect_book($u_id,$b_id){
			$sql="insert into t_collect_book(u_id,b_id,cm_time) values('$u_id','$b_id',now())";
			$query=$this->db->query($sql);
			return $query;
		}
		public function nocollect_book($u_id,$b_id){
			$sql="delete from t_collect_book where u_id=$u_id and b_id=$b_id";
			$query=$this->db->query($sql);
			return $query;
		}
		public function is_collect_book($u_id,$b_id){
			$sql="select * from t_collect_book where u_id=$u_id and b_id=$b_id";
			$query=$this->db->query($sql);
			$result=$query->result();
			return $result;
		}
		public function book_num_by_id($id){
			$sql="select count(*) as num from t_collect_book where u_id=$id";
			$query=$this->db->query($sql);
			$result=$query->row();
			return $result;
		}
	}
?>
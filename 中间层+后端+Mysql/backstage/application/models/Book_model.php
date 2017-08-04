<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Book_model extends CI_Model{
		public function find_book($b_id){
			$sql="select * from t_book where b_id=$b_id";
		    $query=$this->db->query($sql);
		    $result=$query->result();
		    return $result;
		}
		public function add_book($b_id,$b_name,$b_summary,$b_average,$b_img){
			$sql="insert into t_book(b_id,b_name,b_summary,b_average,b_img) values('$b_id','$b_name','$b_summary','$b_average','$b_img')";
			$query=$this->db->query($sql);
			return $query;
		}
		public function collect_book($u_id,$b_id){
			$sql="insert into t_collect_book(u_id,b_id,cb_time) values('$u_id','$b_id',now())";
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
		public function collect_book_all($u_id){
			$sql="select t_book.b_id,t_book.b_name,t_book.b_summary,t_book.b_average,t_book.b_img,t_collect_book.cb_time from t_collect_book,t_book where t_collect_book.u_id=$u_id and t_collect_book.b_id=t_book.b_id";
			$query=$this->db->query($sql);
			$result=$query->result();
			return $result;
		}
	}
?>
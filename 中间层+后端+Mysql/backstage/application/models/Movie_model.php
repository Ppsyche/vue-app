<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Movie_model extends CI_Model{
		public function find_movie($m_id){
			$sql="select * from t_movie where m_id=$m_id";
		    $query=$this->db->query($sql);
		    $result=$query->result();
		    return $result;
		}
		public function add_movie($m_id,$m_name,$m_summary){
			$sql="insert into t_movie(m_id,m_name,m_summary) values('$m_id','$m_name','$m_summary')";
			$query=$this->db->query($sql);
			return $query;
		}
		public function collect_movie($u_id,$m_id){
			$sql="insert into t_collect_movie(u_id,m_id) values('$u_id','$m_id')";
			$query=$this->db->query($sql);
			return $query;
		}
		public function nocollect_movie($u_id,$m_id){
			$sql="delete from t_collect_movie where u_id=$u_id and m_id=$m_id";
			$query=$this->db->query($sql);
			return $query;
		}
		public function is_collect_movie($u_id,$m_id){
			$sql="select * from t_collect_movie where u_id=$u_id and m_id=$m_id";
			$query=$this->db->query($sql);
			$result=$query->result();
			return $result;
		}
	}
?>
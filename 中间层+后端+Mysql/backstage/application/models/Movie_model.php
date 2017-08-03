<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Movie_model extends CI_Model{
		public function find_movie($m_id){
			$sql="select * from t_movie where m_id=$m_id";
		    $query=$this->db->query($sql);
		    $result=$query->result();
		    return $result;
		}
		public function add_movie($m_id,$m_name,$m_summary,$m_rating){
			$sql="insert into t_movie(m_id,m_name,m_summary,m_rating) values('$m_id','$m_name','$m_summary','$m_rating')";
			$query=$this->db->query($sql);
			return $query;
		}
		public function collect_movie($u_id,$m_id){
			$sql="insert into t_collect_movie(u_id,m_id,cm_time) values('$u_id','$m_id',now())";
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
		public function movie_num_by_id($id){
			$sql="select count(*) as num from t_collect_movie where u_id=$id";
			$query=$this->db->query($sql);
			$result=$query->row();
			return $result;
		}
		public function collect_movie_all($u_id){
			$sql="select t_movie.m_id,t_movie.m_name,t_movie.m_summary,t_movie.m_rating,t_collect_movie.cm_time from t_collect_movie,t_movie where t_collect_movie.u_id=$u_id and t_collect_movie.m_id=t_movie.m_id";
			$query=$this->db->query($sql);
			$result=$query->result();
			return $result;
		}


	}
?>
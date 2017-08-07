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
		public function collect_photo($u_id,$p_id){
			$sql="insert into t_collect_photo(u_id,p_id,cp_time) values('$u_id','$p_id',now())";
			$query=$this->db->query($sql);
			return $query;
		}
		public function nocollect_photo($u_id,$p_id){
			$sql="delete from t_collect_photo where u_id=$u_id and p_id=$p_id";
			$query=$this->db->query($sql);
			return $query;
		}
		public function is_collect_photo($u_id,$p_id){
			$sql="select * from t_collect_photo where u_id=$u_id and p_id=$p_id";
			$query=$this->db->query($sql);
			$result=$query->result();
			return $result;
		}
		public function next_photo($p_id){
		    $sql="select p_id from t_photo where p_id>$p_id order by p_id ASC";
		    $query=$this->db->query($sql);
		    $result=$query->row();
		    return $result;
		}
		public function prev_photo($p_id){
		    $sql="select p_id from t_photo where p_id<$p_id order by p_id DESC";
		    $query=$this->db->query($sql);
		    $result=$query->row();
		    return $result;
		}
		public function photo_num_by_id($id){
			$sql="select count(*) as num from t_collect_photo where u_id=$id";
			$query=$this->db->query($sql);
			$result=$query->row();
			return $result;
		}

		public function collect_photo_group($u_id){
			$sql="select date(cp_time) as time from t_collect_photo where u_id=$u_id group by date(cp_time)";
			$query=$this->db->query($sql);
			$result=$query->result();
			return $result;
		}

		public function collect_photo_time($time,$u_id){
			$sql="select t_photo.p_id,t_photo.p_src from t_collect_photo,t_photo where t_collect_photo.p_id=t_photo.p_id and date(t_collect_photo.cp_time)='$time' and t_collect_photo.u_id=$u_id";
			$query=$this->db->query($sql);
			$result=$query->result();
			return $result;
		}

	}
?>
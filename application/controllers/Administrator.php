<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Administrator extends CI_Controller {
	function index(){
		if (isset($_POST['submit'])){
			$username = $this->input->post('a');
			$password = hash("sha512", md5($this->input->post('b')));
			$cek = $this->db->query("SELECT * FROM users where username='".$this->db->escape_str($username)."' AND password='".$this->db->escape_str($password)."'");
		    $row = $cek->row_array();
		    $total = $cek->num_rows();
			if ($total > 0){
				$this->session->set_userdata('upload_image_file_manager',true);
				$this->session->set_userdata(array('id_users'=>$row['id_users'],
								   'username'=>$row['username'],
								   'level'=>$row['level'],
                                   'id_session'=>$row['id_session']));
				redirect('administrator/home');
			}else{
				$data['title'] = 'Administrator &rsaquo; Log In';
				$this->load->view('administrator/view_login',$data);
			}
		}else{
			$data['title'] = 'Administrator &rsaquo; Log In';
			$this->load->view('administrator/view_login',$data);
		}
	}

	function home(){
		if ($this->session->id_session){
			$this->template->load('administrator/template','administrator/view_home');
		}else{
			redirect('administrator');
		}
	}

	function identitaswebsite(){
		cek_session_akses('identitaswebsite',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_main->identitas_update();
			redirect('administrator/identitaswebsite');
		}else{
			$data['record'] = $this->model_main->identitas()->row_array();
			$this->template->load('administrator/template','administrator/mod_identitas/view_identitas',$data);
		}
	}

	function keterangan(){
		cek_session_akses('keterangan',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_main->keterangan_update();
			redirect('administrator/keterangan');
		}else{
			$data['record'] = $this->model_main->keterangan()->row_array();
			$this->template->load('administrator/template','administrator/mod_keterangan/view_keterangan',$data);
		}
	}

	// Controller Modul Menu Website

	function menuwebsite(){
		cek_session_akses('menuwebsite',$this->session->id_session);
		$data['record'] = $this->model_menu->menu_website();
		$this->template->load('administrator/template','administrator/mod_menu/view_menu',$data);
	}

	function tambah_menuwebsite(){
		cek_session_akses('menuwebsite',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_menu->menu_website_tambah();
			redirect('administrator/menuwebsite');
		}else{
			$data['record'] = $this->model_menu->menu_utama();
			$this->template->load('administrator/template','administrator/mod_menu/view_menu_tambah',$data);
		}
	}

	function edit_menuwebsite(){
		cek_session_akses('menuwebsite',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_menu->menu_website_update();
			redirect('administrator/menuwebsite');
		}else{
			$data['record'] = $this->model_menu->menu_utama();
			$data['rows'] = $this->model_menu->menu_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_menu/view_menu_edit',$data);
		}
	}

	function delete_menuwebsite(){
		cek_session_akses('menuwebsite',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_menu->menu_delete($id);
		redirect('administrator/menuwebsite');
	}


	// Controller Modul Halaman Baru

	function halamanbaru(){
		cek_session_akses('halamanbaru',$this->session->id_session);
		$data['record'] = $this->model_halaman->halamanstatis();
		$this->template->load('administrator/template','administrator/mod_halaman/view_halaman',$data);
	}

	function tambah_halamanbaru(){
		cek_session_akses('halamanbaru',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_halaman->halamanstatis_tambah();
			redirect('administrator/halamanbaru');
		}else{
			$this->template->load('administrator/template','administrator/mod_halaman/view_halaman_tambah');
		}
	}

	function edit_halamanbaru(){
		cek_session_akses('halamanbaru',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_halaman->halamanstatis_update();
			redirect('administrator/halamanbaru');
		}else{
			$data['rows'] = $this->model_halaman->halamanstatis_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_halaman/view_halaman_edit',$data);
		}
	}

	function delete_halamanbaru(){
		cek_session_akses('halamanbaru',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_halaman->halamanstatis_delete($id);
		redirect('administrator/halamanbaru');
	}



	// Controller Modul Download

	function download(){
		cek_session_akses('download',$this->session->id_session);
		$data['record'] = $this->model_download->index();
		$this->template->load('administrator/template','administrator/mod_download/view_download',$data);
	}

	function tambah_download(){
		cek_session_akses('download',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_download->download_tambah();
			redirect('administrator/download');
		}else{
			$this->template->load('administrator/template','administrator/mod_download/view_download_tambah');
		}
	}

	function edit_download(){
		cek_session_akses('download',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_download->download_update();
			redirect('administrator/download');
		}else{
			$data['rows'] = $this->model_download->download_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_download/view_download_edit',$data);
		}
	}

	function delete_download(){
		cek_session_akses('download',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_download->download_delete($id);
		redirect('administrator/download');
	}

	public function download_file(){
		$name = $this->uri->segment(3);
		$data = file_get_contents("asset/bukti_transfer/".$name);
		force_download($name, $data);
	}




	// Controller Modul Image Slider

	function imagesslider(){
		cek_session_akses('imagesslider',$this->session->id_session);
		$data['record'] = $this->model_main->slide();
		$this->template->load('administrator/template','administrator/mod_slider/view_slider',$data);
	}

	function tambah_imagesslider(){
		cek_session_akses('imagesslider',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_main->slide_tambah();
			redirect('administrator/imagesslider');
		}else{
			$this->template->load('administrator/template','administrator/mod_slider/view_slider_tambah');
		}
	}

	function edit_imagesslider(){
		cek_session_akses('imagesslider',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_main->slide_update();
			redirect('administrator/imagesslider');
		}else{
			$data['rows'] = $this->model_main->slide_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_slider/view_slider_edit',$data);
		}
	}

	function delete_imagesslider(){
		cek_session_akses('imagesslider',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_main->slide_delete($id);
		redirect('administrator/imagesslider');
	}



	// Controller Modul Album

	function album(){
		cek_session_akses('album',$this->session->id_session);
		$data['record'] = $this->model_gallery->album();
		$this->template->load('administrator/template','administrator/mod_album/view_album',$data);
	}

	function tambah_album(){
		cek_session_akses('album',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_gallery->album_tambah();
			redirect('administrator/album');
		}else{
			$this->template->load('administrator/template','administrator/mod_album/view_album_tambah');
		}
	}

	function edit_album(){
		cek_session_akses('album',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_gallery->album_update();
			redirect('administrator/album');
		}else{
			$data['rows'] = $this->model_gallery->album_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_album/view_album_edit',$data);
		}
	}

	function delete_album(){
		cek_session_akses('album',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_gallery->album_delete($id);
		redirect('administrator/album');
	}


	// Controller Modul Gallery

	function gallery(){
		cek_session_akses('gallery',$this->session->id_session);
		$data['record'] = $this->model_gallery->gallery();
		$this->template->load('administrator/template','administrator/mod_gallery/view_gallery',$data);
	}

	function tambah_gallery(){
		cek_session_akses('gallery',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_gallery->gallery_tambah();
			redirect('administrator/gallery');
		}else{
			$data['row'] = $this->model_gallery->album();
			$this->template->load('administrator/template','administrator/mod_gallery/view_gallery_tambah',$data);
		}
	}

	function edit_gallery(){
		cek_session_akses('gallery',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_gallery->gallery_update();
			redirect('administrator/gallery');
		}else{
			$data['row'] = $this->model_gallery->album();
			$data['rows'] = $this->model_gallery->gallery_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_gallery/view_gallery_edit',$data);
		}
	}

	function delete_gallery(){
		cek_session_akses('gallery',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_gallery->gallery_delete($id);
		redirect('administrator/gallery');
	}


	// Controller Modul Testimoni

	function testimoni(){
		cek_session_akses('testimoni',$this->session->id_session);
		$data['record'] = $this->model_testimoni->testimoni();
		$this->template->load('administrator/template','administrator/mod_testimoni/view_testimoni',$data);
	}

	function edit_testimoni(){
		cek_session_akses('testimoni',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_testimoni->testimoni_update();
			redirect('administrator/testimoni');
		}else{
			$data['rows'] = $this->model_testimoni->testimoni_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_testimoni/view_testimoni_edit',$data);
		}
	}

	function delete_testimoni(){
		cek_session_akses('testimoni',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_testimoni->testimoni_delete($id);
		redirect('administrator/testimoni');
	}


	// Controller Modul List Berita

	function listberita(){
		cek_session_akses('listberita',$this->session->id_session);
		$data['record'] = $this->model_berita->list_berita();
		$this->template->load('administrator/template','administrator/mod_berita/view_berita',$data);
	}

	function tambah_listberita(){
		cek_session_akses('listberita',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_berita->list_berita_tambah();
			redirect('administrator/listberita');
		}else{
			$data['tag'] = $this->model_berita->tag_berita();
			$data['record'] = $this->model_berita->kategori_berita();
			$this->template->load('administrator/template','administrator/mod_berita/view_berita_tambah',$data);
		}
	}

	function cepat_listberita(){
		cek_session_akses('listberita',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_berita->list_berita_cepat();
			redirect('administrator/listberita');
		}else{
			redirect('administrator/listberita');
		}
	}

	function edit_listberita(){
		cek_session_akses('listberita',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_berita->list_berita_update();
			redirect('administrator/listberita');
		}else{
			$data['tag'] = $this->model_berita->tag_berita();
			$data['record'] = $this->model_berita->kategori_berita();
			$data['rows'] = $this->model_berita->list_berita_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_berita/view_berita_edit',$data);
		}
	}

	function delete_listberita(){
		cek_session_akses('listberita',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_berita->list_berita_delete($id);
		redirect('administrator/listberita');
	}


	// Controller Modul Kategori Berita

	function kategoriberita(){
		cek_session_akses('kategoriberita',$this->session->id_session);
		$data['record'] = $this->model_berita->kategori_berita();
		$this->template->load('administrator/template','administrator/mod_kategori/view_kategori',$data);
	}

	function tambah_kategoriberita(){
		cek_session_akses('kategoriberita',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_berita->kategori_berita_tambah();
			redirect('administrator/kategoriberita');
		}else{
			$this->template->load('administrator/template','administrator/mod_kategori/view_kategori_tambah');
		}
	}

	function edit_kategoriberita(){
		cek_session_akses('kategoriberita',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_berita->kategori_berita_update();
			redirect('administrator/kategoriberita');
		}else{
			$data['rows'] = $this->model_berita->kategori_berita_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_kategori/view_kategori_edit',$data);
		}
	}

	function delete_kategoriberita(){
		cek_session_akses('kategoriberita',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_berita->kategori_berita_delete($id);
		redirect('administrator/kategoriberita');
	}



	// Controller Modul Tag Berita

	function tagberita(){
		cek_session_akses('tagberita',$this->session->id_session);
		$data['record'] = $this->model_berita->tag_berita();
		$this->template->load('administrator/template','administrator/mod_tag/view_tag',$data);
	}

	function tambah_tagberita(){
		cek_session_akses('tagberita',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_berita->tag_berita_tambah();
			redirect('administrator/tagberita');
		}else{
			$this->template->load('administrator/template','administrator/mod_tag/view_tag_tambah');
		}
	}

	function edit_tagberita(){
		cek_session_akses('tagberita',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_berita->tag_berita_update();
			redirect('administrator/tagberita');
		}else{
			$data['rows'] = $this->model_berita->tag_berita_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_tag/view_tag_edit',$data);
		}
	}

	function delete_tagberita(){
		cek_session_akses('tagberita',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_berita->tag_berita_delete($id);
		redirect('administrator/tagberita');
	}



	// Controller Modul Iklan Home

	function iklanhome(){
		cek_session_akses('iklanhome',$this->session->id_session);
		$data['record'] = $this->model_iklan->iklan_tengah();
		$this->template->load('administrator/template','administrator/mod_iklanhome/view_iklanhome',$data);
	}

	function tambah_iklanhome(){
		cek_session_akses('iklanhome',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_iklan->iklan_tengah_tambah();
			redirect('administrator/iklanhome');
		}else{
			$this->template->load('administrator/template','administrator/mod_iklanhome/view_iklanhome_tambah');
		}
	}

	function edit_iklanhome(){
		cek_session_akses('iklanhome',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_iklan->iklan_tengah_update();
			redirect('administrator/iklanhome');
		}else{
			$data['rows'] = $this->model_iklan->iklan_tengah_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_iklanhome/view_iklanhome_edit',$data);
		}
	}

	function delete_iklanhome(){
		cek_session_akses('iklanhome',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_iklan->iklan_tengah_delete($id);
		redirect('administrator/iklanhome');
	}



	// Controller Modul Iklan Sidebar

	function iklansidebar(){
		cek_session_akses('iklansidebar',$this->session->id_session);
		$data['record'] = $this->model_iklan->iklan_sidebar();
		$this->template->load('administrator/template','administrator/mod_iklansidebar/view_iklansidebar',$data);
	}

	function tambah_iklansidebar(){
		cek_session_akses('iklansidebar',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_iklan->iklan_sidebar_tambah();
			redirect('administrator/iklansidebar');
		}else{
			$this->template->load('administrator/template','administrator/mod_iklansidebar/view_iklansidebar_tambah');
		}
	}

	function edit_iklansidebar(){
		cek_session_akses('iklansidebar',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_iklan->iklan_sidebar_update();
			redirect('administrator/iklansidebar');
		}else{
			$data['rows'] = $this->model_iklan->iklan_sidebar_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_iklansidebar/view_iklansidebar_edit',$data);
		}
	}

	function delete_iklansidebar(){
		cek_session_akses('iklansidebar',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_iklan->iklan_sidebar_delete($id);
		redirect('administrator/iklansidebar');
	}



	// Controller Modul Logo

	function logowebsite(){
		cek_session_akses('logowebsite',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_main->logo_update();
			redirect('administrator/logowebsite');
		}else{
			$data['record'] = $this->model_main->logo();
			$this->template->load('administrator/template','administrator/mod_logowebsite/view_logowebsite',$data);
		}
	}


	// Controller Modul Template Website

	function templatewebsite(){
		cek_session_akses('templatewebsite',$this->session->id_session);
		$data['record'] = $this->model_main->template();
		$this->template->load('administrator/template','administrator/mod_template/view_template',$data);
	}

	function tambah_templatewebsite(){
		cek_session_akses('templatewebsite',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_main->template_tambah();
			redirect('administrator/templatewebsite');
		}else{
			$this->template->load('administrator/template','administrator/mod_template/view_template_tambah');
		}
	}

	function edit_templatewebsite(){
		cek_session_akses('templatewebsite',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_main->template_update();
			redirect('administrator/templatewebsite');
		}else{
			$data['rows'] = $this->model_main->template_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_template/view_template_edit',$data);
		}
	}

	function delete_templatewebsite(){
		cek_session_akses('templatewebsite',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_main->template_delete($id);
		redirect('administrator/templatewebsite');
	}



	// Controller Modul Pesan Masuk

	function pesanmasuk(){
		cek_session_akses('pesanmasuk',$this->session->id_session);
		$data['record'] = $this->model_main->pesan_masuk();
		$this->template->load('administrator/template','administrator/mod_pesanmasuk/view_pesanmasuk',$data);
	}

	function detail_pesanmasuk(){
		cek_session_akses('pesanmasuk',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->db->query("UPDATE hubungi SET dibaca='Y' where id_hubungi='$id'");
		if (isset($_POST['submit'])){
			$this->model_main->pesan_masuk_kirim();
			$data['rows'] = $this->model_main->pesan_masuk_view($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_pesanmasuk/view_pesanmasuk_detail',$data);
		}else{
			$data['rows'] = $this->model_main->pesan_masuk_view($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_pesanmasuk/view_pesanmasuk_detail',$data);
		}
	}




	// Controller Modul User

	function manajemenuser(){
		cek_session_akses('manajemenuser',$this->session->id_session);
		$data['record'] = $this->model_app->view_ordering('users','username','DESC');
		$this->template->load('administrator/template','administrator/mod_users/view_users',$data);
	}

	function tambah_manajemenuser(){
		cek_session_akses('manajemenuser',$this->session->id_session);
		$id = $this->session->username;
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_user/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
            $config['max_size'] = '1000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil=$this->upload->data();
            if ($hasil['file_name']==''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'level'=>$this->db->escape_str($this->input->post('g')),
                                    'blokir'=>'N',
                                    'id_session'=>md5($this->input->post('a')).'-'.date('YmdHis'));
            }else{
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'foto'=>$hasil['file_name'],
                                    'level'=>$this->db->escape_str($this->input->post('g')),
                                    'blokir'=>'N',
                                    'id_session'=>md5($this->input->post('a')).'-'.date('YmdHis'));
            }
            $this->model_app->insert('users',$data);

              $mod=count($this->input->post('modul'));
              $modul=$this->input->post('modul');
              $sess = md5($this->input->post('a')).'-'.date('YmdHis');
              for($i=0;$i<$mod;$i++){
                $datam = array('id_session'=>$sess,
                              'id_modul'=>$modul[$i]);
                $this->model_app->insert('users_modul',$datam);
              }

			redirect('administrator/edit_manajemenuser/'.$this->input->post('a'));
		}else{
            $proses = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
            $data = array('record' => $proses);
			$this->template->load('administrator/template','administrator/mod_users/view_users_tambah',$data);
		}
	}

	function edit_manajemenuser(){
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_user/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|JPEG';
            $config['max_size'] = '1000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('f');
            $hasil=$this->upload->data();
            if ($hasil['file_name']=='' AND $this->input->post('b') ==''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']!='' AND $this->input->post('b') ==''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'foto'=>$hasil['file_name'],
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']=='' AND $this->input->post('b') !=''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }elseif ($hasil['file_name']!='' AND $this->input->post('b') !=''){
                    $data = array('username'=>$this->db->escape_str($this->input->post('a')),
                                    'password'=>hash("sha512", md5($this->input->post('b'))),
                                    'nama_lengkap'=>$this->db->escape_str($this->input->post('c')),
                                    'email'=>$this->db->escape_str($this->input->post('d')),
                                    'no_telp'=>$this->db->escape_str($this->input->post('e')),
                                    'foto'=>$hasil['file_name'],
                                    'blokir'=>$this->db->escape_str($this->input->post('h')));
            }
            $where = array('username' => $this->input->post('id'));
            $this->model_app->update('users', $data, $where);

              $mod=count($this->input->post('modul'));
              $modul=$this->input->post('modul');
              for($i=0;$i<$mod;$i++){
                $datam = array('id_session'=>$this->input->post('ids'),
                              'id_modul'=>$modul[$i]);
                $this->model_app->insert('users_modul',$datam);
              }

			redirect('administrator/edit_manajemenuser/'.$this->input->post('id'));
		}else{
            if ($this->session->username==$this->uri->segment(3) OR $this->session->level=='admin'){
                $proses = $this->model_app->edit('users', array('username' => $id))->row_array();
                $akses = $this->model_app->view_join_where('users_modul','modul','id_modul', array('id_session' => $proses['id_session']),'id_umod','DESC');
                $modul = $this->model_app->view_where_ordering('modul', array('publish' => 'Y','status' => 'user'), 'id_modul','DESC');
                $data = array('rows' => $proses, 'record' => $modul, 'akses' => $akses);
    			$this->template->load('administrator/template','administrator/mod_users/view_users_edit',$data);
            }else{
                redirect('administrator/edit_manajemenuser/'.$this->session->username);
            }
		}
	}

	function delete_manajemenuser(){
        cek_session_akses('manajemenuser',$this->session->id_session);
		$id = array('username' => $this->uri->segment(3));
        $this->model_app->delete('users',$id);
		redirect('administrator/manajemenuser');
	}

    function delete_akses(){
        cek_session_admin();
        $id = array('id_umod' => $this->uri->segment(3));
        $this->model_app->delete('users_modul',$id);
        redirect('administrator/edit_manajemenuser/'.$this->uri->segment(4));
    }

	


	// Controller Modul Modul

	function manajemenmodul(){
		cek_session_akses('manajemenmodul',$this->session->id_session);
		$data['record'] = $this->model_modul->modul();
		$this->template->load('administrator/template','administrator/mod_modul/view_modul',$data);
	}

	function tambah_manajemenmodul(){
		cek_session_akses('manajemenmodul',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_modul->modul_tambah();
			redirect('administrator/manajemenmodul');
		}else{
			$this->template->load('administrator/template','administrator/mod_modul/view_modul_tambah');
		}
	}

	function edit_manajemenmodul(){
		cek_session_akses('manajemenmodul',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_modul->modul_update();
			redirect('administrator/manajemenmodul');
		}else{
			$data['rows'] = $this->model_modul->modul_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_modul/view_modul_edit',$data);
		}
	}

	function delete_manajemenmodul(){
		cek_session_akses('manajemenmodul',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_modul->modul_delete($id);
		redirect('administrator/manajemenmodul');
	}


	// Controller Modul Konsumen

	function konsumen(){
		cek_session_akses('konsumen',$this->session->id_session);
		$data['record'] = $this->model_app->view_ordering('rb_konsumen','id_konsumen','DESC');
		$this->template->load('administrator/template','administrator/mod_konsumen/view_konsumen',$data);
	}

	function edit_konsumen(){
		cek_session_akses('konsumen',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_members->profile_update($this->input->post('id'));
			redirect('administrator/edit_konsumen/'.$this->input->post('id'));
		}else{
			$data['row'] = $this->model_app->profile_konsumen($id)->row_array();
			$data['kota'] = $this->model_app->view('rb_kota');
			$this->template->load('administrator/template','administrator/mod_konsumen/view_konsumen_edit',$data);
		}
	}
	
	function detail_konsumen(){
		cek_session_akses('konsumen',$this->session->id_session);
		$id = $this->uri->segment(3);
		$record = $this->model_app->orders_report($id);
		$edit = $this->model_app->profile_konsumen($id)->row_array();
		$data = array('rows' => $edit,'record'=>$record);
		$this->template->load('administrator/template','administrator/mod_konsumen/view_konsumen_detail',$data);
	}

	function delete_konsumen(){
        cek_session_akses('konsumen',$this->session->id_session);
		$id = array('id_konsumen' => $this->uri->segment(3));
		$this->model_app->delete('rb_konsumen',$id);
		redirect('administrator/konsumen');
	}


	// Controller Modul Kategori Produk

	function kategori_produk(){
		cek_session_akses('kategori_produk',$this->session->id_session);
		$data['record'] = $this->model_app->view_ordering('rb_kategori_produk','id_kategori_produk','DESC');
		$this->template->load('administrator/template','administrator/mod_kategori_produk/view_kategori_produk',$data);
	}

	function tambah_kategori_produk(){
		cek_session_akses('kategori_produk',$this->session->id_session);
		if (isset($_POST['submit'])){
	        $data = array('nama_kategori'=>$this->input->post('a'),'kategori_seo'=>seo_title($this->input->post('a')));
			$this->model_app->insert('rb_kategori_produk',$data);
			redirect('administrator/kategori_produk');
		}else{
			$this->template->load('administrator/template','administrator/mod_kategori_produk/view_kategori_produk_tambah');
		}
	}

	function edit_kategori_produk(){
		cek_session_akses('kategori_produk',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
	        $data = array('nama_kategori'=>$this->input->post('a'),'kategori_seo'=>seo_title($this->input->post('a')));
			$where = array('id_kategori_produk' => $this->input->post('id'));
			$this->model_app->update('rb_kategori_produk', $data, $where);
			redirect('administrator/kategori_produk');
		}else{
			$edit = $this->model_app->edit('rb_kategori_produk',array('id_kategori_produk'=>$id))->row_array();
			$data = array('rows' => $edit);
			$this->template->load('administrator/template','administrator/mod_kategori_produk/view_kategori_produk_edit',$data);
		}
	}

	function delete_kategori_produk(){
        cek_session_akses('kategori_produk',$this->session->id_session);
		$id = array('id_kategori_produk' => $this->uri->segment(3));
		$this->model_app->delete('rb_kategori_produk',$id);
		redirect('administrator/kategori_produk');
	}


	// Controller Modul Produk

	function produk(){
		cek_session_akses('produk',$this->session->id_session);
		$data['record'] = $this->model_app->view_ordering('rb_produk','id_produk','DESC');
		$this->template->load('administrator/template','administrator/mod_produk/view_produk',$data);
	}

	function tambah_produk(){
		cek_session_akses('produk',$this->session->id_session);
		if (isset($_POST['submit'])){
			$config['upload_path'] = 'asset/foto_produk/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size'] = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('g');
            $hasil=$this->upload->data();
            if ($hasil['file_name']==''){
		        $data = array('id_kategori_produk'=>$this->input->post('a'),
		        			  'nama_produk'=>$this->db->escape_str($this->input->post('b')),
		        			  'produk_seo'=>$this->db->escape_str(seo_title($this->input->post('b'))),
		        			  'satuan'=>$this->input->post('c'),
		        			  'harga_beli'=>$this->input->post('d'),
		        			  'harga_reseller'=>$this->input->post('e'),
		        			  'harga_konsumen'=>$this->input->post('f'),
		        			  'berat'=>$this->input->post('berat'),
		        			  'keterangan'=>$this->input->post('ff'),
		        			  'username'=>$this->session->username,
		        			  'waktu_input'=>date('Y-m-d H:i:s'));
		    }else{
		    	$data = array('id_kategori_produk'=>$this->input->post('a'),
		        			  'nama_produk'=>$this->input->post('b'),
		        			  'produk_seo'=>$this->db->escape_str(seo_title($this->input->post('b'))),
		        			  'satuan'=>$this->input->post('c'),
		        			  'harga_beli'=>$this->input->post('d'),
		        			  'harga_reseller'=>$this->input->post('e'),
		        			  'harga_konsumen'=>$this->input->post('f'),
		        			  'berat'=>$this->input->post('berat'),
		        			  'gambar'=>$hasil['file_name'],
		        			  'keterangan'=>$this->input->post('ff'),
		        			  'username'=>$this->session->username,
		        			  'waktu_input'=>date('Y-m-d H:i:s'));
		    }
			$this->model_app->insert('rb_produk',$data);
			redirect('administrator/produk');
		}else{
			$data['record'] = $this->model_app->view_ordering('rb_kategori_produk','id_kategori_produk','DESC');
			$this->template->load('administrator/template','administrator/mod_produk/view_produk_tambah',$data);
		}
	}

	function edit_produk(){
		cek_session_akses('produk',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
	        $config['upload_path'] = 'asset/foto_produk/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size'] = '5000'; // kb
            $this->load->library('upload', $config);
            $this->upload->do_upload('g');
            $hasil=$this->upload->data();
            if ($hasil['file_name']==''){
		        $data = array('id_kategori_produk'=>$this->input->post('a'),
		        			  'nama_produk'=>$this->input->post('b'),
		        			  'produk_seo'=>$this->db->escape_str(seo_title($this->input->post('b'))),
		        			  'satuan'=>$this->input->post('c'),
		        			  'harga_beli'=>$this->input->post('d'),
		        			  'harga_reseller'=>$this->input->post('e'),
		        			  'harga_konsumen'=>$this->input->post('f'),
		        			  'berat'=>$this->input->post('berat'),
		        			  'keterangan'=>$this->input->post('ff'),
		        			  'username'=>$this->session->username);
		    }else{
		    	$data = array('id_kategori_produk'=>$this->input->post('a'),
		        			  'nama_produk'=>$this->input->post('b'),
		        			  'produk_seo'=>$this->db->escape_str(seo_title($this->input->post('b'))),
		        			  'satuan'=>$this->input->post('c'),
		        			  'harga_beli'=>$this->input->post('d'),
		        			  'harga_reseller'=>$this->input->post('e'),
		        			  'harga_konsumen'=>$this->input->post('f'),
		        			  'berat'=>$this->input->post('berat'),
		        			  'gambar'=>$hasil['file_name'],
		        			  'keterangan'=>$this->input->post('ff'),
		        			  'username'=>$this->session->username);
		    }
			$where = array('id_produk' => $this->input->post('id'));
			$this->model_app->update('rb_produk', $data, $where);
			redirect('administrator/produk');
		}else{
			$data['record'] = $this->model_app->view_ordering('rb_kategori_produk','id_kategori_produk','DESC');
			$data['rows'] = $this->model_app->edit('rb_produk',array('id_produk'=>$id))->row_array();
			$this->template->load('administrator/template','administrator/mod_produk/view_produk_edit',$data);
		}
	}

	function delete_produk(){
        cek_session_akses('produk',$this->session->id_session);
		$id = array('id_produk' => $this->uri->segment(3));
		$this->model_app->delete('rb_produk',$id);
		redirect('administrator/produk');
	}


	// Controller Modul Rekening

	function rekening(){
		cek_session_akses('rekening',$this->session->id_session);
		$data['record'] = $this->model_rekening->rekening();
		$this->template->load('administrator/template','administrator/mod_rekening/view_rekening',$data);
	}

	function tambah_rekening(){
		cek_session_akses('rekening',$this->session->id_session);
		if (isset($_POST['submit'])){
			$this->model_rekening->rekening_tambah();
			redirect('administrator/rekening');
		}else{
			$this->template->load('administrator/template','administrator/mod_rekening/view_rekening_tambah');
		}
	}

	function edit_rekening(){
		cek_session_akses('rekening',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$this->model_rekening->rekening_update();
			redirect('administrator/rekening');
		}else{
			$data['rows'] = $this->model_rekening->rekening_edit($id)->row_array();
			$this->template->load('administrator/template','administrator/mod_rekening/view_rekening_edit',$data);
		}
	}

	function delete_rekening(){
		cek_session_akses('rekening',$this->session->id_session);
		$id = $this->uri->segment(3);
		$this->model_rekening->rekening_delete($id);
		redirect('administrator/rekening');
	}



	// Controller Modul Pembelian

	function pembelian(){
		cek_session_akses('pembelian',$this->session->id_session);
		$this->session->unset_userdata('idp');
		$data['record'] = $this->model_app->view_join_one('rb_pembelian','rb_supplier','id_supplier','id_pembelian','DESC');
		$this->template->load('administrator/template','administrator/mod_pembelian/view_pembelian',$data);
	}

	function detail_pembelian(){
		cek_session_akses('pembelian',$this->session->id_session);
		$data['rows'] = $this->model_app->view_join_rows('rb_pembelian','rb_supplier','id_supplier',array('id_pembelian'=>$this->uri->segment(3)),'id_pembelian','DESC')->row_array();
		$data['record'] = $this->model_app->view_join_where('rb_pembelian_detail','rb_produk','id_produk',array('id_pembelian'=>$this->uri->segment(3)),'id_pembelian_detail','DESC');
		$this->template->load('administrator/template','administrator/mod_pembelian/view_pembelian_detail',$data);
	}

	function tambah_pembelian(){
		cek_session_akses('pembelian',$this->session->id_session);
		if (isset($_POST['submit1'])){
			if ($this->session->idp == ''){
				$data = array('kode_pembelian'=>$this->input->post('a'),
			        		  'id_supplier'=>$this->input->post('b'),
			        		  'waktu_beli'=>date('Y-m-d H:i:s'));
				$this->model_app->insert('rb_pembelian',$data);
				$idp = $this->db->insert_id();
				$this->session->set_userdata(array('idp'=>$idp));
			}else{
				$data = array('kode_pembelian'=>$this->input->post('a'),
			        		  'id_supplier'=>$this->input->post('b'));
				$where = array('id_pembelian' => $this->session->idp);
				$this->model_app->update('rb_pembelian', $data, $where);
			}
			redirect('administrator/tambah_pembelian');

		}elseif(isset($_POST['submit'])){
	        if ($this->input->post('idpd')==''){
				$data = array('id_pembelian'=>$this->session->idp,
		        			  'id_produk'=>$this->input->post('aa'),
		        			  'harga_pesan'=>$this->input->post('bb'),
		        			  'jumlah_pesan'=>$this->input->post('cc'),
		        			  'satuan'=>$this->input->post('dd'));
				$this->model_app->insert('rb_pembelian_detail',$data);
			}else{
		        $data = array('id_produk'=>$this->input->post('aa'),
		        			  'harga_pesan'=>$this->input->post('bb'),
		        			  'jumlah_pesan'=>$this->input->post('cc'),
		        			  'satuan'=>$this->input->post('dd'));
				$where = array('id_pembelian_detail' => $this->input->post('idpd'));
				$this->model_app->update('rb_pembelian_detail', $data, $where);
			}
			redirect('administrator/tambah_pembelian');
		}else{
			$data['rows'] = $this->model_app->view_join_rows('rb_pembelian','rb_supplier','id_supplier',array('id_pembelian'=>$this->session->idp),'id_pembelian','DESC')->row_array();
			$data['record'] = $this->model_app->view_join_where('rb_pembelian_detail','rb_produk','id_produk',array('id_pembelian'=>$this->session->idp),'id_pembelian_detail','DESC');
			$data['barang'] = $this->model_app->view_ordering('rb_produk','id_produk','ASC');
			$data['supplier'] = $this->model_app->view_ordering('rb_supplier','id_supplier','ASC');
			if ($this->uri->segment(3)!=''){
				$data['row'] = $this->model_app->view_where('rb_pembelian_detail',array('id_pembelian_detail'=>$this->uri->segment(3)))->row_array();
			}
			$this->template->load('administrator/template','administrator/mod_pembelian/view_pembelian_tambah',$data);
		}
	}

	function edit_pembelian(){
		cek_session_akses('pembelian',$this->session->id_session);
		if (isset($_POST['submit1'])){
			$data = array('kode_pembelian'=>$this->input->post('a'),
		        		  'id_supplier'=>$this->input->post('b'),
		        		  'waktu_beli'=>$this->input->post('c'));
			$where = array('id_pembelian' => $this->input->post('idp'));
			$this->model_app->update('rb_pembelian', $data, $where);
			redirect('administrator/edit_pembelian/'.$this->input->post('idp'));

		}elseif(isset($_POST['submit'])){
			if ($this->input->post('idpd')==''){
				$data = array('id_pembelian'=>$this->input->post('idp'),
		        			  'id_produk'=>$this->input->post('aa'),
		        			  'harga_pesan'=>$this->input->post('bb'),
		        			  'jumlah_pesan'=>$this->input->post('cc'),
		        			  'satuan'=>$this->input->post('dd'));
				$this->model_app->insert('rb_pembelian_detail',$data);
			}else{
		        $data = array('id_produk'=>$this->input->post('aa'),
		        			  'harga_pesan'=>$this->input->post('bb'),
		        			  'jumlah_pesan'=>$this->input->post('cc'),
		        			  'satuan'=>$this->input->post('dd'));
				$where = array('id_pembelian_detail' => $this->input->post('idpd'));
				$this->model_app->update('rb_pembelian_detail', $data, $where);
			}
			redirect('administrator/edit_pembelian/'.$this->input->post('idp'));
		}else{
			$data['rows'] = $this->model_app->view_join_rows('rb_pembelian','rb_supplier','id_supplier',array('id_pembelian'=>$this->uri->segment(3)),'id_pembelian','DESC')->row_array();
			$data['record'] = $this->model_app->view_join_where('rb_pembelian_detail','rb_produk','id_produk',array('id_pembelian'=>$this->uri->segment(3)),'id_pembelian_detail','DESC');
			$data['barang'] = $this->model_app->view_ordering('rb_produk','id_produk','ASC');
			$data['supplier'] = $this->model_app->view_ordering('rb_supplier','id_supplier','ASC');
			if ($this->uri->segment(4)!=''){
				$data['row'] = $this->model_app->view_where('rb_pembelian_detail',array('id_pembelian_detail'=>$this->uri->segment(4)))->row_array();
			}
			$this->template->load('administrator/template','administrator/mod_pembelian/view_pembelian_edit',$data);
		}
	}

	function delete_pembelian(){
        cek_session_akses('pembelian',$this->session->id_session);
		$id = array('id_pembelian' => $this->uri->segment(3));
		$this->model_app->delete('rb_pembelian',$id);
		$this->model_app->delete('rb_pembelian_detail',$id);
		redirect('administrator/pembelian');
	}

	function delete_pembelian_detail(){
        cek_session_akses('pembelian',$this->session->id_session);
		$id = array('id_pembelian_detail' => $this->uri->segment(4));
		$this->model_app->delete('rb_pembelian_detail',$id);
		redirect('administrator/edit_pembelian/'.$this->uri->segment(3));
	}

	function delete_pembelian_tambah_detail(){
        cek_session_akses('pembelian',$this->session->id_session);
		$id = array('id_pembelian_detail' => $this->uri->segment(3));
		$this->model_app->delete('rb_pembelian_detail',$id);
		redirect('administrator/tambah_pembelian');
	}

	function tracking(){
		cek_session_akses('konsumen',$this->session->id_session);
		if ($this->uri->segment(3)!=''){
			$kode_transaksi = filter($this->uri->segment(3));
			$data['title'] = 'Tracking Order '.$kode_transaksi;
			$data['rows'] = $this->db->query("SELECT * FROM rb_penjualan a JOIN rb_konsumen b ON a.id_pembeli=b.id_konsumen JOIN rb_kota c ON b.kota_id=c.kota_id where a.kode_transaksi='$kode_transaksi'")->row_array();
			$data['record'] = $this->db->query("SELECT a.kode_transaksi, b.*, c.nama_produk, c.satuan, c.berat, c.diskon, c.produk_seo FROM `rb_penjualan` a JOIN rb_penjualan_detail b ON a.id_penjualan=b.id_penjualan JOIN rb_produk c ON b.id_produk=c.id_produk where a.kode_transaksi='".$kode_transaksi."'");
			$data['total'] = $this->db->query("SELECT a.id_penjualan, a.kode_transaksi, a.kurir, a.service, a.proses, a.ongkir, sum((b.harga_jual*b.jumlah)-(c.diskon*b.jumlah)) as total, sum(c.berat*b.jumlah) as total_berat FROM `rb_penjualan` a JOIN rb_penjualan_detail b ON a.id_penjualan=b.id_penjualan JOIN rb_produk c ON b.id_produk=c.id_produk where a.kode_transaksi='".$kode_transaksi."'")->row_array();
			$this->template->load('administrator/template','administrator/mod_penjualan/view_tracking',$data);
		}
	}

	// Controller Modul Supplier

	function supplier(){
		cek_session_akses('supplier',$this->session->id_session);
		$data['record'] = $this->model_app->view_ordering('rb_supplier','id_supplier','DESC');
		$this->template->load('administrator/template','administrator/mod_supplier/view_supplier',$data);
	}

	function tambah_supplier(){
		cek_session_akses('supplier',$this->session->id_session);
		if (isset($_POST['submit'])){
			$data = array('nama_supplier'=>$this->input->post('a'),
                        'kontak_person'=>$this->input->post('b'),
                        'alamat_lengkap'=>$this->input->post('c'),
                        'no_hp'=>$this->input->post('d'),
                        'alamat_email'=>$this->input->post('e'),
                        'kode_pos'=>$this->input->post('f'),
                        'no_telpon'=>$this->input->post('g'),
                        'fax'=>$this->input->post('h'),
                        'katerangan'=>$this->input->post('i'));
			$this->model_app->insert('rb_supplier',$data);
			redirect('administrator/supplier');
		}else{
			$this->template->load('administrator/template','administrator/mod_supplier/view_supplier_tambah');
		}
	}

	function edit_supplier(){
		cek_session_akses('supplier',$this->session->id_session);
		$id = $this->uri->segment(3);
		if (isset($_POST['submit'])){
			$data = array('nama_supplier'=>$this->input->post('a'),
                        'kontak_person'=>$this->input->post('b'),
                        'alamat_lengkap'=>$this->input->post('c'),
                        'no_hp'=>$this->input->post('d'),
                        'alamat_email'=>$this->input->post('e'),
                        'kode_pos'=>$this->input->post('f'),
                        'no_telpon'=>$this->input->post('g'),
                        'fax'=>$this->input->post('h'),
                        'katerangan'=>$this->input->post('i'));
			$where = array('id_supplier' => $this->input->post('id'));
			$this->model_app->update('rb_supplier', $data, $where);
			redirect('administrator/supplier');
		}else{
            $proses = $this->model_app->edit('rb_supplier', array('id_supplier' => $id))->row_array();
			$data = array('rows' => $proses);
			$this->template->load('administrator/template','administrator/mod_supplier/view_supplier_edit',$data);
		}
	}

	function delete_supplier(){
		cek_session_akses('supplier',$this->session->id_session);
        $id = array('id_supplier' => $this->uri->segment(3));
		$this->model_app->delete('rb_supplier',$id);
		redirect('administrator/supplier');
	}


	function orders(){
		cek_session_akses('konsumen',$this->session->id_session);
		$data['title'] = 'Laporan Pesanan Masuk';
		$data['record'] = $this->model_app->orders_report_all();
		$this->template->load('administrator/template','administrator/mod_penjualan/view_orders_report',$data);
	}

	function konfirmasi(){
		cek_session_akses('konsumen',$this->session->id_session);
		$data['title'] = 'Konfirmasi Pembayaran Pesanan';
		$data['record'] = $this->model_app->konfirmasi_bayar();
		$this->template->load('administrator/template','administrator/mod_penjualan/view_konfirmasi_bayar',$data);
	}

	function orders_status(){
		$data = array('proses'=>$this->uri->segment(4));
        $where = array('id_penjualan' => $this->uri->segment(3));
        $this->model_app->update('rb_penjualan', $data, $where);
        redirect('administrator/orders');
    }

	function logout(){
		$this->session->sess_destroy();
		redirect('main');
	}
}

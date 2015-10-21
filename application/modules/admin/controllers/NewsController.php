<?php
class Admin_NewsController extends Zend_Controller_Action{
	function init() {
		$Member = new My_Plugin_Auth ( $this->getRequest () );
		$this->Member = $_SESSION ['Member'];		
	}
	
	private function _checkForm($form) {
		$error = array ();
		if (empty ( $form ['title'] ))
			$error [] = 'Bạn chưa nhập tiêu đề tin tức!';
		if (empty ( $form ['content'] ))
			$error [] = 'Nội dung tin tức không được bỏ trống!';					
		return $error;
	}
	public function indexAction() {
		$this->view->Title = "Quản lý tin tức";
		$this->view->headTitle ( $this->view->Title );
		$page = $this->getRequest()->getParam('page');
		$condition = array();
		list ( $this->view->Pager, $this->view->News ) = News::getAll ($condition,$page);
	}
	public function createAction() {
		$this->view->Title = "Quản lý tin tức";
		$this->view->headTitle ( $this->view->Title );
		if ($this->getRequest ()->isPost ()) {
			$request = $this->getRequest ()->getParams ();						
			$error = $this->_checkForm ( $request );
			$Content = new News ();
			$Content->merge ( $request );
			if($Content->trySave()){
				$folder = $Content->id;
			}
			if($_FILES['images']['name']){					
					$dirname = "uploads/news/".$folder."/";										
					$upload = new My_Plugin_Upload();
					$error = $upload->uploadImageFile($_FILES['images'],800,600,1024000,array("image/png","image/jpg" ,"image/gif","image/x-png","image/jpeg"),$dirname);
					if(!$error){
						$filename = $upload->fileName;						
					}									
				}
			if (count ( $error ) == 0) {				
				if($filename != ""){
				$Content->images = $filename;
				}
				$Content->created_date = date("Y-m-d H:i:s");
				$Content->members_id = $this->Member->id;
				$Content->save ();
				$this->Member->log ( 'Tin tức:' . $Content->title . '(' . $Content->id . ')', 'Tạo mới' );
				My_Plugin_Libs::setSplash ( 'Tin tức: <b>' . $Content->title . '</b> đã tạo thành công. ' );
				$this->_redirect ( $this->_helper->url ( 'index', 'news', 'admin' ) );	
			}
			if (count ( $error ))
				$this->view->error = $error;
		}
	}
	
	public function editAction() {
		$this->view->Title = "Quản lý tin tức";
		$this->view->headTitle ( $this->view->Title );
		$Content = News::getById ( $this->getRequest ()->getParam ( 'id' ) );
		if ($this->getRequest ()->isPost ()) {
			$request = $this->getRequest ()->getParams ();			
			//checkform
			$error = $this->_checkForm ( $request );
			if($_FILES['images']['name']){				
					$dir = new My_Plugin_Libs();
					$name = $dir->trimSpacer($request['title']);
					$dirname = "uploads/news/".$Content->id."/";										
					$upload = new My_Plugin_Upload();
					$error = $upload->uploadImageFile($_FILES['images'],800,600,1024000,array("image/png","image/jpg" ,"image/gif","image/x-png","image/jpeg"),$dirname);
					if(!$error){
						$filename = $upload->fileName;						
					}									
				}
			if (count ( $error ) == 0) {
				$Content->merge ( $request );
				if($filename != ""){
				$Content->images = $filename;
				}
				$Content->members_id = $this->Member->id;
				$Content->created_date = date("Y-m-d H:i:s");
				$Content->save();
				$this->Member->log ( 'Tin tức:' . $Content->title . '(' . $Content->id  . ')', 'Sửa chữa' );
				My_Plugin_Libs::setSplash ( 'Tin tức: <b>' . $Content->title . '</b> đã sửa thành công. ' );
				//redirect to list
				$this->_redirect ( $this->_helper->url ( 'index', 'news', 'admin' ) );
			}
			if (count ( $error ))
				$this->view->error = $error;
		}
		$this->view->News = $Content;
	}
	/**
	 * Delete a Country
	 */
	public function deleteAction() {
		$Content = News::getById ( $this->getRequest ()->getParam ( 'id' ) );
		if ($Content) {
			if ($this->getRequest ()->isPost ()) {
				$Content->delete ();				
				$this->Member->log ( 'Tin tức: ' . $Content->title . '(' . $this->getRequest ()->getParam ( 'id' ) . ')', 'Xóa' );
				My_Plugin_Libs::setSplash('Tin tức: <b>'.$Content->title.'</b> đã được xóa khỏi hệ thống.');
				$this->_redirect ( $this->_helper->url ( 'index', 'news', 'admin' ) );
			}
			$this->view->News = $Content;
		}
	}
}
<?php
class Admin_SetionsController extends Zend_Controller_Action{
	function init() {
		$Member = new My_Plugin_Auth ( $this->getRequest () );
		$this->Member = $_SESSION ['Member'];
	}
	private function _checkForm($form) {
		$error = array ();
		if (empty ( $form ['name'] ))
			$error [] = 'Bạn chưa nhập tên danh mục';					
		return $error;
	}
	public function indexAction(){
		$this->view->Title = "Quản lý danh mục";
		$this->view->headTitle ( $this->view->Title );
		$page = $this->getRequest()->getParam('page');
		$condition = array();
		list ( $this->view->Pager, $this->view->Setions ) = Setions::getAll ($condition,$page);
	}
	public function createAction(){
		$this->view->Title = "Quản lý danh mục";
		$this->view->headTitle ( $this->view->Title );
		if ($this->getRequest ()->isPost ()) {
			$request = $this->getRequest ()->getParams ();			
			$error = $this->_checkForm ( $request );
			if (count ( $error ) == 0) {
				$Product = new Setions();
				$Product->merge ( $request );
				$Product->save ();
				$this->Member->log ( 'Danh mục:' . $Product->name . '(' . $Product->id . ')', 'Tạo mới' );
				My_Plugin_Libs::setSplash ( 'Danh mục: <b>' . $Product->name . '</b> đã tạo thành công. ' );
				$this->_redirect ( $this->_helper->url ( 'index', 'setions', 'admin' ) );	
			}
			if (count ( $error ))
				$this->view->error = $error;
		}
	}
	
	public function editAction() {
		$this->view->Title = "Quản lý danh mục";
		$this->view->headTitle ( $this->view->Title );
		$Product = Setions::getById ( $this->getRequest ()->getParam ( 'id' ) );
		if ($this->getRequest ()->isPost ()) {
			$request = $this->getRequest ()->getParams ();			
			//checkform
			$error = $this->_checkForm ( $request );
			if (count ( $error ) == 0) {
				$Product->merge ( $request );
				$Product->save();
				$this->Member->log ( 'Danh mục:' . $Product->name . '(' . $Product->id  . ')', 'Sửa chữa' );
				My_Plugin_Libs::setSplash ( 'Danh mục: <b>' . $Product->name . '</b> đã sửa thành công. ' );
				//redirect to list
				$this->_redirect ( $this->_helper->url ( 'index', 'setions', 'admin' ) );
			}
			if (count ( $error ))
				$this->view->error = $error;
		}
		$this->view->Setions = $Product;
	}
	
	public function deleteAction() {
		$Product = Setions::getById ( $this->getRequest ()->getParam ( 'id' ) );
		if ($Product) {
			if ($this->getRequest ()->isPost ()) {
				$Product->delete ();				
				$this->Member->log ( 'Danh mục: ' . $Product->name . '(' . $this->getRequest ()->getParam ( 'id' ) . ')', 'Xóa' );
				My_Plugin_Libs::setSplash('Danh mục: <b>'.$Product->name.'</b> đã được xóa khỏi hệ thống.');
				$this->_redirect ( $this->_helper->url ( 'index', 'setions', 'admin' ) );
			}
			$this->view->Setions = $Product;
		}
	}
}
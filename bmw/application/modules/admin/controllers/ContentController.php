<?php

class Admin_ContentController extends Zend_Controller_Action {
	function init() {
		$Member = new My_Plugin_Auth ( $this->getRequest () );
		$this->Member = $_SESSION ['Member'];
	}
	
	private function _checkForm($form) {
		$error = array ();
		if (empty ( $form ['content_title'] ))
			$error [] = 'Bạn chưa nhập tiêu đề bài viết!';
		if (empty ( $form ['content_detail'] ))
			$error [] = 'Nội dung bài viết không được bỏ trống!';		
		return $error;
	}
	public function indexAction() {
		$this->view->Title = "Quản lý bài viết";
		$this->view->headTitle ( $this->view->Title );
		$page = $this->getRequest()->getParam('page');
		$condition = array();
		list ( $this->view->Pager, $this->view->Content ) = Content::getAll ($condition,$page);
	}
	public function createAction() {
		$this->view->Title = "Quản lý bài viết";
		$this->view->headTitle ( $this->view->Title );
		if ($this->getRequest ()->isPost ()) {
			$request = $this->getRequest ()->getParams ();						
			$error = $this->_checkForm ( $request );
			if (count ( $error ) == 0) {
				$Content = new Content ();
				$Content->merge ( $request );
				$Content->created_date = date("Y-m-d H:i:s");
				$Content->save ();
				$this->Member->log ( 'Bài viết:' . $Content->content_title . '(' . $Content->content_id . ')', 'Tạo mới' );
				My_Plugin_Libs::setSplash ( 'Bài viết: <b>' . $Content->content_title . '</b> đã tạo thành công. ' );
				$this->_redirect ( $this->_helper->url ( 'index', 'content', 'admin' ) );	
			}
			if (count ( $error ))
				$this->view->error = $error;
		}
	}
	
	public function editAction() {
		$this->view->Title = "Quản lý bài viết";
		$this->view->headTitle ( $this->view->Title );
		$Content = Content::getById ( $this->getRequest ()->getParam ( 'id' ) );
		if ($this->getRequest ()->isPost ()) {
			$request = $this->getRequest ()->getParams ();			
			//checkform
			$error = $this->_checkForm ( $request );
			if (count ( $error ) == 0) {
				$Content->merge ( $request );
				$Content->created_date = date("Y-m-d H:i:s");
				$Content->save();
				$this->Member->log ( 'Bài viết:' . $Content->content_title . '(' . $Content->content_id  . ')', 'Sửa chữa' );
				My_Plugin_Libs::setSplash ( 'Bài viết: <b>' . $Content->content_title . '</b> đã sửa thành công. ' );
				//redirect to list
				$this->_redirect ( $this->_helper->url ( 'index', 'content', 'admin' ) );
			}
			if (count ( $error ))
				$this->view->error = $error;
		}
		$this->view->Content = $Content;
	}
	/**
	 * Delete a Country
	 */
	public function deleteAction() {
		$Content = Content::getById ( $this->getRequest ()->getParam ( 'id' ) );
		if ($Content) {
			if ($this->getRequest ()->isPost ()) {
				$Content->delete ();				
				$this->Member->log ( 'Bài viết: ' . $Content->content_title . '(' . $this->getRequest ()->getParam ( 'id' ) . ')', 'Xóa' );
				My_Plugin_Libs::setSplash('Bài viết: <b>'.$Content->content_title.'</b> đã được xóa khỏi hệ thống.');
				$this->_redirect ( $this->_helper->url ( 'index', 'content', 'admin' ) );
			}
			$this->view->Content = $Content;
		}
	}
}


<?php

class Admin_GroupController extends Zend_Controller_Action {
	function init() {
		$Member = new My_Plugin_Auth ( $this->getRequest () );
		$this->Member = $_SESSION ['Member'];
	}	
	public function indexAction() {
		$this->view->Title = "Quản lý nhóm thành viên";
		$this->view->headTitle ( $this->view->Title );
		//Assign create form		
		$condition = array ();
		if ($this->getRequest ()->getParam ( 'keyword' ))
			$condition ['name LIKE ?'] = "%{$this->getRequest ()->getParam ( 'keyword' )}%";
		$this->view->Group = Groups::getAll ( $condition );
	}	
	public function createAction() {
		$this->view->Title = "Tạo mới nhóm thành viên";
		$this->view->headTitle ( $this->view->Title );
		
		if ($this->getRequest ()->isPost ()) {
			$Group = new Groups ();
			$Role = $this->getRequest ()->getParam ( 'Role' );
			$Group->merge ( $_POST );
			$Group->role = Zend_Json::encode ( $Role );
			$Group->save ();
			$this->Member->log ( 'Tạo nhóm thành viên: ' . $Group->name . ' (' . $Group->id . ')', 'Groups' );
			My_Plugin_Libs::setSplash ( 'Nhóm thành viên:<b>' . $Group->name . '</b> đã được tạo.' );
			
			$this->_redirect ( $this->_helper->url ( 'index', 'Group' ) );
		}
		$Resources = new Zend_Config_Xml ( APPLICATION_PATH . '/configs/resources.xml', 'admin' );
		$this->view->Resources = $Resources;
	}
	public function editAction() {
		$this->view->Title = "Chỉnh sửa nhóm thành viên";
		$this->view->headTitle ( $this->view->Title );
		$Group = Groups::getById ( $this->getRequest ()->getParam ( 'id' ) );
		$Resources = new Zend_Config_Xml ( APPLICATION_PATH . '/configs/resources.xml', 'admin' );
		if ($this->getRequest ()->isPost ()) {
			$Role = $this->getRequest ()->getParam ( 'Role' );
			$Group->merge ( $_POST );
			$Group->role = Zend_Json::encode ( $Role );
			$Group->save ();
			$this->Member->log ( 'Chỉnh sửa nhóm thành viên: ' . $Group->name . ' (' . $Group->id . ')', 'Groups' );
			My_Plugin_Libs::setSplash ( 'Nhóm thành viên:<b>' . $Group->name . '</b> đã được sửa.' );
			$this->_redirect ( $this->_helper->url ( 'index', 'Group' ) );
		}
		$this->view->Resources = $Resources;
		$Group->role = Zend_Json::decode ( $Group->role );
		$this->view->Group = $Group;
	
	}	
	public function deleteAction() {
		$Group = Groups::getById ( $this->getRequest ()->getParam ( 'id' ) );
		if ($Group) {
			if ($this->getRequest ()->isPost ()) {				
				$Group->delete ();
				My_Plugin_Libs::setSplash ( 'Nhóm thành viên:<b>' . $Group->name . '</b> đã được xóa khổi hệ thống.' );				
				$this->Member->log ( 'Xóa nhóm thành viên:' . $Group->name . '(' . $this->getRequest ()->getParam ( 'id' ) . ')', 'Groups' );
				$this->_redirect ( $this->_helper->url ( 'index', 'Group', 'admin' ) );
			}
			$this->view->Group = $Group;
		}
	}
}


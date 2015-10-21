<?php

class IndexController extends Zend_Controller_Action {
	
	public function indexAction() {		
		$this->view->Title = "Trang chủ";
		$this->view->headTitle ( $this->view->Title );
		$Product = Product::getDataNotPage();
		$this->view->Product = $Product;
		$SoldOut = Product::getSoldOut();
		$this->view->SoldOut = $SoldOut;
		$NewStatus = Product::getNewStatus();
		$this->view->NewStatus = $NewStatus;		
	}
	public function rightmenuAction(){	
	}
	public function breadcumAction(){
		
	}
	public function visitedAction(){
		
	}	
}
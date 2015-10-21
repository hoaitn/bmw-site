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
		/**
		 * Update visited
		 */
		if($_SESSION['visit'] == false){
			$Visit = new Visited();
			$Visit->visited_date = date("Y-m-d H:i:s");
			$Visit->save();
			$_SESSION['visit'] = true;
		}else{
		
		}
	}
	public function rightmenuAction(){	
	}
	public function breadcumAction(){
		
	}
	public function visitedAction(){
		
	}	
}
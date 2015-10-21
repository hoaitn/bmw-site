<?php
class My_Plugin_Auth extends Zend_Controller_Plugin_Abstract {

	public function __construct($request) {
		if (count( $request->getParams() ) == 0)
			return;
		$controller = strtolower( $request->controller );
		$action = strtolower( $request->action );
		
		if ($_SESSION ['Role'] [$controller] [$action] != 1) {
			if ($_SESSION ['Member'])
				$_SESSION ['Member']->log( 'Access denied: ' . $controller . '-' . $action, $controller );
			My_Plugin_Libs::setSplash( 'Bạn không đươc quyền truy cập phân mục đó. Hay liên hệ người quản lý cao nhất', 'error' );
			header( 'location: /admin/' );
		}
	}
}
<?php

/**
 * Contact
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    ##PACKAGE##
 * @subpackage ##SUBPACKAGE##
 * @author     ##NAME## <##EMAIL##>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class Contact extends BaseContact
{
	public static function getAll($Condition = array(), $currentPage = 1, $recordPerPage = 20, $orderBy = 'id DESC') {
		$Contact = Doctrine_Query::create ()->from ( __CLASS__ )->orderBy ( $orderBy );
		foreach ( $Condition as $key => $item ) {
			$Contact->addWhere ( $key, $item );
		}
		$pager = new Doctrine_Pager ( $Contact, $currentPage, $recordPerPage );
		$Data = $pager->execute ();
		return array ($pager, $Data );
	}
	public static function getById($id = 0) {
		return Doctrine_Query::create ()->from ( __CLASS__ )->where ( 'id=?', $id )->execute ()->getFirst ();
	}
}
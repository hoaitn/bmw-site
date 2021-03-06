<?php

/**
 * Groups
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    ##PACKAGE##
 * @subpackage ##SUBPACKAGE##
 * @author     ##NAME## <##EMAIL##>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class Groups extends BaseGroups {
	public static function getAll($Condition = array()) {
		$Countries = Doctrine_Query::create ()->from ( __CLASS__ )->orderBy ( 'name' );
		foreach ( $Condition as $key => $item ) {
			$Countries->addWhere ( $key, $item );
		}
		return $Countries->execute ();
	}
	
	public static function getById($id = 0) {
		return Doctrine_Query::create ()->from ( __CLASS__ )->where ( 'id=?', $id )->execute ()->getFirst ();
	}
	public static function getOption($countries = array()) {
		$HotelTypes = self::getAll ();
		foreach ( $HotelTypes as $HotelType ) {
			$hoteltypes [$HotelType->id] = $HotelType->name;
		}
		return $hoteltypes;
	}
}
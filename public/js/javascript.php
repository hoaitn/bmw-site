<?php
ob_start ( "ob_gzhandler" );
header ( "Accept-Encoding: gzip, deflate" );
header ( "X-Compression: gzip" );
header ( "Content-Encoding: gzip" );
header ( "Cache-Control: public, max-age=315363600" );
header ( "Vary: Accept-Encoding" );
header ( 'Content-type: text/javascript' );
$css = array ('script.js');
foreach ( $css as $item ) {
	echo file_get_contents ( $item );
}
?>
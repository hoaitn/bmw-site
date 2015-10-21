$(document)
		.ready(
				function() {
					tinyMCE
							.init( {
								// General options
								mode : "textareas",
								theme : "advanced",
								skin : "o2k7",
								plugins : "halfpage,safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",
								// Theme options
								theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
								theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
								theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
								theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
								theme_advanced_toolbar_location : "top",
								theme_advanced_toolbar_align : "left",
								theme_advanced_statusbar_location : "bottom",
								theme_advanced_resizing : true,
								// Example content CSS (should be your site CSS)
								// content_css :
								// "http://www.vietinfo.eu/css/stylesheet.css",
								file_browser_callback : "tinyBrowser",
								convert_urls : false,
								editor_selector : "mceEditor",
								editor_deselector : "mceNoEditor"
							});
					$.each($('div').find('button'), function() {
						$('button').button();
					});
					$.each($('div').find('input[type=button]'), function() {
						$('input[type=button]').button();
					});
				});
var ajaxSaveLocation = function(obj) {
	var id = $("#dialog-form-edit input[name=locaion]").val();
	var name = $("#dialog-form-edit input[name=name]").val();
	var sort = $("#dialog-form-edit input[name=sort_order]").val();
	var status = $("#dialog-form-edit select[name=status]").val();
	$.post($("#dialog-form-edit input[name=url]").val(), {
		location : id,
		name : name,
		sort_order : sort,
		status : status
	}, function(data) {
		location.reload();
	});
}
// End javascript for Cities

var ajaxLoadForOption = (function(url, obj, selected) {
	obj.children().remove();
	$.get(url, function(data) {
		if (data) {
			$.each(data, function(val, text) {
				checked = (val == selected) ? true : false;
				obj.append(new Option(text, val, checked, checked));
			});
		}
	}, "json");
});


var createMarker = function(point) {
	var baseIcon = new GIcon();
	baseIcon.shadow = "http://www.google.com/mapfiles/shadow50.png";
	// baseIcon.iconSize = new GSize(28, 26);
	// baseIcon.shadowSize = new GSize(37, 26);
	baseIcon.iconAnchor = new GPoint(9, 26);
	baseIcon.infoWindowAnchor = new GPoint(9, 2);
	baseIcon.infoShadowAnchor = new GPoint(18, 25);
	var iconStar = new GIcon(baseIcon);
	iconStar.image = 'http://tuntravel.com/images/markerA.png';
	markerOptions = {
		icon : iconStar
	};
	var markerClick = new GMarker(point, markerOptions);
	return markerClick;
}
function microtime(get_as_float) {
	// Returns either a string or a float containing the current time in seconds
	// and microseconds
	// 
	// version: 1004.2314
	// discuss at: http://phpjs.org/functions/microtime // + original by: Paulo
	// Ricardo F. Santos
	// * example 1: timeStamp = microtime(true);
	// * results 1: timeStamp > 1000000000 && timeStamp < 2000000000
	var now = new Date().getTime() / 1000;
	var s = parseInt(now, 10);
	return (get_as_float) ? now : (Math.round((now - s) * 1000) / 1000) + ' '
			+ s;
}
var initDateRange = function(fromObj, toObj) {
	year = (new Date).getFullYear();
	var dates = $('#' + fromObj + ',#' + toObj).datepicker(
			{
				changeMonth : true,
				changeYear : true,
				yearRange : year + ':' + (year + 1),
				onSelect : function(selectedDate) {
					var option = this.id == fromObj ? "minDate" : "maxDate";
					var instance = $(this).data("datepicker");
					var date = $.datepicker.parseDate(
							instance.settings.dateFormat
									|| $.datepicker._defaults.dateFormat,
							selectedDate, instance.settings);
					dates.not(this).datepicker("option", option, date);
				}
			});
}
var ParsedAdvHtml = (function(a, b, c, d) {
	var height = 'height="' + c + '"';
	var html = '';
	var width = 'width="' + d + '"';
	if (b == 'image')
		html += '<object '
				+ width
				+ height
				+ ' align="middle" id="ob11" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"><param value="transparent" name="wmode" /><param value="sameDomain" name="allowScriptAccess" /><param value="'
				+ DOMAIN_NAME
				+ a
				+ '" name="movie" /><param value="high" name="quality" /><embed '
				+ width
				+ height
				+ ' align="middle" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" allowscriptaccess="sameDomain" wmode="transparent" quality="high" src="'
				+ DOMAIN_NAME + a + '" /></object>';
	else
		html += '<img src="' + a + '"' + width + ' ' + height + '">';
	return html;
});
var initAutoComplete = (function(obj, url, b) {
	$("#" + obj).autocomplete( {
		source : DOMAIN_NAME + url,
		minLength : 3,
		select : function(event, ui) {
			if (ui.item)
				$('input[name=' + b + ']').val(ui.item.id);
		}
	});
});
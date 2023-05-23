/**
 * @license Copyright (c) 2003-2021, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.extraPlugins = 'video';
	config.extraPlugins = 'youtube';
	config.editorplaceholder = 'Content';
	config.skin = 'office2013';
	config.toolbar_Pure = [
      {name: 'insert', items: [ 'Image','Video']},
    ]
	config.filebrowserBrowseUrl = 'http://portal.naturem.us/styles/ckfinder/ckfinder.html';
	config.filebrowserImageBrowseUrl = 'http://portal.naturem.us/styles/ckfinder/ckfinder.html?type=Images';
	config.filebrowserFlashBrowseUrl = 'http://portal.naturem.us/styles/ckfinder/ckfinder.html?type=Flash';
	config.filebrowserUploadUrl = 'http://portal.naturem.us/styles/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
	config.filebrowserImageUploadUrl = 'http://portal.naturem.us/styles/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
	config.filebrowserFlashUploadUrl = 'http://portal.naturem.us/styles/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash';
};

/*
 isRTL.coffee
 Copyright (C) 2013 dhilipsiva <dhilipsiva@gmail.com>

 Distributed under terms of the MIT license.
*/

(function(window) {
var reRTL, rtlChars;

rtlChars = [
	/* arabic ranges*/
	'\u0600-\u06FF',
	'\u0750-\u077F',
	'\uFB50-\uFDFF',
	'\uFE70-\uFEFF',
	/* hebrew range*/
	'\u05D0-\u05FF'
].join("");

reRTL = new RegExp("[" + rtlChars + "]", "g");

window.isRTL = function(text) {
	var textCount	= text.replace(/[0-9\s\\\/.,\-+="']/g, '').length; // remove multilengual characters from count
	var rtlCount	= (text.match(reRTL) || []).length; 
	return rtlCount >= (textCount-rtlCount) && textCount > 0;
};

})(window);

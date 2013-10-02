// Generated by CoffeeScript 1.6.3
/*
 isRTL.coffee
 Copyright (C) 2013 dhilipsiva <dhilipsiva@gmail.com>

 Distributed under terms of the MIT license.
*/


/*
 FIXME: I have added support only for arabic charecters.
 Any Pull request for other characters is greatly appreciated.
*/


/*
 Arabic Characters
*/


(function() {
  var reRTL, rtlChars;

  rtlChars = '\u0600-\u06FF';

  rtlChars += '\u0750-\u077F';

  rtlChars += '\uFB50-\uFDFF';

  rtlChars += '\uFE70-\uFEFF';

  reRTL = new RegExp("^[" + rtlChars + "]");

  window.isRTL = function(text) {
    return text.match(reRTL);
  };

}).call(this);

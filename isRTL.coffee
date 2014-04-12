###
 isRTL.coffee
 Copyright (C) 2013 dhilipsiva <dhilipsiva@gmail.com>

 Distributed under terms of the MIT license.
###

###
 FIXME: I have added support only for arabic charecters.
 Any Pull request for other characters is greatly appreciated.

 Discussion:
 http://codereview.stackexchange.com/questions/32131/isrtl-coffee-a-javascript-library-to-determine-if-a-text-is-of-right-to-left-d
###


rtlChars = [
  ###
  Arabic Characters
  ###
  '\u0600-\u06FF' # Arabic - Range
  '\u0750-\u077F' # Arabic Supplement - Range
  '\uFB50-\uFDFF' # Arabic Presentation Forms-A - Range
  '\uFE70-\uFEFF' # Arabic Presentation Forms-B - Range
  ###
  Hebrew Range
  ###
  '\u05D0-\u05FF'
].join("")

reRTL = new RegExp "^[#{rtlChars}]", "gi"

window.isRTL = (text) -> reRTL.test text 

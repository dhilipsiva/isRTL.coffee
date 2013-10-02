###
 isRTL.coffee
 Copyright (C) 2013 dhilipsiva <dhilipsiva@gmail.com>

 Distributed under terms of the MIT license.
###

###
 FIXME: I have added support only for arabic charecters.
 Any Pull request for other characters is greatly appreciated.
###

###
 Arabic Characters
###

rtlChars = '\u0600-\u06FF' # Arabic - Range

rtlChars += '\u0750-\u077F' # Arabic Supplement - Range

rtlChars += '\uFB50-\uFDFF' # Arabic Presentation Forms-A - Range

rtlChars += '\uFE70-\uFEFF' # Arabic Presentation Forms-B - Range

reRTL = new RegExp "^[#{rtlChars}]"

window.isRTL = (value) ->
  if value.match reRTL
    true
  else
    false

// from https://developer.mozilla.org/en-US/docs/Web/JavaScript/Introduction_to_using_XPath_in_JavaScript
function nsResolver() {
var ns = {
    'xhtml' : 'http://www.w3.org/1999/xhtml',
    'mathml': 'http://www.w3.org/1998/Math/MathML',
    'svg'   : 'http://www.w3.org/2000/svg'
  };
  return ns[prefix] || null;
}


library(XML)
doc = htmlParse("scatterplot.html")
xpathSApply(doc, "//body//*", xmlName)
# [1] "div"    "div"    "script" "script"


xpathApply(doc, "//body//*", xmlAttrs)

xpathSApply(doc, "//body//text()", function(x) nchar(xmlValue(x)))






library(RJSONIO)
jj = xpathSApply(doc, "//body//script/text()", function(x) fromJSON(xmlValue(x)))
sapply(jj, names)
[[1]]
[1] "x"       "evals"   "jsHooks"

[[2]]
[1] "viewer"  "browser"

library(XML)

doc2 = htmlParse("../DSI/intro_to_interactive/pizza_linked.html")
getNodeSet(doc2, "//script[@data-for]/@data-for")




xpathSApply(doc2, "//html/body/*", function(x) names(xmlAttrs(x)))
[1] "class"
xpathSApply(doc2, "//html/body/*", xmlName)
[1] "div"
xpathSApply(doc2, "//html/body/div/*", xmlName)
[1] "div"
xpathSApply(doc2, "//html/body/div/div/*", xmlName)
[1] "div" "div"
xpathSApply(doc2, "//html/body/div/div/div/*", xmlName)
[1] "div"    "script" "div"    "script" "div"    "script"
d = xmlRoot(doc2)[["body"]][["div"]][["div"]]
names(d)

xmlAttrs(d[[2]])


library(RJSONIO)
jj = xmlValue((d[[2]][["script"]]))
o = fromJSON(jj)
names(o)


tmp = getNodeSet(doc2, "//body//div[contains(@class, 'html-widget')]")
lapply(tmp, xmlAttrs)

length(getNodeSet(doc2, "//body//script[not(@data-for)]"))

length(getNodeSet(doc2, "//body//script[@data-for]/@data-for"))

lapply(getNodeSet(doc2, "//body//script[@data-for]"), xmlAttrs)
